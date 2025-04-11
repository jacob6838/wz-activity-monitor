# Kafka Topic Configuration

The naming conventions follow the suggested best practices
from [Confluent](https://www.confluent.io/learn/kafka-topic-naming-convention/) for the Hierarchical Pattern. The
separators we will use are `.` and `_`. The `.` indicates a change hierarchy. The `_` acts as a word separator. 

## Structure of a name:

`[data source].[data type]`

### Data Source / Domain

This identifies the system or domain where the data originates. In our case, either `conadmin` or `datahub`.

### Data Type

This identifies the type of data. In our case, something like `project` or `work_zone`.

### Examples

- `conadmin.project`
- `datahub.work_zone`

## ConAdmin

- conadmin.vehicle_location
    - schema: datahub.v1.conadmin.VehicleLocationUpdate
    - description: vehicle location changes coming from ConAdmin
- conadmin.field_device
    - schema: datahub.v1.conadmin.FieldDeviceUpdate
    - description: field device changes coming from ConAdmin
- conadmin.project
    - schema: datahub.v1.conadmin.ProjectUpdate
    - description: project changes coming from ConAdmin
- conadmin.work_zone
    - schema: datahub.v1.conadmin.WorkZoneUpdate
    - description: work zone changes coming from ConAdmin

## Data Hub

- datahub.vehicle_location
    - schema: datahub.v1.datahub.VehicleLocationUpdateRequestMessage
    - description: Requested vehicle location changes coming from DataHub
- datahub.field_device
    - schema: datahub.v1.datahub.FieldDeviceUpdateRequestMessage
    - description: Requested field device changes coming from DataHub
- datahub.work_zone
    - schema: datahub.v1.datahub.WorkZoneUpdateRequestMessage
    - description: Requested work zone changes coming from DataHub
