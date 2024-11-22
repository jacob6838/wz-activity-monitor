import psycopg2
from psycopg2.extras import execute_values
from pydantic import BaseModel
from typing import List

import models
import wzdx_models

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

    def insert_project(self, project: models.Project):
        query = """
        INSERT INTO project (
            id, name, description, tmc_notes, active_status, hyperlink, start_date, end_date,
            districts, wydot_contact, project_update_contact, traffic_control_contact,
            emergency_contact, contractor, selected_towns
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        RETURNING id
        """
        values = (
            project.id, project.name, project.description, project.tmc_notes, project.active_status,
            project.hyperlink, project.start_date, project.end_date, project.districts,
            project.wydot_contact, project.project_update_contact, project.traffic_control_contact,
            project.emergency_contact, project.contractor, project.selected_towns
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def insert_lane(self, lane: wzdx_models.Lane):
        query = """
        INSERT INTO lane (
            lane_order, type, status, restrictions
        ) VALUES (%s, %s, %s, %s)
        RETURNING id
        """
        values = (
            lane.lane_order, lane.type, lane.status, [r.dict() for r in lane.restrictions]
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def insert_restriction(self, restriction: wzdx_models.Restriction):
        query = """
        INSERT INTO restriction (
            type, value, unit
        ) VALUES (%s, %s, %s)
        RETURNING id
        """
        values = (
            restriction.type, restriction.value, restriction.unit
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def insert_type_of_work(self, type_of_work: wzdx_models.TypeOfWork):
        query = """
        INSERT INTO type_of_work (
            type_name, is_architectural_change
        ) VALUES (%s, %s)
        RETURNING id
        """
        values = (
            type_of_work.type_name, type_of_work.is_architectural_change
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def insert_worker_presence(self, worker_presence: wzdx_models.WorkerPresence):
        query = """
        INSERT INTO worker_presence (
            are_workers_present, definition, method, worker_presence_last_confirmed_date, confidence
        ) VALUES (%s, %s, %s, %s, %s)
        RETURNING id
        """
        values = (
            worker_presence.are_workers_present, worker_presence.definition, worker_presence.method,
            worker_presence.worker_presence_last_confirmed_date, worker_presence.confidence
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def insert_activity_area(self, activity_area: models.ActivityArea):
        try:
            # Insert lanes first
            lane_ids = []
            for lane in activity_area.lanes:
                lane_id = self.insert_lane(lane)
                lane_ids.append(lane_id)

            # Insert restrictions
            restriction_ids = []
            for restriction in activity_area.restrictions:
                restriction_id = self.insert_restriction(restriction)
                restriction_ids.append(restriction_id)

            # Insert types of work
            types_of_work_ids = []
            for type_of_work in activity_area.types_of_work:
                type_of_work_id = self.insert_type_of_work(type_of_work)
                types_of_work_ids.append(type_of_work_id)

            # Insert worker presence
            worker_presence_id = self.insert_worker_presence(activity_area.worker_resence)

            # Insert activity area
            query = """
            INSERT INTO activity_area (
                segment_id, area_id, area_name, description, creation_date, update_date,
                start_date, end_date, start_date_verified, end_date_verified, area_type,
                location_method, vehicle_impact, impacted_cds_curb_zones, lanes,
                beginning_cross_street, ending_cross_street, beginning_milepost, ending_milepost,
                types_of_work, worker_resence, reduced_speed_limit_kph, restrictions, geometry, bbox
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            RETURNING id
            """
            values = (
                activity_area.segment_id, activity_area.area_id, activity_area.area_name, activity_area.description,
                activity_area.creation_date, activity_area.update_date, activity_area.start_date, activity_area.end_date,
                activity_area.start_date_verified, activity_area.end_date_verified, activity_area.area_type,
                activity_area.location_method, activity_area.vehicle_impact, activity_area.impacted_cds_curb_zones,
                lane_ids, activity_area.beginning_cross_street, activity_area.ending_cross_street,
                activity_area.beginning_milepost, activity_area.ending_milepost, types_of_work_ids,
                worker_presence_id, activity_area.reduced_speed_limit_kph, restriction_ids,
                activity_area.geometry, activity_area.bbox
            )
            self.cursor.execute(query, values)
            self.connection.commit()
            return self.cursor.fetchone()[0]
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e