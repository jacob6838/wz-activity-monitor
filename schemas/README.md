# Protobuf Schemas

This directory contains Protobuf schema definitions for DataHub messages. The files in this directory are described as follows:

1. [common.proto](common.proto): defines generic, commonly used types, including timestamps and geometry
2. [wzdx.proto](wzdx.proto): defines WZDx message objects and enums, for use in other messages
3. [project.proto](project.proto): defines the Project object, representing a construction project/funding source
4. [road_section.proto](road_section.proto): defines the Road Section object, representing an area of roadway containing traffic impacts (signage, cones, ...)
5. [activity_area.proto](activity_area.proto): defines the Activity Area object, representing a position within a road section where workers are present
6. [report.proto](report.proto): defines the Report object, representing a user-provided report of ongoing or upcoming work
7. [recording.proto](recording.proto): defines the Recording object, representing a user-driven annotated path through a work zone

## Imports

This project uses downloaded versions of the google/type proto files. These files are located in the google/type subdirectory, and were sourced from [Google APIs Repository](https://github.com/googleapis/googleapis/tree/master/google/type)

This project also uses downloaded versions of the google/protobuf proto files, sourced from the [Protocol Buffers Repository](https://github.com/protocolbuffers/protobuf/tree/main/src/google/protobuf)
