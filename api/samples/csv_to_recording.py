from datetime import datetime
import csv
from typing import List
from app import wzdx_models
from app.models import Recording, RecordingPoint, RecordingMarking
import json


def parse_date(date_str: str) -> int:
    """Convert date string to Unix timestamp."""
    dt = datetime.strptime(date_str, "%Y/%m/%d-%H:%M:%S:%f")
    return int(dt.timestamp())


def parse_markings(marker: str, value: str) -> List[RecordingMarking]:
    """Parse marking data from CSV row."""
    if not marker:
        return None

    marking = RecordingMarking()

    if marker == "RP":
        marking.ref_pt = True
    elif marker == "WP":
        marking.workers_present = value.lower() == "true"
    elif marker == "LC":
        marking.lane_closed = int(value)
    elif marker == "LO":
        marking.lane_opened = int(value)

    return [marking] if marking else None


def csv_to_recording(file_path: str) -> Recording:
    """Convert CSV file to Recording object."""
    points = []

    with open(file_path, "r") as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            markings = parse_markings(row["Marker"], row["Value"])

            point = RecordingPoint(
                date=parse_date(row["GPS Date & Time"]),
                num_satellites=int(row["# of Sats"]),
                accuracy=float(row["HDOP"]),
                latitude=float(row["Latitude"]),
                longitude=float(row["Longitude"]),
                altitude=float(row["Altitude(m)"]),
                speed=float(row["Speed(m/s)"]),
                heading=float(row["Heading(Deg)"]),
                num_lanes=2,  # Default value, adjust as needed
                markings=markings,
            )
            points.append(point)

    # Create the Recording object
    recording = Recording(
        recording_name="Innovation Drive Recording",
        types_of_work=[
            wzdx_models.TypeOfWork(
                type_name=wzdx_models.WorkTypeName.maintenance,
                is_architectural_change=False,
            )
        ],
        recording_date=points[0].date,
        area_type=wzdx_models.WorkZoneType.moving,
        points=points,
    )

    return recording


recording = csv_to_recording(
    "./samples/path-data--ref-impl-test-7--innovation-drive.csv"
)
with open("./app/wzdx/recording.json", "w") as f:
    json.dump(recording.model_dump(), f)
