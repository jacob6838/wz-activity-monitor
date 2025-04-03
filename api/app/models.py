from enum import Enum
from typing import Optional
from pydantic import BaseModel, Field
import wzdx_models


class ProjectStatus(str, Enum):
    active = "active"
    suspended = "suspended"


class Project(BaseModel):
    name: str
    description: str
    tmc_notes: str
    active_status: ProjectStatus
    hyperlink: str
    start_date: int
    end_date: int
    districts: list[str]
    wydot_contact: str
    project_update_contact: str
    traffic_control_contact: str
    emergency_contact: str
    contractor: str
    selected_towns: list[str]
    geometry: list[list[float]]
    bbox: Optional[list[list[float]]] = None


class ProjectWithId(Project):
    id: int


class RoadSectionType(str, Enum):
    highway = "highway"
    county_road = "county_road"
    lrs = "lrs"


class RoadSegmentDirection(str, Enum):
    both = "both"
    northbound = "northbound"
    southbound = "southbound"
    eastbound = "eastbound"
    westbound = "westbound"


class RoadSegmentSurfaceType(str, Enum):
    paved = "paved"
    gravel = "gravel"
    dirt = "dirt"
    grooved = "grooved"


class RoadSegmentArmedStatus(str, Enum):
    armed = "armed"
    disarmed = "disarmed"


class RoadSection(BaseModel):
    project_id: int
    segment_name: Optional[str] = None
    reference_type: RoadSectionType
    start_mm: str
    end_mm: str
    direction: RoadSegmentDirection
    surface_type: RoadSegmentSurfaceType
    start_date: Optional[int] = None
    end_date: Optional[int] = None
    armed_status: RoadSegmentArmedStatus
    geometry: list[list[float]]
    bbox: Optional[list[list[float]]] = None


class RoadSectionWithId(RoadSection):
    id: int


# Built off of https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/objects/WorkZoneRoadEvent.md
class ActivityArea(BaseModel):
    segment_id: int
    area_name: str
    description: Optional[str] = None
    creation_date: int
    update_date: int
    start_date: int
    end_date: int
    start_date_verified: Optional[bool] = None
    end_date_verified: Optional[bool] = None
    area_type: wzdx_models.WorkZoneType
    location_method: wzdx_models.LocationMethod
    vehicle_impact: wzdx_models.VehicleImpact
    impacted_cds_curb_zones: Optional[list[str]] = None
    lanes: Optional[list[wzdx_models.Lane]] = None
    beginning_cross_street: Optional[str] = None
    ending_cross_street: Optional[str] = None
    beginning_milepost: Optional[str] = None
    ending_milepost: Optional[str] = None
    types_of_work: list[wzdx_models.TypeOfWork]
    worker_presence: Optional[wzdx_models.WorkerPresence] = None
    reduced_speed_limit_kph: Optional[float] = None
    restrictions: Optional[list[wzdx_models.Restriction]] = None
    geometry: list[list[float]]
    bbox: Optional[list[list[float]]] = None


class ActivityAreaWithId(ActivityArea):
    id: int


class GeometryType(str, Enum):
    multipoint = "multipoint"
    linestring = "linestring"
    polygon = "polygon"


class MobilityType(str, Enum):
    static = "static"
    mobile = "mobile"


class Report(BaseModel):
    project_id: Optional[int] = None
    segment_id: Optional[int] = None
    area_id: Optional[int] = None
    report_name: str
    types_of_work: list[wzdx_models.TypeOfWork]
    workers_present: bool
    start_date: Optional[int] = None
    end_date: Optional[int] = None
    report_date: int
    area_type: wzdx_models.WorkZoneType
    mobility_speed_mph: Optional[float] = None
    geometry_type: GeometryType
    geometry: list[list[float]]
    geometry_line_width: Optional[float] = None # Required if geometry_type is linestring
    license_plate: Optional[str] = None
    surface_type: Optional[RoadSegmentSurfaceType] = None

# if start date is not provided, the event is not active until it is set as active
# if 


class ReportWithId(Report):
    id: int


class RecordingMarking(BaseModel):
    ref_pt: Optional[bool] = None
    lane_closed: Optional[int] = None
    lane_opened: Optional[int] = None
    workers_present: Optional[bool] = None
    speed_limit_mph: Optional[float] = None
    surface_type: Optional[RoadSegmentSurfaceType] = None


class RecordingPoint(BaseModel):
    date: int
    num_satellites: int
    accuracy: float
    latitude: float
    longitude: float
    altitude: float
    speed: float
    heading: float
    num_lanes: int
    markings: Optional[list[RecordingMarking]] = None


class Recording(BaseModel):
    project_id: Optional[int] = None
    segment_id: Optional[int] = None
    area_id: Optional[int] = None
    recording_name: str
    types_of_work: list[wzdx_models.TypeOfWork]
    start_date: Optional[int] = None
    end_date: Optional[int] = None
    recording_date: int
    area_type: wzdx_models.WorkZoneType
    mobility_speed_mph: Optional[float] = None
    surface_type: Optional[RoadSegmentSurfaceType] = None
    points: list[RecordingPoint]


class RecordingWithId(Recording):
    id: int


class WzdxRecording(BaseModel):
    project_id: Optional[int] = None
    segment_id: Optional[int] = None
    area_id: Optional[int] = None
    features: list[dict]
    types_of_work: list[wzdx_models.TypeOfWork]
    start_date: Optional[int] = None
    end_date: Optional[int] = None
    creation_date: int
    area_type: wzdx_models.WorkZoneType


class WzdxRecordingWithId(WzdxRecording):
    id: int


# ################################ Keycloak Models ################################
class AuthTokenRequest(BaseModel):
    username: str
    password: str


class AuthRefreshTokenRequest(BaseModel):
    refresh_token: str


class AuthToken(BaseModel):
    access_token: str
    expires_in: int
    refresh_expires_in: int
    refresh_token: str
    token_type: str
    id_token: str
    not_before_policy: int = Field(..., alias="not-before-policy")
    session_state: str
    scope: str


class AuthUserInfo(BaseModel):
    sub: str
    email_verified: bool
    name: str
    preferred_username: str
    given_name: str
    family_name: str
    email: str


class AuthWellKnown(BaseModel):
    issuer: str
    authorization_endpoint: str
    token_endpoint: str
    introspection_endpoint: str
    userinfo_endpoint: str
    end_session_endpoint: str
    frontchannel_logout_session_supported: bool
    frontchannel_logout_supported: bool
    jwks_uri: str
    check_session_iframe: str
    grant_types_supported: list[str]
    acr_values_supported: list[str]
    response_types_supported: list[str]
    subject_types_supported: list[str]
    id_token_signing_alg_values_supported: list[str]
    id_token_encryption_alg_values_supported: list[str]
    id_token_encryption_enc_values_supported: list[str]
    userinfo_signing_alg_values_supported: list[str]
    userinfo_encryption_alg_values_supported: list[str]
    userinfo_encryption_enc_values_supported: list[str]
    request_object_signing_alg_values_supported: list[str]
    request_object_encryption_alg_values_supported: list[str]
    request_object_encryption_enc_values_supported: list[str]
    response_modes_supported: list[str]
    registration_endpoint: str
    token_endpoint_auth_methods_supported: list[str]
    token_endpoint_auth_signing_alg_values_supported: list[str]
    introspection_endpoint_auth_methods_supported: list[str]
    introspection_endpoint_auth_signing_alg_values_supported: list[str]
    authorization_signing_alg_values_supported: list[str]
    authorization_encryption_alg_values_supported: list[str]
    authorization_encryption_enc_values_supported: list[str]
    claims_supported: list[str]
    claim_types_supported: list[str]
    claims_parameter_supported: bool
    scopes_supported: list[str]
    request_parameter_supported: bool
    request_uri_parameter_supported: bool
    require_request_uri_registration: bool
    code_challenge_methods_supported: list[str]
    tls_client_certificate_bound_access_tokens: bool
    revocation_endpoint: str
    revocation_endpoint_auth_methods_supported: list[str]
    revocation_endpoint_auth_signing_alg_values_supported: list[str]
    backchannel_logout_supported: bool
    backchannel_logout_session_supported: bool
    device_authorization_endpoint: str
    backchannel_token_delivery_modes_supported: list[str]
    backchannel_authentication_endpoint: str
    backchannel_authentication_request_signing_alg_values_supported: list[str]
    require_pushed_authorization_requests: bool
    pushed_authorization_request_endpoint: str
    mtls_endpoint_aliases: dict[str, str]
    authorization_response_iss_parameter_supported: bool
