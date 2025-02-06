from enum import Enum
from pydantic import BaseModel


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/WorkZoneType.md
class WorkZoneType(str, Enum):
    static = "static"
    moving = "moving"
    planned_moving_area = "planned_moving_area"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/LocationMethod.md
class LocationMethod(str, Enum):
    channel_device_method = "channel_device_method"
    sign_method = "sign_method"
    junction_method = "junction_method"
    other = "other"
    unknown = "unknown"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/VehicleImpact.md
class VehicleImpact(str, Enum):
    all_lanes_closed = "all-lanes-closed"
    some_lanes_closed = "some-lanes-closed"
    all_lanes_open = "all-lanes-open"
    alternating_one_way = "alternating-one-way"
    some_lanes_closed_merge_left = "some-lanes-closed-merge-left"
    some_lanes_closed_merge_right = "some-lanes-closed-merge-right"
    all_lanes_open_shift_left = "all-lanes-open-shift-left"
    all_lanes_open_shift_right = "all-lanes-open-shift-right"
    some_lanes_closed_split = "some-lanes-closed-split"
    flagging = "flagging"
    temporary_traffic_signal = "temporary-traffic-signal"
    unknown = "unknown"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/LaneType.md
class LaneType(str, Enum):
    general = "general"
    exit_lane = "exit-lane"
    exit_ramp = "exit-ramp"
    entrance_lane = "entrance-lane"
    entrance_ramp = "entrance-ramp"
    sidewalk = "sidewalk"
    bike_lane = "bike-lane"
    shoulder = "shoulder"
    parking = "parking"
    median = "median"
    two_way_center_turn_lane = "two-way-center-turn-lane"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/LaneStatus.md
class LaneStatus(str, Enum):
    open = "open"
    closed = "closed"
    shift_left = "shift-left"
    shift_right = "shift-right"
    merge_left = "merge-left"
    merge_right = "merge-right"
    alternating_flow = "alternating-flow"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/RestrictionType.md
class RestrictionType(str, Enum):
    local_access_only = "local-access-only"
    no_trucks = "no-trucks"
    travel_peak_hours_only = "travel-peak-hours-only"
    hov_3 = "hov-3"
    hov_2 = "hov-2"
    no_parking = "no-parking"
    reduced_width = "reduced-width"
    reduced_height = "reduced-height"
    reduced_length = "reduced-length"
    reduced_weight = "reduced-weight"
    axle_load_limit = "axle-load-limit"
    gross_weight_limit = "gross-weight-limit"
    towing_prohibited = "towing-prohibited"
    permitted_oversize_loads_prohibited = "permitted-oversize-loads-prohibited"
    no_passing = "no-passing"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/UnitOfMeasurement.md
class UnitOfMeasuremenet(str, Enum):
    feet = "feet"
    meters = "meters"
    centimeters = "centimeters"
    poinds = "pounds"
    tons = "tons"
    kilograms = "kilograms"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/objects/Restriction.md
class Restriction(BaseModel):
    type: RestrictionType
    value: float
    unit: UnitOfMeasuremenet


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/objects/Lane.md
class Lane(BaseModel):
    lane_order: int
    type: LaneType
    status: LaneStatus
    restrictions: list[Restriction]


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/WorkTypeName.md
class WorkTypeName(str, Enum):
    maintenance = "maintenance"
    minor_road_defect_repair = "minor-road-defect-repair"
    roadside_work = "roadside-work"
    overhead_work = "overhead-work"
    below_road_work = "below-road-work"
    barrier_work = "barrier-work"
    surface_work = "surface-work"
    painting = "painting"
    roadway_relocation = "roadway-relocation"
    roadway_creation = "roadway-creation"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/objects/TypeOfWork.md
class TypeOfWork(BaseModel):
    type_name: WorkTypeName
    is_architectural_change: bool


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/WorkerPresenceDefinition.md
class WorkerPresenceDefinition(str, Enum):
    workers_in_work_zone_working = "workers-in-work-zone-working"
    workers_in_work_zone_not_working = "workers-in-work-zone-not-working"
    mobile_equipment_in_work_zone_moving = "mobile-equipment-in-work-zone-moving"
    mobile_equipment_in_work_zone_not_moving = (
        "mobile-equipment-in-work-zone-not-moving"
    )
    fixed_equipment_in_work_zone = "fixed-equipment-in-work-zone"
    humans_behind_barrier = "humans-behind-barrier"
    humans_in_right_of_way = "humans-in-right-of-way"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/WorkerPresenceMethod.md
class WorkerPresenceMethod(str, Enum):
    camera_monitoring = "camera-monitoring"
    arrow_board_present = "arrow-board-present"
    cones_present = "cones-present"
    maintenance_vehicle_present = "maintenance-vehicle-present"
    wearables_present = "wearables-present"
    mobile_device_present = "mobile-device-present"
    check_in_app = "check-in-app"
    check_in_verbal = "check-in-verbal"
    scheduled = "scheduled"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/enumerated-types/WorkerPresenceConfidence.md
class WorkerPresenceConfidence(str, Enum):
    low = "low"
    medium = "medium"
    high = "high"


# https://github.com/usdot-jpo-ode/wzdx/blob/main/spec-content/objects/WorkerPresence.md
class WorkerPresence(BaseModel):
    are_workers_present: bool
    definition: WorkerPresenceDefinition
    method: WorkerPresenceMethod
    worker_presence_last_confirmed_date: int
    confidence: WorkerPresenceConfidence
