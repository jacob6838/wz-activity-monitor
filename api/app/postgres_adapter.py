import psycopg2
from psycopg2.extras import execute_values
from pydantic import BaseModel
from typing import List
import json
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

    def insert_project(self, project: models.Project) -> int:
        query = """
        INSERT INTO project (
            name, description, tmc_notes, active_status, hyperlink, start_date, end_date,
            districts, wydot_contact, project_update_contact, traffic_control_contact,
            emergency_contact, contractor, selected_towns
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        RETURNING id
        """
        values = (
            project.name,
            project.description,
            project.tmc_notes,
            project.active_status.value,
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

    def get_project(self, project_id: int) -> models.Project:
        query = "SELECT * FROM project WHERE id = %s"
        self.cursor.execute(query, (project_id,))
        row = self.cursor.fetchone()
        if row:
            return models.Project(
                id=row[0],
                name=row[1],
                description=row[2],
                tmc_notes=row[3],
                active_status=models.ProjectStatus(row[4]),
                hyperlink=row[5],
                start_date=row[6],
                end_date=row[7],
                districts=row[8],
                wydot_contact=row[9],
                project_update_contact=row[10],
                traffic_control_contact=row[11],
                emergency_contact=row[12],
                contractor=row[13],
                selected_towns=row[14],
            )
        return None

    def insert_road_section(self, road_section: models.RoadSection) -> int:
        query = """
        INSERT INTO road_section (
            project_id, segment_id, segment_name, reference_type, start_mm, end_mm,
            direction, surface_type, start_date, end_date, armed_status, geometry, bbox
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326), %s)
        RETURNING id
        """
        values = (
            road_section.project_id,
            road_section.segment_id,
            road_section.segment_name,
            road_section.reference_type.value,
            road_section.start_mm,
            road_section.end_mm,
            road_section.direction.value,
            road_section.surface_type.value,
            road_section.start_date,
            road_section.end_date,
            road_section.armed_status.value,
            "LINESTRING("
            + ", ".join(f"{coord[0]} {coord[1]}" for coord in road_section.geometry)
            + ")",
            json.dumps(road_section.bbox) if road_section.bbox else None,
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_road_section(self, road_section_id: int) -> models.RoadSection:
        query = "SELECT * FROM road_section WHERE id = %s"
        self.cursor.execute(query, (road_section_id,))
        row = self.cursor.fetchone()
        if row:
            return models.RoadSection(
                id=row[0],
                project_id=row[1],
                segment_id=row[2],
                segment_name=row[3],
                reference_type=models.RoadSectionType(row[4]),
                start_mm=row[5],
                end_mm=row[6],
                direction=models.RoadSegmentDirection(row[7]),
                surface_type=models.RoadSegmentSurfaceType(row[8]),
                start_date=row[9],
                end_date=row[10],
                armed_status=models.RoadSegmentArmedStatus(row[11]),
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row[12]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=json.loads(row[13]) if row[13] else None,
            )
        return None

    def insert_activity_area(self, activity_area: models.ActivityArea) -> int:
        query = """
        INSERT INTO activity_area (
            segment_id, area_id, area_name, description, creation_date, update_date,
            start_date, end_date, start_date_verified, end_date_verified, area_type,
            location_method, vehicle_impact, impacted_cds_curb_zones, lanes,
            beginning_cross_street, ending_cross_street, beginning_milepost, ending_milepost,
            types_of_work, worker_presence, reduced_speed_limit_kph, restrictions, geometry, bbox
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326), %s)
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
            activity_area.area_type.value,
            activity_area.location_method.value,
            activity_area.vehicle_impact.value,
            json.dumps(activity_area.impacted_cds_curb_zones),
            json.dumps([lane.dict() for lane in activity_area.lanes]),
            activity_area.beginning_cross_street,
            activity_area.ending_cross_street,
            activity_area.beginning_milepost,
            activity_area.ending_milepost,
            json.dumps(
                [type_of_work.dict() for type_of_work in activity_area.types_of_work]
            ),
            (
                json.dumps(activity_area.worker_presence.dict())
                if activity_area.worker_presence
                else None
            ),
            activity_area.reduced_speed_limit_kph,
            json.dumps(
                [restriction.dict() for restriction in activity_area.restrictions]
            ),
            "LINESTRING("
            + ", ".join(f"{coord[0]} {coord[1]}" for coord in activity_area.geometry)
            + ")",
            json.dumps(activity_area.bbox) if activity_area.bbox else None,
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_activity_area(self, activity_area_id: int) -> models.ActivityArea:
        query = "SELECT * FROM activity_area WHERE id = %s"
        self.cursor.execute(query, (activity_area_id,))
        row = self.cursor.fetchone()
        if row:
            return models.ActivityArea(
                id=row[0],
                segment_id=row[1],
                area_id=row[2],
                area_name=row[3],
                description=row[4],
                creation_date=row[5],
                update_date=row[6],
                start_date=row[7],
                end_date=row[8],
                start_date_verified=row[9],
                end_date_verified=row[10],
                area_type=wzdx_models.WorkZoneType(row[11]),
                location_method=wzdx_models.LocationMethod(row[12]),
                vehicle_impact=wzdx_models.VehicleImpact(row[13]),
                impacted_cds_curb_zones=json.loads(row[14]),
                lanes=[wzdx_models.Lane(**lane) for lane in json.loads(row[15])],
                beginning_cross_street=row[16],
                ending_cross_street=row[17],
                beginning_milepost=row[18],
                ending_milepost=row[19],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in json.loads(row[20])
                ],
                worker_presence=(
                    wzdx_models.WorkerPresence(**json.loads(row[21]))
                    if row[21]
                    else None
                ),
                reduced_speed_limit_kph=row[22],
                restrictions=[
                    wzdx_models.Restriction(**restriction)
                    for restriction in json.loads(row[23])
                ],
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row[24]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=json.loads(row[25]) if row[25] else None,
            )
        return None

    def insert_report(self, report: models.Report) -> int:
        query = """
        INSERT INTO report (
            project_id, segment_id, area_id, report_id, report_name, types_of_work,
            workers_present, start_date, end_date, report_date, area_type,
            mobility_speed_mph, geometry_type, point
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326))
        RETURNING id
        """
        values = (
            report.project_id,
            report.segment_id,
            report.area_id,
            report.report_id,
            report.report_name,
            json.dumps([type_of_work.dict() for type_of_work in report.types_of_work]),
            report.workers_present,
            report.start_date,
            report.end_date,
            report.report_date,
            report.area_type.value,
            report.mobility_speed_mph,
            report.geometry_type.value,
            f"POINT({report.point[0]} {report.point[1]})",
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_report(self, report_id: int) -> models.Report:
        query = "SELECT * FROM report WHERE id = %s"
        self.cursor.execute(query, (report_id,))
        row = self.cursor.fetchone()
        if row:
            return models.Report(
                id=row[0],
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                report_id=row[4],
                report_name=row[5],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in json.loads(row[6])
                ],
                workers_present=row[7],
                start_date=row[8],
                end_date=row[9],
                report_date=row[10],
                area_type=wzdx_models.WorkZoneType(row[11]),
                mobility_speed_mph=row[12],
                geometry_type=models.GeometryType(row[13]),
                point=[
                    float(coord)
                    for coord in row[14].replace("POINT(", "").replace(")", "").split()
                ],
            )
        return None

    def insert_recording(self, recording: models.Recording) -> int:
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
            json.dumps(
                [type_of_work.dict() for type_of_work in recording.types_of_work]
            ),
            recording.start_date,
            recording.end_date,
            recording.recording_date,
            recording.area_type.value,
            recording.mobility_speed_mph,
            json.dumps([point.dict() for point in recording.points]),
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_recording(self, recording_id: int) -> models.Recording:
        query = "SELECT * FROM recording WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        row = self.cursor.fetchone()
        if row:
            return models.Recording(
                id=row[0],
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                recording_id=row[4],
                recording_name=row[5],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in json.loads(row[6])
                ],
                start_date=row[7],
                end_date=row[8],
                recording_date=row[9],
                area_type=wzdx_models.WorkZoneType(row[10]),
                mobility_speed_mph=row[11],
                points=[
                    models.RecordingPoint(**point) for point in json.loads(row[12])
                ],
            )
        return None
