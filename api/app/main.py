from http.client import HTTPException
import datetime

import wzdx_models
from postgres_adapter import DatabaseAdapter
from fastapi import Depends, FastAPI, status
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from fastapi.middleware.cors import CORSMiddleware
from loguru import logger
import models
import os
import sys
import pytz
import json

from auth import KeycloakProvider


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

app = FastAPI(summary="WZ Activity Monitor API", description="API for WZ Activity Monitor")
keycloakClient = KeycloakProvider(
    KEYCLOAK_ENDPOINT,
    KEYCLOAK_REALM,
    KEYCLOAK_CLIENT_NAME,
    KEYCLOAK_CLIENT_SECRET,
)

db_adapter = DatabaseAdapter(dbname=DB_NAME, user=DB_USER, password=DB_PASSWORD, host=DB_HOST, port=DB_PORT)

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
    access_token = keycloakClient.get_access_token(form_data.username, form_data.password)
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


@app.post("/auth/refresh-token", description="Keycloak refresh token generation endpoint")
async def auth_refresh_token(request: models.AuthRefreshTokenRequest) -> models.AuthToken:
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


@app.post("/projects/{project_id}", description="Create a new project")
# , token_valid: bool = Depends(verify_access_token)
async def create_project(project_id: int) -> models.Project:
    logger.debug(
        f"Received request to /projects at {datetime.datetime.now(pytz.utc).strftime(ISO_8601_FORMAT_STRING)}"
    )

    # Insert example
    project_data = [models.Project(
        id=project_id,
        name="Project 1",
        description="Description 1",
        tmc_notes="Notes 1",
        active_status="active",
        hyperlink="http://example.com",
        start_date=20220101,
        end_date=20221231,
        districts=["District 1"],
        wydot_contact="Contact 1",
        project_update_contact="Contact 2",
        traffic_control_contact="Contact 3",
        emergency_contact="Contact 4",
        contractor="Contractor 1",
        selected_towns=["Town 1"]
    )]
    db_adapter.insert("project", project_data)

    # Insert ActivityArea example
    activity_area_data = models.ActivityArea(
        segment_id=1,
        area_id=1,
        area_name="Area 1",
        description="Description 1",
        creation_date=20220101,
        update_date=20220102,
        start_date=20220103,
        end_date=20220104,
        start_date_verified=True,
        end_date_verified=True,
        area_type=wzdx_models.WorkZoneType.static,
        location_method=wzdx_models.LocationMethod.channel_device_method,
        vehicle_impact=wzdx_models.VehicleImpact.all_lanes_closed,
        impacted_cds_curb_zones=["Zone 1"],
        lanes=[wzdx_models.Lane(lane_order=1, type=wzdx_models.LaneType.exit_lane, status=wzdx_models.LaneStatus.open, restrictions=[])],
        beginning_cross_street="Street 1",
        ending_cross_street="Street 2",
        beginning_milepost="1.0",
        ending_milepost="2.0",
        types_of_work=[wzdx_models.TypeOfWork(type_name=wzdx_models.WorkTypeName.maintenance, is_architectural_change=False)],
        worker_resence=wzdx_models.WorkerPresence(
            are_workers_present=True,
            definition=wzdx_models.WorkerPresenceDefinition.workers_in_work_zone_working,
            method=wzdx_models.WorkerPresenceMethod.camera_monitoring,
            worker_presence_last_confirmed_date=20220101,
            confidence=wzdx_models.WorkerPresenceConfidence.high
        ),
        reduced_speed_limit_kph=60.0,
        restrictions=[],
        geometry=[[0.0, 0.0], [1.0, 1.0]],
        bbox=[[0.0, 0.0], [1.0, 1.0]]
    )
    db_adapter.insert_activity_area(activity_area_data)

    db_adapter.close()
    return project_data[0]