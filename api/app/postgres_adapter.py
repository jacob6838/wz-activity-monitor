import psycopg2
from psycopg2.extras import execute_values
from pydantic import BaseModel
from typing import List
import json
import models
import wzdx_models
import logging


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
        INSERT INTO public.projects (
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

    def get_projects(self) -> list[models.ProjectWithId]:
        query = "SELECT * FROM public.projects"
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        projects = []
        for row in rows:
            projects.append(
                models.ProjectWithId(
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
            )
        return projects

    def get_project(self, project_id: int) -> models.ProjectWithId:
        query = "SELECT * FROM public.projects WHERE id = %s"
        self.cursor.execute(query, (project_id,))
        row = self.cursor.fetchone()
        if row:
            return models.ProjectWithId(
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

    def remove_project(self, project_id: int) -> None:
        query = "DELETE FROM public.projects WHERE id = %s"
        self.cursor.execute(query, (project_id,))
        self.connection.commit()

    def insert_road_section(self, road_section: models.RoadSection) -> int:
        query = """
        INSERT INTO public.road_sections (
            project_id, segment_name, reference_type, start_mm, end_mm,
            direction, surface_type, start_date, end_date, armed_status, geometry, bbox
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326), %s)
        RETURNING id
        """
        values = (
            road_section.project_id,
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

    def get_road_sections(self) -> list[models.RoadSectionWithId]:
        query = "SELECT * FROM public.road_sections"
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        sections = []
        for row in rows:
            sections.append(
                models.RoadSectionWithId(
                    id=row[0],
                    project_id=row[1],
                    segment_name=row[2],
                    reference_type=models.RoadSectionType(row[3]),
                    start_mm=row[4],
                    end_mm=row[5],
                    direction=models.RoadSegmentDirection(row[6]),
                    surface_type=models.RoadSegmentSurfaceType(row[7]),
                    start_date=row[8],
                    end_date=row[9],
                    armed_status=models.RoadSegmentArmedStatus(row[10]),
                    geometry=[
                        [float(coord) for coord in point.split()]
                        for point in row[11]
                        .replace("LINESTRING(", "")
                        .replace(")", "")
                        .split(",")
                    ],
                    bbox=row[12],
                )
            )
        return sections

    def get_road_section(self, road_section_id: int) -> models.RoadSectionWithId:
        query = "SELECT * FROM public.road_sections WHERE id = %s"
        self.cursor.execute(query, (road_section_id,))
        row = self.cursor.fetchone()
        if row:
            return models.RoadSectionWithId(
                id=row[0],
                project_id=row[1],
                segment_name=row[2],
                reference_type=models.RoadSectionType(row[3]),
                start_mm=row[4],
                end_mm=row[5],
                direction=models.RoadSegmentDirection(row[6]),
                surface_type=models.RoadSegmentSurfaceType(row[7]),
                start_date=row[8],
                end_date=row[9],
                armed_status=models.RoadSegmentArmedStatus(row[10]),
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row[11]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=row[12],
            )
        return None

    def remove_road_section(self, road_section_id: int) -> None:
        query = "DELETE FROM public.road_sections WHERE id = %s"
        self.cursor.execute(query, (road_section_id,))
        self.connection.commit()

    def insert_activity_area(self, activity_area: models.ActivityArea) -> int:
        query = """
        INSERT INTO public.activity_areas (
            segment_id, area_name, description, creation_date, update_date,
            start_date, end_date, start_date_verified, end_date_verified, area_type,
            location_method, vehicle_impact, impacted_cds_curb_zones, lanes,
            beginning_cross_street, ending_cross_street, beginning_milepost, ending_milepost,
            types_of_work, worker_presence, reduced_speed_limit_kph, restrictions, geometry, bbox
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326), %s)
        RETURNING id
        """
        values = (
            activity_area.segment_id,
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
            json.dumps([lane.model_dump() for lane in activity_area.lanes]),
            activity_area.beginning_cross_street,
            activity_area.ending_cross_street,
            activity_area.beginning_milepost,
            activity_area.ending_milepost,
            json.dumps(
                [
                    type_of_work.model_dump()
                    for type_of_work in activity_area.types_of_work
                ]
            ),
            (
                json.dumps(activity_area.worker_presence.model_dump())
                if activity_area.worker_presence
                else None
            ),
            activity_area.reduced_speed_limit_kph,
            json.dumps(
                [restriction.model_dump() for restriction in activity_area.restrictions]
            ),
            "LINESTRING("
            + ", ".join(f"{coord[0]} {coord[1]}" for coord in activity_area.geometry)
            + ")",
            json.dumps(activity_area.bbox) if activity_area.bbox else None,
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_activity_areas(self) -> list[models.ActivityAreaWithId]:
        query = "SELECT * FROM public.activity_areas"
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        areas = []
        for row in rows:
            areas.append(
                models.ActivityAreaWithId(
                    id=row[0],
                    segment_id=row[1],
                    area_name=row[2],
                    description=row[3],
                    creation_date=row[4],
                    update_date=row[5],
                    start_date=row[6],
                    end_date=row[7],
                    start_date_verified=row[8],
                    end_date_verified=row[9],
                    area_type=wzdx_models.WorkZoneType(row[10]),
                    location_method=wzdx_models.LocationMethod(row[11]),
                    vehicle_impact=wzdx_models.VehicleImpact(row[12]),
                    impacted_cds_curb_zones=row[13],
                    lanes=[wzdx_models.Lane(**lane) for lane in row[14]],
                    beginning_cross_street=row[15],
                    ending_cross_street=row[16],
                    beginning_milepost=row[17],
                    ending_milepost=row[18],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row[19]
                    ],
                    worker_presence=(
                        wzdx_models.WorkerPresence(**row[20]) if row[20] else None
                    ),
                    reduced_speed_limit_kph=row[21],
                    restrictions=[
                        wzdx_models.Restriction(**restriction)
                        for restriction in row[22]
                    ],
                    geometry=[
                        [float(coord) for coord in point.split()]
                        for point in row[23]
                        .replace("LINESTRING(", "")
                        .replace(")", "")
                        .split(",")
                    ],
                    bbox=row[24],
                )
            )
        return areas

    def get_activity_area(self, activity_area_id: int) -> models.ActivityAreaWithId:
        query = "SELECT * FROM public.activity_areas WHERE id = %s"
        self.cursor.execute(query, (activity_area_id,))
        row = self.cursor.fetchone()
        if row:
            return models.ActivityAreaWithId(
                id=row[0],
                segment_id=row[1],
                area_name=row[2],
                description=row[3],
                creation_date=row[4],
                update_date=row[5],
                start_date=row[6],
                end_date=row[7],
                start_date_verified=row[8],
                end_date_verified=row[9],
                area_type=wzdx_models.WorkZoneType(row[10]),
                location_method=wzdx_models.LocationMethod(row[11]),
                vehicle_impact=wzdx_models.VehicleImpact(row[12]),
                impacted_cds_curb_zones=row[13],
                lanes=[wzdx_models.Lane(**lane) for lane in row[14]],
                beginning_cross_street=row[15],
                ending_cross_street=row[16],
                beginning_milepost=row[17],
                ending_milepost=row[18],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work) for type_of_work in row[19]
                ],
                worker_presence=(
                    wzdx_models.WorkerPresence(**row[20]) if row[20] else None
                ),
                reduced_speed_limit_kph=row[21],
                restrictions=[
                    wzdx_models.Restriction(**restriction) for restriction in row[22]
                ],
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row[23]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=row[24],
            )
        return None

    def remove_activity_area(self, activity_area_id: int) -> None:
        query = "DELETE FROM public.activity_areas WHERE id = %s"
        self.cursor.execute(query, (activity_area_id,))
        self.connection.commit()

    def insert_report(self, report: models.Report) -> int:
        query = """
        INSERT INTO public.reports (
            project_id, segment_id, area_id, report_name, types_of_work,
            workers_present, start_date, end_date, report_date, area_type,
            mobility_speed_mph, geometry_type, point
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, ST_GeomFromText(%s, 4326))
        RETURNING id
        """
        values = (
            report.project_id,
            report.segment_id,
            report.area_id,
            report.report_name,
            json.dumps(
                [type_of_work.model_dump() for type_of_work in report.types_of_work]
            ),
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

    def get_reports(self) -> list[models.ReportWithId]:
        query = """
        SELECT id, project_id, segment_id, area_id, report_name, types_of_work,
               workers_present, start_date, end_date, report_date, area_type,
               mobility_speed_mph, geometry_type, ST_AsText(point) AS point
        FROM public.reports
        """
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        reports = []
        for row in rows:
            reports.append(
                models.ReportWithId(
                    id=row[0],
                    project_id=row[1],
                    segment_id=row[2],
                    area_id=row[3],
                    report_name=row[4],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row[5]
                    ],
                    workers_present=row[6],
                    start_date=row[7],
                    end_date=row[8],
                    report_date=row[9],
                    area_type=wzdx_models.WorkZoneType(row[10]),
                    mobility_speed_mph=row[11],
                    geometry_type=models.GeometryType(row[12]),
                    point=[
                        float(coord)
                        for coord in row[13]
                        .replace("POINT(", "")
                        .replace(")", "")
                        .split()
                    ],
                )
            )
        return reports

    def get_report(self, report_id: int) -> models.ReportWithId:
        query = """
        SELECT id, project_id, segment_id, area_id, report_name, types_of_work,
               workers_present, start_date, end_date, report_date, area_type,
               mobility_speed_mph, geometry_type, ST_AsText(point) AS point
        FROM public.reports
        WHERE id = %s
        """
        self.cursor.execute(query, (report_id,))
        row = self.cursor.fetchone()
        if row:
            logging.warning(row)
            return models.ReportWithId(
                id=row[0],
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                report_name=row[4],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work) for type_of_work in row[5]
                ],
                workers_present=row[6],
                start_date=row[7],
                end_date=row[8],
                report_date=row[9],
                area_type=wzdx_models.WorkZoneType(row[10]),
                mobility_speed_mph=row[11],
                geometry_type=models.GeometryType(row[12]),
                point=[
                    float(coord)
                    for coord in row[13].replace("POINT(", "").replace(")", "").split()
                ],
            )
        return None

    def remove_report(self, report_id: int) -> None:
        query = "DELETE FROM public.reports WHERE id = %s"
        self.cursor.execute(query, (report_id,))
        self.connection.commit()

    def insert_recording(self, recording: models.Recording) -> int:
        query = """
        INSERT INTO public.recordings (
            project_id, segment_id, area_id, recording_name, types_of_work,
            start_date, end_date, recording_date, area_type, mobility_speed_mph, points
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        RETURNING id
        """
        values = (
            recording.project_id,
            recording.segment_id,
            recording.area_id,
            recording.recording_name,
            json.dumps(
                [type_of_work.model_dump() for type_of_work in recording.types_of_work]
            ),
            recording.start_date,
            recording.end_date,
            recording.recording_date,
            recording.area_type.value,
            recording.mobility_speed_mph,
            json.dumps([point.model_dump() for point in recording.points]),
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_recordings(self) -> list[models.RecordingWithId]:
        query = "SELECT * FROM public.recordings"
        self.cursor.execute(query)
        rows = self.cursor.fetchall()
        recordings = []
        for row in rows:
            recordings.append(
                models.RecordingWithId(
                    id=row[0],
                    project_id=row[1],
                    segment_id=row[2],
                    area_id=row[3],
                    recording_name=row[4],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row[5]
                    ],
                    start_date=row[6],
                    end_date=row[7],
                    recording_date=row[8],
                    area_type=wzdx_models.WorkZoneType(row[9]),
                    mobility_speed_mph=row[10],
                    points=[models.RecordingPoint(**point) for point in row[11]],
                )
            )
        return recordings

    def get_recording(self, recording_id: int) -> models.RecordingWithId:
        query = "SELECT * FROM public.recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        row = self.cursor.fetchone()
        if row:
            return models.RecordingWithId(
                id=row[0],
                project_id=row[1],
                segment_id=row[2],
                area_id=row[3],
                recording_name=row[4],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work) for type_of_work in row[5]
                ],
                start_date=row[6],
                end_date=row[7],
                recording_date=row[8],
                area_type=wzdx_models.WorkZoneType(row[9]),
                mobility_speed_mph=row[10],
                points=[models.RecordingPoint(**point) for point in row[11]],
            )
        return None

    def remove_recording(self, recording_id: int) -> None:
        query = "DELETE FROM public.recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        self.connection.commit()
