# Protobuf Schemas

This directory contains Protobuf schema definitions for DataHub messages. The files in this directory are described as follows:

1. [common.proto](common.proto): defines generic, commonly used types, including timestamps and geometry
2. [conadmin_to_datahub.proto](conadmin_to_datahub.proto): defines the interface messages from the ConAdmin to the DataHub, enabling the DataHub to stay in sync with changes made by the ConAdmin
3. [data_source.proto](data_source.proto): defines the DataSource object, representing each data provider, to be included in generated messages
4. [datahub_to_conadmin.proto](datahub_to_conadmin.proto): defines the interface messages from the DataHub to the ConAdmin, including sharing of requested updates and newly registered devices
5. [field_device.proto](field_device.proto): defines the FieldDevice object, representing a connected work zone device (like an arrow board) sharing location along with other properties
6. [project.proto](project.proto): defines the Project object, representing a construction project/funding source
7. [road_sub_event.proto](road_sub_event.proto): defines the RoadSubEvent object, representing a small portion of a work zone with static properties (speed limit, worker presence, lane status)
8. [vehicle_location.proto](vehicle_location.proto): defines VehicleLocation message, representing each vehicle coming through an AVL data feed
9. [work_zone.proto](work_zone.proto): defines the WorkZone object, representing the metadata and location of an entire work zone and linking to multiple road sub events
10. [wzdx.proto](wzdx.proto): defines WZDx message objects and enums, for use in other messages

## Imports

This project uses downloaded versions of the google/type proto files. These files are located in the google/type subdirectory, and were sourced from [Google APIs Repository](https://github.com/googleapis/googleapis/tree/master/google/type)

This project also uses downloaded versions of the google/protobuf proto files, sourced from the [Protocol Buffers Repository](https://github.com/protocolbuffers/protobuf/tree/main/src/google/protobuf)

## Code Generation

For the most up-to-date command for generating your models from the protocol buffer definitions, see [protobuf-generation.yaml](../.github/workflows/protobuf-generation.yml)

### Dart

See [flutter_app/wzam/lib/models/protobuf_generated](../flutter_app/wzam/lib/models/protobuf_generated/README.md) for scripts to generate dart protobuf code
