import json
from typing import List, Dict, Any

from pydantic import BaseModel
from models import Recording, RecordingPoint, RecordingMarking, WzdxRecording
from wzdx_models import Lane, LaneType, LaneStatus
from datetime import datetime


def initialize_lanes(num_lanes: int) -> List[Lane]:
    """Initialize all lanes as open regular lanes."""
    return [
        Lane(
            lane_order=i + 1,
            type=LaneType.general,  # Default type, adjust as needed
            status=LaneStatus.open,
            restrictions=[],
        )
        for i in range(num_lanes)
    ]


def update_lane_status(
    lanes: List[Lane], lane_num: int, new_status: LaneStatus
) -> List[Lane]:
    """Update the status of a specific lane while maintaining other lanes' states."""
    if 1 <= lane_num <= len(lanes):
        lanes[lane_num - 1].status = new_status
    return lanes


def create_feature_from_points(
    points: List[RecordingPoint],
    start_idx: int,
    end_idx: int,
    current_lanes: List[Lane],
    current_worker_presence: bool,
    current_speed_limit: int | None,
) -> Dict[str, Any]:
    """Creates a WZDx feature from a sequence of points and their marking data."""
    coordinates = [[p.longitude, p.latitude] for p in points[start_idx : end_idx + 1]]

    feature = {
        "type": "Feature",
        "properties": {
            "core_details": {
                "worker_presence": current_worker_presence,
            },
            "lanes": [lane.model_dump() for lane in current_lanes],
        },
        "geometry": {"type": "LineString", "coordinates": coordinates},
    }

    # Add speed limit if specified
    if current_speed_limit is not None:
        feature["properties"]["reduced_speed_limit_kph"] = (
            current_speed_limit * 1.60934
        )  # Convert mph to kph

    return feature


class State(BaseModel):
    current_worker_presence: bool
    current_lanes: List[Lane] | None
    current_speed_limit: int | None


def recording_to_wzdx(recording: Recording) -> WzdxRecording:
    """Converts a Recording object to a WZDx message dictionary."""
    features = []
    current_start_idx = 0

    # Initialize state
    state = State(
        current_worker_presence=False,
        current_lanes=None,
        current_speed_limit=None,
    )
    prev_state = state.__deepcopy__()

    for i, point in enumerate(recording.points):
        # Initialize lanes when we first get num_lanes
        if state.current_lanes is None:
            state.current_lanes = initialize_lanes(point.num_lanes)
            prev_state = state.__deepcopy__()

        # Tracking index, skip if no markings
        if not point.markings:
            continue

        for marking in point.markings:
            has_changes = False

            # Update lane states
            if marking.lane_closed is not None:
                state.current_lanes = update_lane_status(
                    state.current_lanes, marking.lane_closed, LaneStatus.closed
                )
                has_changes = True

            if marking.lane_opened is not None:
                state.current_lanes = update_lane_status(
                    state.current_lanes, marking.lane_opened, LaneStatus.open
                )
                has_changes = True

            # Update worker presence state
            if marking.workers_present is not None:
                state.current_worker_presence = marking.workers_present
                has_changes = True

            # Update speed limit state
            if marking.speed_limit_mph is not None:
                if marking.speed_limit_mph != state.current_speed_limit:
                    state.current_speed_limit = marking.speed_limit_mph
                    has_changes = True

            if has_changes:
                # Create feature from previous segment
                if i > current_start_idx:
                    features.append(
                        create_feature_from_points(
                            recording.points,
                            current_start_idx,
                            i,
                            prev_state.current_lanes,
                            prev_state.current_worker_presence,
                            prev_state.current_speed_limit,
                        )
                    )
                current_start_idx = i
            prev_state = state.__deepcopy__()

    # Add the final segment if there are remaining points
    if current_start_idx < len(recording.points) - 1:
        features.append(
            create_feature_from_points(
                recording.points,
                current_start_idx,
                len(recording.points) - 1,
                state.current_lanes,
                state.current_worker_presence,
                state.current_speed_limit,
            )
        )

    wzdx_recording = WzdxRecording(
        features=features,
        project_id=recording.project_id,
        segment_id=recording.segment_id,
        area_id=recording.area_id,
        types_of_work=recording.types_of_work,
        start_date=recording.start_date,
        end_date=recording.end_date,
        creation_date=recording.recording_date,
        area_type=recording.area_type,
    )
    return wzdx_recording


# recordings = json.load(open("./app/wzdx/recording.json"))
# recording = Recording(**recordings)
# wzdx = recording_to_wzdx(recording)
# json.dump(wzdx, open("./app/wzdx/wzdx.json", "w"))
