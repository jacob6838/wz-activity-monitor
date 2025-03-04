import datetime

from postgres_adapter import DatabaseAdapter
from fastapi import Depends, FastAPI, HTTPException, Query, status
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from fastapi.middleware.cors import CORSMiddleware
from loguru import logger
import models
import os
import sys
import pytz
import json

from auth import KeycloakProvider
from recording_to_wzdx import recording_to_wzdx


ISO_8601_FORMAT_STRING = "%Y-%m-%dT%H:%M:%SZ"

KEYCLOAK_ENDPOINT = os.getenv("KEYCLOAK_ENDPOINT")
KEYCLOAK_REALM = os.getenv("KEYCLOAK_REALM")
KEYCLOAK_CLIENT_NAME = os.getenv("KEYCLOAK_CLIENT_NAME")
KEYCLOAK_CLIENT_SECRET = os.getenv("KEYCLOAK_CLIENT_SECRET")
DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")
DB_NAME = os.getenv("DB_NAME")

logger.add(
    sys.stdout,
    colorize=True,
    format="<green>{time:HH:mm:ss}</green> | {level} | <level>{message}</level>",
)

app = FastAPI(
    summary="WZ Activity Monitor API", description="API for WZ Activity Monitor"
)
keycloakClient = KeycloakProvider(
    KEYCLOAK_ENDPOINT,
    KEYCLOAK_REALM,
    KEYCLOAK_CLIENT_NAME,
    KEYCLOAK_CLIENT_SECRET,
)

db_adapter = DatabaseAdapter(
    dbname=DB_NAME, user=DB_USER, password=DB_PASSWORD, host=DB_HOST, port=DB_PORT
)

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/token/form")

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


def verify_access_token(access_token: str = Depends(oauth2_scheme)):
    if keycloakClient.validate_token(access_token):
        return True
    else:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid user token",
            headers={"WWW-Authenticate": "Bearer"},
        )


def get_token(access_token: str = Depends(oauth2_scheme)) -> str:
    return access_token


##################################################################
# Rest Endpoint
##################################################################
@app.get("/")
def read_root():
    logger.debug(
        f"Received request to / at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    return {"Hello": "World"}


########################################## Token Auth ##########################################
@app.post(
    "/auth/token/form",
    description="FastAPI Documentation Token Request for OAuth2PasswordRequestForm",
)
async def auth_get_access_token_form(form_data: OAuth2PasswordRequestForm = Depends()):
    logger.debug(
        f"Received request to /auth/token at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    access_token = keycloakClient.get_access_token(
        form_data.username, form_data.password
    )
    if not access_token:
        logger.debug(
            f"Rejected Request for access token from {form_data.username}. Incorrect Username {form_data.username} or Password {form_data.password} {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    elif not keycloakClient.get_user_info(access_token["access_token"]):
        logger.debug(
            f"Rejected Request for access token from {form_data.username} {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Invalid token",
            headers={"WWW-Authenticate": "Bearer"},
        )
    return access_token


@app.post("/auth/token", description="Keycloak token generation endpoint")
async def auth_get_access_token(request: models.AuthTokenRequest) -> models.AuthToken:
    logger.debug(
        f"Received request to /auth/token-refresh at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    access_token = keycloakClient.get_access_token(request.username, request.password)
    if not access_token:
        logger.debug(
            f"Rejected Request for access token from {request.username}. Incorrect Username {request.username} or Password {request.password} {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    elif not keycloakClient.get_user_info(access_token["access_token"]):
        logger.debug(
            f"Rejected Request for access token from {request.username} {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Invalid token",
            headers={"WWW-Authenticate": "Bearer"},
        )
    return json.loads(models.AuthToken(**access_token).model_dump_json(by_alias=True))


@app.post(
    "/auth/refresh-token", description="Keycloak refresh token generation endpoint"
)
async def auth_refresh_token(
    request: models.AuthRefreshTokenRequest,
) -> models.AuthToken:
    logger.debug(
        f"Received request to /auth/token-refresh at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    access_token = keycloakClient.refresh_token(request.refresh_token)
    if not access_token:
        logger.debug(
            f"Rejected Request to refresh token, failed to refresh_token at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    elif not keycloakClient.get_user_info(access_token["access_token"]):
        logger.debug(
            f"Rejected Request to refresh token, failed user_info check at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
        )
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Invalid token",
            headers={"WWW-Authenticate": "Bearer"},
        )
    return json.loads(models.AuthToken(**access_token).model_dump_json(by_alias=True))


@app.get("/auth/user-info")
async def auth_get_user_info(
    token_valid: bool = Depends(verify_access_token), token: str = Depends(get_token)
) -> models.AuthUserInfo:
    logger.debug(
        f"Received request to /auth/user-info at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    user_info = keycloakClient.get_user_info(token)
    return json.loads(models.AuthUserInfo(**user_info).model_dump_json(by_alias=True))


@app.get("/auth/well-known")
async def auth_get_well_known():
    logger.debug(
        f"Received request to /auth/well-known at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )
    return keycloakClient.get_well_known()


@app.get("/projects", description="Get all projects")
async def get_projects(
    project_id: int = Query(None, description="Project ID to filter for"),
    start_date: int = Query(None, description="Start date to filter for active projects, in milliseconds since epoch"),
    end_date: int = Query(None, description="End date to filter for active projects, in milliseconds since epoch"),
) -> models.ProjectWithId | list[models.ProjectWithId]:
    logger.debug(
        f"Received GET request to /projects at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if project_id is not None:
        project = db_adapter.get_project(project_id)
        if not project:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Project with ID {project_id} not found",
            )
        return project.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_projects(start_date, end_date)]


@app.post("/projects", description="Create a new project")
async def create_project(project: models.Project) -> models.ProjectWithId:
    logger.debug(
        f"Received POST request to /projects at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert the project into the database
    project_id = db_adapter.insert_project(project)
    # db_adapter.close()

    # Retrieve the inserted project to return it
    inserted_project = db_adapter.get_project(project_id)
    return inserted_project.model_dump()


@app.delete("/projects/{projectid}", description="Delete a project")
async def remove_project(project_id: int) -> None:
    logger.debug(
        f"Received DELETE request to /projects at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    db_adapter.remove_project(project_id)
    # db_adapter.close()


@app.get("/road_sections", description="Get all road sections")
async def get_road_sections(
    road_section_id: int = Query(None, description="Road section ID to filter for"),
    start_date: int = Query(None, description="Start date to filter for active road sections, in milliseconds since epoch"),
    end_date: int = Query(None, description="End date to filter for active road sections, in milliseconds since epoch"),
) -> models.RoadSectionWithId | list[models.RoadSectionWithId]:
    logger.debug(
        f"Received GET request to /road_sections at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if road_section_id is not None:
        road_section = db_adapter.get_road_section(road_section_id)
        if not road_section:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Road section with ID {road_section_id} not found",
            )
        return road_section.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_road_sections(start_date, end_date)]


@app.post("/road_sections", description="Create a new road_section")
async def create_road_section(road_section: models.RoadSection) -> models.RoadSectionWithId:
    logger.debug(
        f"Received POST request to /road_sections at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert the road_section into the database
    road_section_id = db_adapter.insert_road_section(road_section)
    # db_adapter.close()

    # Retrieve the inserted road_section to return it
    inserted_road_section = db_adapter.get_road_section(road_section_id)
    return inserted_road_section.model_dump()


@app.delete("/road_sections/{road_section_id}", description="Delete a road_section")
async def remove_road_section(road_section_id: int) -> None:
    logger.debug(
        f"Received DELETE request to /road_sections at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    db_adapter.remove_road_section(road_section_id)
    # db_adapter.close()


@app.get("/activity_areas", description="Get all activity areas")
async def get_activity_areas(
    activity_area_id: int = Query(None, description="Activity area ID to filter for"),
    start_date: int = Query(None, description="Start date to filter for active activity areas, in milliseconds since epoch"),
    end_date: int = Query(None, description="End date to filter for active activity areas, in milliseconds since epoch"),
) -> models.ActivityAreaWithId | list[models.ActivityAreaWithId]:
    logger.debug(
        f"Received GET request to /activity_areas at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if activity_area_id is not None:
        activity_area = db_adapter.get_activity_area(activity_area_id)
        if not activity_area:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Report with ID {activity_area_id} not found",
            )
        return activity_area.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_activity_areas(start_date, end_date)]


@app.post("/activity_areas", description="Create a new activity_area")
async def create_activity_area(activity_area: models.ActivityArea) -> models.ActivityAreaWithId:
    logger.debug(
        f"Received POST request to /activity_areas at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert the activity_area into the database
    activity_area_id = db_adapter.insert_activity_area(activity_area)
    # db_adapter.close()

    # Retrieve the inserted activity_area to return it
    inserted_activity_area = db_adapter.get_activity_area(activity_area_id)
    return inserted_activity_area.model_dump()


@app.delete("/activity_areas/{activity_areaid}", description="Delete a activity_area")
async def remove_activity_area(activity_area_id: int) -> None:
    logger.debug(
        f"Received DELETE request to /activity_areas at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    db_adapter.remove_activity_area(activity_area_id)
    # db_adapter.close()


@app.get("/reports", description="Get all reports")
async def get_reports(
    report_id: int = Query(None, description="Report ID to filter for"),
) -> models.ReportWithId | list[models.ReportWithId]:
    logger.debug(
        f"Received GET request to /reports at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if report_id is not None:
        report = db_adapter.get_report(report_id)
        if not report:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Report with ID {report_id} not found",
            )
        return report.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_reports()]


@app.post("/reports", description="Create a new report")
async def create_report(report: models.Report) -> models.ReportWithId:
    logger.debug(
        f"Received POST request to /reports at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert the report into the database
    report_id = db_adapter.insert_report(report)
    # db_adapter.close()

    # Retrieve the inserted report to return it
    inserted_report = db_adapter.get_report(report_id)
    return inserted_report.model_dump()


@app.delete("/reports/{report_id}", description="Delete a report")
async def remove_report(report_id: int) -> None:
    logger.debug(
        f"Received DELETE request to /reports at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    db_adapter.remove_report(report_id)
    # db_adapter.close()


@app.get("/recordings", description="Get all recordings")
async def get_recordings(
    recording_id: int = Query(None, description="Recording ID to filter for"),
) -> models.RecordingWithId | list[models.RecordingWithId]:
    logger.debug(
        f"Received GET request to /recordings at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if recording_id is not None:
        recording = db_adapter.get_recording(recording_id)
        if not recording:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Recording with ID {recording_id} not found",
            )

        return recording.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_recordings()]


@app.get("/wzdx-recordings", description="Get all WZDx recordings")
async def get_wzdx_recordings(
    recording_id: int = Query(None, description="WZDx recording ID to filter for"),
) -> models.WzdxRecordingWithId | list[models.WzdxRecordingWithId]:
    logger.debug(
        f"Received GET request to /recordings at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    if recording_id is not None:
        recording = db_adapter.get_wzdx_recording(recording_id)
        if not recording:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Recording with ID {recording_id} not found",
            )

        return recording.model_dump()
    else:
        return [o.model_dump() for o in db_adapter.get_wzdx_recordings()]


@app.post("/recordings", description="Create a new recording")
async def create_recording(recording: models.Recording) -> models.RecordingWithId:
    logger.debug(
        f"Received POST request to /recordings at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert the recording into the database
    recording_id = db_adapter.insert_recording(recording)
    # db_adapter.close()

    wzdx_recording = recording_to_wzdx(recording)
    wzdx_recording_id = db_adapter.insert_wzdx_recording(wzdx_recording)

    # Retrieve the inserted recording to return it
    inserted_recording = db_adapter.get_recording(recording_id)
    return inserted_recording.model_dump()


@app.delete("/recordings/{recording_id}", description="Delete a recording")
async def remove_recording(recording_id: int) -> None:
    logger.debug(
        f"Received DELETE request to /recordings at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    db_adapter.remove_recording(recording_id)
    # db_adapter.close()
