import psycopg2
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
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        projects = []
        for row in rows:
            projects.append(
                models.ProjectWithId(
                    id=row["id"],
                    name=row["name"],
                    description=row["description"],
                    tmc_notes=row["tmc_notes"],
                    active_status=models.ProjectStatus(row["active_status"]),
                    hyperlink=row["hyperlink"],
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    districts=row["districts"],
                    wydot_contact=row["wydot_contact"],
                    project_update_contact=row["project_update_contact"],
                    traffic_control_contact=row["traffic_control_contact"],
                    emergency_contact=row["emergency_contact"],
                    contractor=row["contractor"],
                    selected_towns=row["selected_towns"],
                )
            )
        return projects

    def get_project(self, project_id: int) -> models.ProjectWithId:
        query = "SELECT * FROM public.projects WHERE id = %s"
        self.cursor.execute(query, (project_id,))
        columns = [desc[0] for desc in self.cursor.description]
        row = (
            dict(zip(columns, self.cursor.fetchone()))
            if self.cursor.fetchone()
            else None
        )
        if row:
            return models.ProjectWithId(
                id=row["id"],
                name=row["name"],
                description=row["description"],
                tmc_notes=row["tmc_notes"],
                active_status=models.ProjectStatus(row["active_status"]),
                hyperlink=row["hyperlink"],
                start_date=row["start_date"],
                end_date=row["end_date"],
                districts=row["districts"],
                wydot_contact=row["wydot_contact"],
                project_update_contact=row["project_update_contact"],
                traffic_control_contact=row["traffic_control_contact"],
                emergency_contact=row["emergency_contact"],
                contractor=row["contractor"],
                selected_towns=row["selected_towns"],
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
        query = (
            "SELECT *, ST_AsText(geometry) as geometry_text FROM public.road_sections"
        )
        self.cursor.execute(query)
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        sections = []
        for row in rows:
            sections.append(
                models.RoadSectionWithId(
                    id=row["id"],
                    project_id=row["project_id"],
                    segment_name=row["segment_name"],
                    reference_type=models.RoadSectionType(row["reference_type"]),
                    start_mm=row["start_mm"],
                    end_mm=row["end_mm"],
                    direction=models.RoadSegmentDirection(row["direction"]),
                    surface_type=models.RoadSegmentSurfaceType(row["surface_type"]),
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    armed_status=models.RoadSegmentArmedStatus(row["armed_status"]),
                    geometry=[
                        [float(coord) for coord in point.split()]
                        for point in row["geometry_text"]
                        .replace("LINESTRING(", "")
                        .replace(")", "")
                        .split(",")
                    ],
                    bbox=row["bbox"],
                )
            )
        return sections

    def get_road_section(self, road_section_id: int) -> models.RoadSectionWithId:
        query = "SELECT *, ST_AsText(geometry) as geometry_text FROM public.road_sections WHERE id = %s"
        self.cursor.execute(query, (road_section_id,))
        columns = [desc[0] for desc in self.cursor.description]
        row = (
            dict(zip(columns, self.cursor.fetchone()))
            if self.cursor.fetchone()
            else None
        )
        if row:
            return models.RoadSectionWithId(
                id=row["id"],
                project_id=row["project_id"],
                segment_name=row["segment_name"],
                reference_type=models.RoadSectionType(row["reference_type"]),
                start_mm=row["start_mm"],
                end_mm=row["end_mm"],
                direction=models.RoadSegmentDirection(row["direction"]),
                surface_type=models.RoadSegmentSurfaceType(row["surface_type"]),
                start_date=row["start_date"],
                end_date=row["end_date"],
                armed_status=models.RoadSegmentArmedStatus(row["armed_status"]),
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row["geometry_text"]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=row["bbox"],
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
        query = (
            "SELECT *, ST_AsText(geometry) as geometry_text FROM public.activity_areas"
        )
        self.cursor.execute(query)
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        areas = []
        for row in rows:
            areas.append(
                models.ActivityAreaWithId(
                    id=row["id"],
                    segment_id=row["segment_id"],
                    area_name=row["area_name"],
                    description=row["description"],
                    creation_date=row["creation_date"],
                    update_date=row["update_date"],
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    start_date_verified=row["start_date_verified"],
                    end_date_verified=row["end_date_verified"],
                    area_type=wzdx_models.WorkZoneType(row["area_type"]),
                    location_method=wzdx_models.LocationMethod(row["location_method"]),
                    vehicle_impact=wzdx_models.VehicleImpact(row["vehicle_impact"]),
                    impacted_cds_curb_zones=row["impacted_cds_curb_zones"],
                    lanes=[wzdx_models.Lane(**lane) for lane in row["lanes"]],
                    beginning_cross_street=row["beginning_cross_street"],
                    ending_cross_street=row["ending_cross_street"],
                    beginning_milepost=row["beginning_milepost"],
                    ending_milepost=row["ending_milepost"],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row["types_of_work"]
                    ],
                    worker_presence=(
                        wzdx_models.WorkerPresence(**row["worker_presence"])
                        if row["worker_presence"]
                        else None
                    ),
                    reduced_speed_limit_kph=row["reduced_speed_limit_kph"],
                    restrictions=[
                        wzdx_models.Restriction(**restriction)
                        for restriction in row["restrictions"]
                    ],
                    geometry=[
                        [float(coord) for coord in point.split()]
                        for point in row["geometry_text"]
                        .replace("LINESTRING(", "")
                        .replace(")", "")
                        .split(",")
                    ],
                    bbox=row["bbox"],
                )
            )
        return areas

    def get_activity_area(self, activity_area_id: int) -> models.ActivityAreaWithId:
        query = "SELECT *, ST_AsText(geometry) as geometry_text FROM public.activity_areas WHERE id = %s"
        self.cursor.execute(query, (activity_area_id,))
        columns = [desc[0] for desc in self.cursor.description]
        row = (
            dict(zip(columns, self.cursor.fetchone()))
            if self.cursor.fetchone()
            else None
        )
        if row:
            return models.ActivityAreaWithId(
                id=row["id"],
                segment_id=row["segment_id"],
                area_name=row["area_name"],
                description=row["description"],
                creation_date=row["creation_date"],
                update_date=row["update_date"],
                start_date=row["start_date"],
                end_date=row["end_date"],
                start_date_verified=row["start_date_verified"],
                end_date_verified=row["end_date_verified"],
                area_type=wzdx_models.WorkZoneType(row["area_type"]),
                location_method=wzdx_models.LocationMethod(row["location_method"]),
                vehicle_impact=wzdx_models.VehicleImpact(row["vehicle_impact"]),
                impacted_cds_curb_zones=row["impacted_cds_curb_zones"],
                lanes=[wzdx_models.Lane(**lane) for lane in row["lanes"]],
                beginning_cross_street=row["beginning_cross_street"],
                ending_cross_street=row["ending_cross_street"],
                beginning_milepost=row["beginning_milepost"],
                ending_milepost=row["ending_milepost"],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in row["types_of_work"]
                ],
                worker_presence=(
                    wzdx_models.WorkerPresence(**row["worker_presence"])
                    if row["worker_presence"]
                    else None
                ),
                reduced_speed_limit_kph=row["reduced_speed_limit_kph"],
                restrictions=[
                    wzdx_models.Restriction(**restriction)
                    for restriction in row["restrictions"]
                ],
                geometry=[
                    [float(coord) for coord in point.split()]
                    for point in row["geometry_text"]
                    .replace("LINESTRING(", "")
                    .replace(")", "")
                    .split(",")
                ],
                bbox=row["bbox"],
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
        # Set cursor to return results as dictionaries
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        reports = []
        for row in rows:
            reports.append(
                models.ReportWithId(
                    id=row["id"],
                    project_id=row["project_id"],
                    segment_id=row["segment_id"],
                    area_id=row["area_id"],
                    report_name=row["report_name"],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row["types_of_work"]
                    ],
                    workers_present=row["workers_present"],
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    report_date=row["report_date"],
                    area_type=wzdx_models.WorkZoneType(row["area_type"]),
                    mobility_speed_mph=row["mobility_speed_mph"],
                    geometry_type=models.GeometryType(row["geometry_type"]),
                    point=[
                        float(coord)
                        for coord in row["point"]
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
        columns = [desc[0] for desc in self.cursor.description]
        row = (
            dict(zip(columns, self.cursor.fetchone()))
            if self.cursor.fetchone()
            else None
        )
        if row:
            return models.ReportWithId(
                id=row["id"],
                project_id=row["project_id"],
                segment_id=row["segment_id"],
                area_id=row["area_id"],
                report_name=row["report_name"],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in row["types_of_work"]
                ],
                workers_present=row["workers_present"],
                start_date=row["start_date"],
                end_date=row["end_date"],
                report_date=row["report_date"],
                area_type=wzdx_models.WorkZoneType(row["area_type"]),
                mobility_speed_mph=row["mobility_speed_mph"],
                geometry_type=models.GeometryType(row["geometry_type"]),
                point=[
                    float(coord)
                    for coord in row["point"]
                    .replace("POINT(", "")
                    .replace(")", "")
                    .split()
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
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        recordings = []
        for row in rows:
            recordings.append(
                models.RecordingWithId(
                    id=row["id"],
                    project_id=row["project_id"],
                    segment_id=row["segment_id"],
                    area_id=row["area_id"],
                    recording_name=row["recording_name"],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row["types_of_work"]
                    ],
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    recording_date=row["recording_date"],
                    area_type=wzdx_models.WorkZoneType(row["area_type"]),
                    mobility_speed_mph=row["mobility_speed_mph"],
                    points=[models.RecordingPoint(**point) for point in row["points"]],
                )
            )
        return recordings

    def get_recording(self, recording_id: int) -> models.RecordingWithId:
        """Get a specific recording from the database."""
        query = "SELECT * FROM public.recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))

        # Get the result only once
        result = self.cursor.fetchone()
        if not result:
            return None

        columns = [desc[0] for desc in self.cursor.description]
        row = dict(zip(columns, result))

        return models.RecordingWithId(
            id=row["id"],
            project_id=row["project_id"],
            segment_id=row["segment_id"],
            area_id=row["area_id"],
            recording_name=row["recording_name"],
            types_of_work=[
                wzdx_models.TypeOfWork(**type_of_work)
                for type_of_work in row["types_of_work"]
            ],
            start_date=row["start_date"],
            end_date=row["end_date"],
            recording_date=row["recording_date"],
            area_type=wzdx_models.WorkZoneType(row["area_type"]),
            mobility_speed_mph=row["mobility_speed_mph"],
            points=[models.RecordingPoint(**point) for point in row["points"]],
        )

    def remove_recording(self, recording_id: int) -> None:
        query = "DELETE FROM public.recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        self.connection.commit()

    def insert_wzdx_recording(self, wzdx_recording: models.WzdxRecording) -> int:
        """Insert a WZDx recording into the database."""
        query = """
        INSERT INTO public.wzdx_recordings (
            project_id, segment_id, area_id, features, types_of_work,
            start_date, end_date, creation_date, area_type
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
        RETURNING id
        """
        values = (
            wzdx_recording.project_id,
            wzdx_recording.segment_id,
            wzdx_recording.area_id,
            json.dumps(wzdx_recording.features),
            json.dumps(
                [
                    type_of_work.model_dump()
                    for type_of_work in wzdx_recording.types_of_work
                ]
            ),
            wzdx_recording.start_date,
            wzdx_recording.end_date,
            wzdx_recording.creation_date,
            wzdx_recording.area_type.value,
        )
        self.cursor.execute(query, values)
        self.connection.commit()
        return self.cursor.fetchone()[0]

    def get_wzdx_recordings(self) -> list[models.WzdxRecordingWithId]:
        """Get all WZDx recordings from the database."""
        query = "SELECT * FROM public.wzdx_recordings"
        self.cursor.execute(query)
        columns = [desc[0] for desc in self.cursor.description]
        rows = [dict(zip(columns, row)) for row in self.cursor.fetchall()]
        recordings = []
        for row in rows:
            recordings.append(
                models.WzdxRecordingWithId(
                    id=row["id"],
                    project_id=row["project_id"],
                    segment_id=row["segment_id"],
                    area_id=row["area_id"],
                    features=row["features"],
                    types_of_work=[
                        wzdx_models.TypeOfWork(**type_of_work)
                        for type_of_work in row["types_of_work"]
                    ],
                    start_date=row["start_date"],
                    end_date=row["end_date"],
                    creation_date=row["creation_date"],
                    area_type=wzdx_models.WorkZoneType(row["area_type"]),
                )
            )
        return recordings

    def get_wzdx_recording(
        self, recording_id: int
    ) -> models.WzdxRecordingWithId | None:
        """Get a specific WZDx recording from the database."""
        query = "SELECT * FROM public.wzdx_recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        columns = [desc[0] for desc in self.cursor.description]
        row = (
            dict(zip(columns, self.cursor.fetchone()))
            if self.cursor.fetchone()
            else None
        )

        if row:
            return models.WzdxRecordingWithId(
                id=row["id"],
                project_id=row["project_id"],
                segment_id=row["segment_id"],
                area_id=row["area_id"],
                features=row["features"],
                types_of_work=[
                    wzdx_models.TypeOfWork(**type_of_work)
                    for type_of_work in row["types_of_work"]
                ],
                start_date=row["start_date"],
                end_date=row["end_date"],
                creation_date=row["creation_date"],
                area_type=wzdx_models.WorkZoneType(row["area_type"]),
            )
        return None

    def remove_wzdx_recording(self, recording_id: int) -> None:
        """Remove a WZDx recording from the database."""
        query = "DELETE FROM public.wzdx_recordings WHERE id = %s"
        self.cursor.execute(query, (recording_id,))
        self.connection.commit()
