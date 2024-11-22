import psycopg2
from psycopg2.extras import execute_values
from pydantic import BaseModel
from typing import List
import json
import pickle

import models
import wzdx_models


class DatabaseAdapter:
    def __init__(self, dbname, user, password, host, port):
        self.connection = psycopg2.connect(
            dbname=dbname, user=user, password=password, host=host, port=port
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
            project.id,
            project.name,
            project.description,
            project.tmc_notes,
            project.active_status,
            project.hyperlink,
            project.start_date,
            project.end_date,
            project.districts,
            project.wydot_contact,
            project.project_update_contact,
            project.traffic_control_contact,
            project.emergency_contact,
            project.contractor,
            project.selected_towns,
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
            lane.lane_order,
            lane.type,
            lane.status,
            [r.dict() for r in lane.restrictions],
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
        values = (restriction.type, restriction.value, restriction.unit)
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
        values = (type_of_work.type_name, type_of_work.is_architectural_change)
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
            worker_presence.are_workers_present,
            worker_presence.definition,
            worker_presence.method,
            worker_presence.worker_presence_last_confirmed_date,
            worker_presence.confidence,
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
            worker_presence_id = self.insert_worker_presence(
                activity_area.worker_presence
            )

            # Insert activity area
            query = """
            INSERT INTO activity_area (
                segment_id, area_id, area_name, description, creation_date, update_date,
                start_date, end_date, start_date_verified, end_date_verified, area_type,
                location_method, vehicle_impact, impacted_cds_curb_zones, lanes,
                beginning_cross_street, ending_cross_street, beginning_milepost, ending_milepost,
                types_of_work, worker_presence, reduced_speed_limit_kph, restrictions, geometry, bbox
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            RETURNING id
            """
            values = (
                activity_area.segment_id,
                activity_area.area_id,
                activity_area.area_name,
                activity_area.description,
                activity_area.creation_date,
                activity_area.update_date,
                activity_area.start_date,
                activity_area.end_date,
                activity_area.start_date_verified,
                activity_area.end_date_verified,
                activity_area.area_type,
                activity_area.location_method,
                activity_area.vehicle_impact,
                activity_area.impacted_cds_curb_zones,
                lane_ids,
                activity_area.beginning_cross_street,
                activity_area.ending_cross_street,
                activity_area.beginning_milepost,
                activity_area.ending_milepost,
                types_of_work_ids,
                worker_presence_id,
                activity_area.reduced_speed_limit_kph,
                restriction_ids,
                activity_area.geometry,
                activity_area.bbox,
            )
            self.cursor.execute(query, values)
            self.connection.commit()
            return self.cursor.fetchone()[0]
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e

    def insert_report(self, report: models.Report) -> int:
        try:
            query = """
            INSERT INTO report (
                project_id, segment_id, area_id, report_id, report_name, types_of_work,
                workers_present, start_date, end_date, report_date, area_type,
                mobility_speed_mph, geometry_type, coordinates
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            RETURNING id
            """
            values = (
                report.project_id,
                report.segment_id,
                report.area_id,
                report.report_id,
                report.report_name,
                [
                    type_of_work.id for type_of_work in report.types_of_work
                ],  # Assuming TypeOfWork has an id attribute
                report.workers_present,
                report.start_date,
                report.end_date,
                report.report_date,
                report.area_type.value,
                report.mobility_speed_mph,
                report.geometry_type.value,
                (
                    json.dumps(report.coordinates) if report.coordinates else None
                ),  # Storing coordinates as JSON
            )
            self.cursor.execute(query, values)
            self.connection.commit()
            return self.cursor.fetchone()[0]
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e

    def get_report(self, report_id: int) -> models.Report:
        query = "SELECT * FROM report WHERE report_id = %s"
        self.cursor.execute(query, (report_id,))
        row = self.cursor.fetchone()
        if row:
            return models.Report(
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                report_id=row[4],
                report_name=row[5],
                types_of_work=row[
                    6
                ],  # Assuming you will handle conversion from IDs to TypeOfWork objects
                workers_present=row[7],
                start_date=row[8],
                end_date=row[9],
                report_date=row[10],
                area_type=row[11],
                mobility_speed_mph=row[12],
                geometry_type=row[13],
                coordinates=json.loads(row[14]) if row[14] else None,
            )
        return None

    def insert_recording(self, recording: models.Recording) -> int:
        try:
            query = """
            INSERT INTO recording (
                project_id, segment_id, area_id, recording_id, recording_name, types_of_work,
                start_date, end_date, recording_date, area_type, mobility_speed_mph, points
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            RETURNING id
            """
            values = (
                recording.project_id,
                recording.segment_id,
                recording.area_id,
                recording.recording_id,
                recording.recording_name,
                [
                    type_of_work.id for type_of_work in recording.types_of_work
                ],  # Assuming TypeOfWork has an id attribute
                recording.start_date,
                recording.end_date,
                recording.recording_date,
                recording.area_type.value,
                recording.mobility_speed_mph,
                json.dumps(
                    [point.model_dump() for point in recording.points]
                ),  # Storing points as JSON blob
            )
            self.cursor.execute(query, values)
            self.connection.commit()
            return self.cursor.fetchone()[0]
        except psycopg2.IntegrityError as e:
            self.connection.rollback()
            raise e

    def get_recording(self, recording_id: int) -> models.Recording:
        query = "SELECT * FROM recording WHERE recording_id = %s"
        self.cursor.execute(query, (recording_id,))
        row = self.cursor.fetchone()
        if row:
            return models.Recording(
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                recording_id=row[4],
                recording_name=row[5],
                types_of_work=row[
                    6
                ],  # Assuming you will handle conversion from IDs to TypeOfWork objects
                start_date=row[7],
                end_date=row[8],
                recording_date=row[9],
                area_type=row[10],
                mobility_speed_mph=row[11],
                points=[
                    models.RecordingPoint(**point) for point in json.loads(row[12])
                ],  # Loading points from JSON blob
            )
        return None
