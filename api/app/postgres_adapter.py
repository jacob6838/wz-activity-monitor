import psycopg2
from psycopg2.extras import execute_batch
from pydantic import BaseModel
from typing import List, Type, TypeVar

import models
import wzdx_models

T = TypeVar('T', bound=BaseModel)

class DatabaseAdapter:
    def __init__(self, dbname, user, password, host, port):
        self.connection = psycopg2.connect(
            dbname=dbname,
            user=user,
            password=password,
            host=host,
            port=port
        )
        self.cursor = self.connection.cursor()

    def close(self):
        self.cursor.close()
        self.connection.close()

    def insert(self, table: str, data: List[T]):
        if not data:
            return
        keys = data[0].dict().keys()
        columns = ', '.join(keys)
        values_template = ', '.join(['%s'] * len(keys))
        query = f"INSERT INTO {table} ({columns}) VALUES ({values_template}) RETURNING id"
        try:
            execute_batch(self.cursor, query, [tuple(d.dict().values()) for d in data])
            self.connection.commit()
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e

    def fetch_all(self, table: str, model: Type[T]) -> List[T]:
        query = f"SELECT * FROM {table}"
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        return [model(**dict(zip([desc[0] for desc in self.cursor.description], row))) for row in rows]

    def fetch_by_id(self, table: str, record_id: int, model: Type[T]) -> T:
        query = f"SELECT * FROM {table} WHERE id = %s"
        self.cursor.execute(query, (record_id,))
        row = self.cursor.fetchone()
        if row:
            return model(**dict(zip([desc[0] for desc in self.cursor.description], row)))
        return None

    def update(self, table: str, record_id: int, data: T):
        set_clause = ', '.join([f"{key} = %s" for key in data.dict().keys()])
        query = f"UPDATE {table} SET {set_clause} WHERE id = %s"
        self.cursor.execute(query, (*data.dict().values(), record_id))
        self.connection.commit()

    def delete(self, table: str, record_id: int):
        query = f"DELETE FROM {table} WHERE id = %s"
        self.cursor.execute(query, (record_id,))
        self.connection.commit()

    def insert_activity_area(self, activity_area: models.ActivityArea):
        try:
            # Insert lanes first
            lane_ids = []
            for lane in activity_area.lanes:
                self.insert("lane", [lane])
                lane_id = self.cursor.fetchone()[0]
                lane_ids.append(lane_id)

            # Insert restrictions
            restriction_ids = []
            for restriction in activity_area.restrictions:
                self.insert("restriction", [restriction])
                restriction_id = self.cursor.fetchone()[0]
                restriction_ids.append(restriction_id)

            # Insert types of work
            types_of_work_ids = []
            for type_of_work in activity_area.types_of_work:
                self.insert("type_of_work", [type_of_work])
                type_of_work_id = self.cursor.fetchone()[0]
                types_of_work_ids.append(type_of_work_id)

            # Insert worker presence
            self.insert("worker_presence", [activity_area.worker_resence])
            worker_presence_id = self.cursor.fetchone()[0]

            # Fetch full objects for lanes, restrictions, types_of_work, and worker_presence
            lanes = [self.fetch_by_id("lane", lane_id, wzdx_models.Lane) for lane_id in lane_ids]
            restrictions = [self.fetch_by_id("restriction", restriction_id, wzdx_models.Restriction) for restriction_id in restriction_ids]
            types_of_work = [self.fetch_by_id("type_of_work", type_of_work_id, wzdx_models.TypeOfWork) for type_of_work_id in types_of_work_ids]
            worker_resence = self.fetch_by_id("worker_presence", worker_presence_id, wzdx_models.WorkerPresence)

            # Insert activity area
            activity_area_data = activity_area.dict()
            activity_area_data['lanes'] = [lane.dict() for lane in lanes]
            activity_area_data['restrictions'] = [restriction.dict() for restriction in restrictions]
            activity_area_data['types_of_work'] = [type_of_work.dict() for type_of_work in types_of_work]
            activity_area_data['worker_resence'] = worker_resence.dict()
            self.insert("activity_area", [models.ActivityArea(**activity_area_data)])
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e