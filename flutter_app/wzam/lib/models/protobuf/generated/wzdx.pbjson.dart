//
//  Generated code. Do not modify.
//  source: wzdx.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use workZoneTypeDescriptor instead')
const WorkZoneType$json = {
  '1': 'WorkZoneType',
  '2': [
    {'1': 'WORK_ZONE_TYPE_STATIC', '2': 0},
    {'1': 'WORK_ZONE_TYPE_MOVING', '2': 1},
    {'1': 'WORK_ZONE_TYPE_PLANNED_MOVING_AREA', '2': 2},
  ],
};

/// Descriptor for `WorkZoneType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List workZoneTypeDescriptor = $convert.base64Decode(
    'CgxXb3JrWm9uZVR5cGUSGQoVV09SS19aT05FX1RZUEVfU1RBVElDEAASGQoVV09SS19aT05FX1'
    'RZUEVfTU9WSU5HEAESJgoiV09SS19aT05FX1RZUEVfUExBTk5FRF9NT1ZJTkdfQVJFQRAC');

@$core.Deprecated('Use locationMethodDescriptor instead')
const LocationMethod$json = {
  '1': 'LocationMethod',
  '2': [
    {'1': 'LOCATION_METHOD_CHANNEL_DEVICE_METHOD', '2': 0},
    {'1': 'LOCATION_METHOD_SIGN_METHOD', '2': 1},
    {'1': 'LOCATION_METHOD_JUNCTION_METHOD', '2': 2},
    {'1': 'LOCATION_METHOD_OTHER', '2': 3},
    {'1': 'LOCATION_METHOD_UNKNOWN', '2': 4},
  ],
};

/// Descriptor for `LocationMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List locationMethodDescriptor = $convert.base64Decode(
    'Cg5Mb2NhdGlvbk1ldGhvZBIpCiVMT0NBVElPTl9NRVRIT0RfQ0hBTk5FTF9ERVZJQ0VfTUVUSE'
    '9EEAASHwobTE9DQVRJT05fTUVUSE9EX1NJR05fTUVUSE9EEAESIwofTE9DQVRJT05fTUVUSE9E'
    'X0pVTkNUSU9OX01FVEhPRBACEhkKFUxPQ0FUSU9OX01FVEhPRF9PVEhFUhADEhsKF0xPQ0FUSU'
    '9OX01FVEhPRF9VTktOT1dOEAQ=');

@$core.Deprecated('Use vehicleImpactDescriptor instead')
const VehicleImpact$json = {
  '1': 'VehicleImpact',
  '2': [
    {'1': 'VEHICLE_IMPACT_ALL_LANES_CLOSED', '2': 0},
    {'1': 'VEHICLE_IMPACT_SOME_LANES_CLOSED', '2': 1},
    {'1': 'VEHICLE_IMPACT_ALL_LANES_OPEN', '2': 2},
    {'1': 'VEHICLE_IMPACT_ALTERNATING_ONE_WAY', '2': 3},
    {'1': 'VEHICLE_IMPACT_SOME_LANES_CLOSED_MERGE_LEFT', '2': 4},
    {'1': 'VEHICLE_IMPACT_SOME_LANES_CLOSED_MERGE_RIGHT', '2': 5},
    {'1': 'VEHICLE_IMPACT_ALL_LANES_OPEN_SHIFT_LEFT', '2': 6},
    {'1': 'VEHICLE_IMPACT_ALL_LANES_OPEN_SHIFT_RIGHT', '2': 7},
    {'1': 'VEHICLE_IMPACT_SOME_LANES_CLOSED_SPLIT', '2': 8},
    {'1': 'VEHICLE_IMPACT_FLAGGING', '2': 9},
    {'1': 'VEHICLE_IMPACT_TEMPORARY_TRAFFIC_SIGNAL', '2': 10},
    {'1': 'VEHICLE_IMPACT_UNKNOWN', '2': 11},
  ],
};

/// Descriptor for `VehicleImpact`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List vehicleImpactDescriptor = $convert.base64Decode(
    'Cg1WZWhpY2xlSW1wYWN0EiMKH1ZFSElDTEVfSU1QQUNUX0FMTF9MQU5FU19DTE9TRUQQABIkCi'
    'BWRUhJQ0xFX0lNUEFDVF9TT01FX0xBTkVTX0NMT1NFRBABEiEKHVZFSElDTEVfSU1QQUNUX0FM'
    'TF9MQU5FU19PUEVOEAISJgoiVkVISUNMRV9JTVBBQ1RfQUxURVJOQVRJTkdfT05FX1dBWRADEi'
    '8KK1ZFSElDTEVfSU1QQUNUX1NPTUVfTEFORVNfQ0xPU0VEX01FUkdFX0xFRlQQBBIwCixWRUhJ'
    'Q0xFX0lNUEFDVF9TT01FX0xBTkVTX0NMT1NFRF9NRVJHRV9SSUdIVBAFEiwKKFZFSElDTEVfSU'
    '1QQUNUX0FMTF9MQU5FU19PUEVOX1NISUZUX0xFRlQQBhItCilWRUhJQ0xFX0lNUEFDVF9BTExf'
    'TEFORVNfT1BFTl9TSElGVF9SSUdIVBAHEioKJlZFSElDTEVfSU1QQUNUX1NPTUVfTEFORVNfQ0'
    'xPU0VEX1NQTElUEAgSGwoXVkVISUNMRV9JTVBBQ1RfRkxBR0dJTkcQCRIrCidWRUhJQ0xFX0lN'
    'UEFDVF9URU1QT1JBUllfVFJBRkZJQ19TSUdOQUwQChIaChZWRUhJQ0xFX0lNUEFDVF9VTktOT1'
    'dOEAs=');

@$core.Deprecated('Use laneTypeDescriptor instead')
const LaneType$json = {
  '1': 'LaneType',
  '2': [
    {'1': 'LANE_TYPE_GENERAL', '2': 0},
    {'1': 'LANE_TYPE_EXIT_LANE', '2': 1},
    {'1': 'LANE_TYPE_EXIT_RAMP', '2': 2},
    {'1': 'LANE_TYPE_ENTRANCE_LANE', '2': 3},
    {'1': 'LANE_TYPE_ENTRANCE_RAMP', '2': 4},
    {'1': 'LANE_TYPE_SIDEWALK', '2': 5},
    {'1': 'LANE_TYPE_BIKE_LANE', '2': 6},
    {'1': 'LANE_TYPE_SHOULDER', '2': 7},
    {'1': 'LANE_TYPE_PARKING', '2': 8},
    {'1': 'LANE_TYPE_MEDIAN', '2': 9},
    {'1': 'LANE_TYPE_TWO_WAY_CENTER_TURN_LANE', '2': 10},
  ],
};

/// Descriptor for `LaneType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List laneTypeDescriptor = $convert.base64Decode(
    'CghMYW5lVHlwZRIVChFMQU5FX1RZUEVfR0VORVJBTBAAEhcKE0xBTkVfVFlQRV9FWElUX0xBTk'
    'UQARIXChNMQU5FX1RZUEVfRVhJVF9SQU1QEAISGwoXTEFORV9UWVBFX0VOVFJBTkNFX0xBTkUQ'
    'AxIbChdMQU5FX1RZUEVfRU5UUkFOQ0VfUkFNUBAEEhYKEkxBTkVfVFlQRV9TSURFV0FMSxAFEh'
    'cKE0xBTkVfVFlQRV9CSUtFX0xBTkUQBhIWChJMQU5FX1RZUEVfU0hPVUxERVIQBxIVChFMQU5F'
    'X1RZUEVfUEFSS0lORxAIEhQKEExBTkVfVFlQRV9NRURJQU4QCRImCiJMQU5FX1RZUEVfVFdPX1'
    'dBWV9DRU5URVJfVFVSTl9MQU5FEAo=');

@$core.Deprecated('Use laneStatusDescriptor instead')
const LaneStatus$json = {
  '1': 'LaneStatus',
  '2': [
    {'1': 'LANE_STATUS_OPEN', '2': 0},
    {'1': 'LANE_STATUS_CLOSED', '2': 1},
    {'1': 'LANE_STATUS_SHIFT_LEFT', '2': 2},
    {'1': 'LANE_STATUS_SHIFT_RIGHT', '2': 3},
    {'1': 'LANE_STATUS_MERGE_LEFT', '2': 4},
    {'1': 'LANE_STATUS_MERGE_RIGHT', '2': 5},
    {'1': 'LANE_STATUS_ALTERNATING_FLOW', '2': 6},
  ],
};

/// Descriptor for `LaneStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List laneStatusDescriptor = $convert.base64Decode(
    'CgpMYW5lU3RhdHVzEhQKEExBTkVfU1RBVFVTX09QRU4QABIWChJMQU5FX1NUQVRVU19DTE9TRU'
    'QQARIaChZMQU5FX1NUQVRVU19TSElGVF9MRUZUEAISGwoXTEFORV9TVEFUVVNfU0hJRlRfUklH'
    'SFQQAxIaChZMQU5FX1NUQVRVU19NRVJHRV9MRUZUEAQSGwoXTEFORV9TVEFUVVNfTUVSR0VfUk'
    'lHSFQQBRIgChxMQU5FX1NUQVRVU19BTFRFUk5BVElOR19GTE9XEAY=');

@$core.Deprecated('Use restrictionTypeDescriptor instead')
const RestrictionType$json = {
  '1': 'RestrictionType',
  '2': [
    {'1': 'RESTRICTION_TYPE_LOCAL_ACCESS_ONLY', '2': 0},
    {'1': 'RESTRICTION_TYPE_NO_TRUCKS', '2': 1},
    {'1': 'RESTRICTION_TYPE_TRAVEL_PEAK_HOURS_ONLY', '2': 2},
    {'1': 'RESTRICTION_TYPE_HOV_3', '2': 3},
    {'1': 'RESTRICTION_TYPE_HOV_2', '2': 4},
    {'1': 'RESTRICTION_TYPE_NO_PARKING', '2': 5},
    {'1': 'RESTRICTION_TYPE_REDUCED_WIDTH', '2': 6},
    {'1': 'RESTRICTION_TYPE_REDUCED_HEIGHT', '2': 7},
    {'1': 'RESTRICTION_TYPE_REDUCED_LENGTH', '2': 8},
    {'1': 'RESTRICTION_TYPE_REDUCED_WEIGHT', '2': 9},
    {'1': 'RESTRICTION_TYPE_AXLE_LOAD_LIMIT', '2': 10},
    {'1': 'RESTRICTION_TYPE_GROSS_WEIGHT_LIMIT', '2': 11},
    {'1': 'RESTRICTION_TYPE_TOWING_PROHIBITED', '2': 12},
    {'1': 'RESTRICTION_TYPE_PERMITTED_OVERSIZE_LOADS_PROHIBITED', '2': 13},
    {'1': 'RESTRICTION_TYPE_NO_PASSING', '2': 14},
  ],
};

/// Descriptor for `RestrictionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List restrictionTypeDescriptor = $convert.base64Decode(
    'Cg9SZXN0cmljdGlvblR5cGUSJgoiUkVTVFJJQ1RJT05fVFlQRV9MT0NBTF9BQ0NFU1NfT05MWR'
    'AAEh4KGlJFU1RSSUNUSU9OX1RZUEVfTk9fVFJVQ0tTEAESKwonUkVTVFJJQ1RJT05fVFlQRV9U'
    'UkFWRUxfUEVBS19IT1VSU19PTkxZEAISGgoWUkVTVFJJQ1RJT05fVFlQRV9IT1ZfMxADEhoKFl'
    'JFU1RSSUNUSU9OX1RZUEVfSE9WXzIQBBIfChtSRVNUUklDVElPTl9UWVBFX05PX1BBUktJTkcQ'
    'BRIiCh5SRVNUUklDVElPTl9UWVBFX1JFRFVDRURfV0lEVEgQBhIjCh9SRVNUUklDVElPTl9UWV'
    'BFX1JFRFVDRURfSEVJR0hUEAcSIwofUkVTVFJJQ1RJT05fVFlQRV9SRURVQ0VEX0xFTkdUSBAI'
    'EiMKH1JFU1RSSUNUSU9OX1RZUEVfUkVEVUNFRF9XRUlHSFQQCRIkCiBSRVNUUklDVElPTl9UWV'
    'BFX0FYTEVfTE9BRF9MSU1JVBAKEicKI1JFU1RSSUNUSU9OX1RZUEVfR1JPU1NfV0VJR0hUX0xJ'
    'TUlUEAsSJgoiUkVTVFJJQ1RJT05fVFlQRV9UT1dJTkdfUFJPSElCSVRFRBAMEjgKNFJFU1RSSU'
    'NUSU9OX1RZUEVfUEVSTUlUVEVEX09WRVJTSVpFX0xPQURTX1BST0hJQklURUQQDRIfChtSRVNU'
    'UklDVElPTl9UWVBFX05PX1BBU1NJTkcQDg==');

@$core.Deprecated('Use unitOfMeasurementDescriptor instead')
const UnitOfMeasurement$json = {
  '1': 'UnitOfMeasurement',
  '2': [
    {'1': 'UNIT_OF_MEASUREMENT_FEET', '2': 0},
    {'1': 'UNIT_OF_MEASUREMENT_METERS', '2': 1},
    {'1': 'UNIT_OF_MEASUREMENT_CENTIMETERS', '2': 2},
    {'1': 'UNIT_OF_MEASUREMENT_POUNDS', '2': 3},
    {'1': 'UNIT_OF_MEASUREMENT_TONS', '2': 4},
    {'1': 'UNIT_OF_MEASUREMENT_KILOGRAMS', '2': 5},
  ],
};

/// Descriptor for `UnitOfMeasurement`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List unitOfMeasurementDescriptor = $convert.base64Decode(
    'ChFVbml0T2ZNZWFzdXJlbWVudBIcChhVTklUX09GX01FQVNVUkVNRU5UX0ZFRVQQABIeChpVTk'
    'lUX09GX01FQVNVUkVNRU5UX01FVEVSUxABEiMKH1VOSVRfT0ZfTUVBU1VSRU1FTlRfQ0VOVElN'
    'RVRFUlMQAhIeChpVTklUX09GX01FQVNVUkVNRU5UX1BPVU5EUxADEhwKGFVOSVRfT0ZfTUVBU1'
    'VSRU1FTlRfVE9OUxAEEiEKHVVOSVRfT0ZfTUVBU1VSRU1FTlRfS0lMT0dSQU1TEAU=');

@$core.Deprecated('Use workTypeNameDescriptor instead')
const WorkTypeName$json = {
  '1': 'WorkTypeName',
  '2': [
    {'1': 'WORK_TYPE_NAME_MAINTENANCE', '2': 0},
    {'1': 'WORK_TYPE_NAME_MINOR_ROAD_DEFECT_REPAIR', '2': 1},
    {'1': 'WORK_TYPE_NAME_ROADSIDE_WORK', '2': 2},
    {'1': 'WORK_TYPE_NAME_OVERHEAD_WORK', '2': 3},
    {'1': 'WORK_TYPE_NAME_BELOW_ROAD_WORK', '2': 4},
    {'1': 'WORK_TYPE_NAME_BARRIER_WORK', '2': 5},
    {'1': 'WORK_TYPE_NAME_SURFACE_WORK', '2': 6},
    {'1': 'WORK_TYPE_NAME_PAINTING', '2': 7},
    {'1': 'WORK_TYPE_NAME_ROADWAY_RELOCATION', '2': 8},
    {'1': 'WORK_TYPE_NAME_ROADWAY_CREATION', '2': 9},
  ],
};

/// Descriptor for `WorkTypeName`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List workTypeNameDescriptor = $convert.base64Decode(
    'CgxXb3JrVHlwZU5hbWUSHgoaV09SS19UWVBFX05BTUVfTUFJTlRFTkFOQ0UQABIrCidXT1JLX1'
    'RZUEVfTkFNRV9NSU5PUl9ST0FEX0RFRkVDVF9SRVBBSVIQARIgChxXT1JLX1RZUEVfTkFNRV9S'
    'T0FEU0lERV9XT1JLEAISIAocV09SS19UWVBFX05BTUVfT1ZFUkhFQURfV09SSxADEiIKHldPUk'
    'tfVFlQRV9OQU1FX0JFTE9XX1JPQURfV09SSxAEEh8KG1dPUktfVFlQRV9OQU1FX0JBUlJJRVJf'
    'V09SSxAFEh8KG1dPUktfVFlQRV9OQU1FX1NVUkZBQ0VfV09SSxAGEhsKF1dPUktfVFlQRV9OQU'
    '1FX1BBSU5USU5HEAcSJQohV09SS19UWVBFX05BTUVfUk9BRFdBWV9SRUxPQ0FUSU9OEAgSIwof'
    'V09SS19UWVBFX05BTUVfUk9BRFdBWV9DUkVBVElPThAJ');

@$core.Deprecated('Use workerPresenceDefinitionDescriptor instead')
const WorkerPresenceDefinition$json = {
  '1': 'WorkerPresenceDefinition',
  '2': [
    {'1': 'WORKER_PRESENCE_DEFINITION_WORKERS_IN_WORK_ZONE_WORKING', '2': 0},
    {'1': 'WORKER_PRESENCE_DEFINITION_WORKERS_IN_WORK_ZONE_NOT_WORKING', '2': 1},
    {'1': 'WORKER_PRESENCE_DEFINITION_MOBILE_EQUIPMENT_IN_WORK_ZONE_MOVING', '2': 2},
    {'1': 'WORKER_PRESENCE_DEFINITION_MOBILE_EQUIPMENT_IN_WORK_ZONE_NOT_MOVING', '2': 3},
    {'1': 'WORKER_PRESENCE_DEFINITION_FIXED_EQUIPMENT_IN_WORK_ZONE', '2': 4},
    {'1': 'WORKER_PRESENCE_DEFINITION_HUMANS_BEHIND_BARRIER', '2': 5},
    {'1': 'WORKER_PRESENCE_DEFINITION_HUMANS_IN_RIGHT_OF_WAY', '2': 6},
  ],
};

/// Descriptor for `WorkerPresenceDefinition`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List workerPresenceDefinitionDescriptor = $convert.base64Decode(
    'ChhXb3JrZXJQcmVzZW5jZURlZmluaXRpb24SOwo3V09SS0VSX1BSRVNFTkNFX0RFRklOSVRJT0'
    '5fV09SS0VSU19JTl9XT1JLX1pPTkVfV09SS0lORxAAEj8KO1dPUktFUl9QUkVTRU5DRV9ERUZJ'
    'TklUSU9OX1dPUktFUlNfSU5fV09SS19aT05FX05PVF9XT1JLSU5HEAESQwo/V09SS0VSX1BSRV'
    'NFTkNFX0RFRklOSVRJT05fTU9CSUxFX0VRVUlQTUVOVF9JTl9XT1JLX1pPTkVfTU9WSU5HEAIS'
    'RwpDV09SS0VSX1BSRVNFTkNFX0RFRklOSVRJT05fTU9CSUxFX0VRVUlQTUVOVF9JTl9XT1JLX1'
    'pPTkVfTk9UX01PVklORxADEjsKN1dPUktFUl9QUkVTRU5DRV9ERUZJTklUSU9OX0ZJWEVEX0VR'
    'VUlQTUVOVF9JTl9XT1JLX1pPTkUQBBI0CjBXT1JLRVJfUFJFU0VOQ0VfREVGSU5JVElPTl9IVU'
    '1BTlNfQkVISU5EX0JBUlJJRVIQBRI1CjFXT1JLRVJfUFJFU0VOQ0VfREVGSU5JVElPTl9IVU1B'
    'TlNfSU5fUklHSFRfT0ZfV0FZEAY=');

@$core.Deprecated('Use workerPresenceMethodDescriptor instead')
const WorkerPresenceMethod$json = {
  '1': 'WorkerPresenceMethod',
  '2': [
    {'1': 'WORKER_PRESENCE_METHOD_CAMERA_MONITORING', '2': 0},
    {'1': 'WORKER_PRESENCE_METHOD_', '2': 1},
    {'1': 'WORKER_PRESENCE_METHOD_CONES_PRESENT', '2': 2},
    {'1': 'WORKER_PRESENCE_METHOD_MAINTENANCE_VEHICLE_PRESENT', '2': 3},
    {'1': 'WORKER_PRESENCE_METHOD_WEARABLES_PRESENT', '2': 4},
    {'1': 'WORKER_PRESENCE_METHOD_MOBILE_DEVICE_PRESENT', '2': 5},
    {'1': 'WORKER_PRESENCE_METHOD_CHECK_IN_APP', '2': 6},
    {'1': 'WORKER_PRESENCE_METHOD_CHECK_IN_VERBAL', '2': 7},
    {'1': 'WORKER_PRESENCE_METHOD_SCHEDULED', '2': 8},
  ],
};

/// Descriptor for `WorkerPresenceMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List workerPresenceMethodDescriptor = $convert.base64Decode(
    'ChRXb3JrZXJQcmVzZW5jZU1ldGhvZBIsCihXT1JLRVJfUFJFU0VOQ0VfTUVUSE9EX0NBTUVSQV'
    '9NT05JVE9SSU5HEAASGwoXV09SS0VSX1BSRVNFTkNFX01FVEhPRF8QARIoCiRXT1JLRVJfUFJF'
    'U0VOQ0VfTUVUSE9EX0NPTkVTX1BSRVNFTlQQAhI2CjJXT1JLRVJfUFJFU0VOQ0VfTUVUSE9EX0'
    '1BSU5URU5BTkNFX1ZFSElDTEVfUFJFU0VOVBADEiwKKFdPUktFUl9QUkVTRU5DRV9NRVRIT0Rf'
    'V0VBUkFCTEVTX1BSRVNFTlQQBBIwCixXT1JLRVJfUFJFU0VOQ0VfTUVUSE9EX01PQklMRV9ERV'
    'ZJQ0VfUFJFU0VOVBAFEicKI1dPUktFUl9QUkVTRU5DRV9NRVRIT0RfQ0hFQ0tfSU5fQVBQEAYS'
    'KgomV09SS0VSX1BSRVNFTkNFX01FVEhPRF9DSEVDS19JTl9WRVJCQUwQBxIkCiBXT1JLRVJfUF'
    'JFU0VOQ0VfTUVUSE9EX1NDSEVEVUxFRBAI');

@$core.Deprecated('Use workerPresenceConfidenceDescriptor instead')
const WorkerPresenceConfidence$json = {
  '1': 'WorkerPresenceConfidence',
  '2': [
    {'1': 'WORKER_PRESENCE_CONFIDENCE_LOW', '2': 0},
    {'1': 'WORKER_PRESENCE_CONFIDENCE_MEDIUM', '2': 1},
    {'1': 'WORKER_PRESENCE_CONFIDENCE_HIGH', '2': 2},
  ],
};

/// Descriptor for `WorkerPresenceConfidence`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List workerPresenceConfidenceDescriptor = $convert.base64Decode(
    'ChhXb3JrZXJQcmVzZW5jZUNvbmZpZGVuY2USIgoeV09SS0VSX1BSRVNFTkNFX0NPTkZJREVOQ0'
    'VfTE9XEAASJQohV09SS0VSX1BSRVNFTkNFX0NPTkZJREVOQ0VfTUVESVVNEAESIwofV09SS0VS'
    'X1BSRVNFTkNFX0NPTkZJREVOQ0VfSElHSBAC');

@$core.Deprecated('Use roadwayDirectionDescriptor instead')
const RoadwayDirection$json = {
  '1': 'RoadwayDirection',
  '2': [
    {'1': 'ROADWAY_DIRECTION_NORTHBOUND', '2': 0},
    {'1': 'ROADWAY_DIRECTION_SOUTHBOUND', '2': 1},
    {'1': 'ROADWAY_DIRECTION_EASTBOUND', '2': 2},
    {'1': 'ROADWAY_DIRECTION_WESTBOUND', '2': 3},
    {'1': 'ROADWAY_DIRECTION_INNER_LOOP', '2': 4},
    {'1': 'ROADWAY_DIRECTION_OUTER_LOOP', '2': 5},
    {'1': 'ROADWAY_DIRECTION_UNDEFINED', '2': 6},
    {'1': 'ROADWAY_DIRECTION_UNKNOWN', '2': 7},
  ],
};

/// Descriptor for `RoadwayDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roadwayDirectionDescriptor = $convert.base64Decode(
    'ChBSb2Fkd2F5RGlyZWN0aW9uEiAKHFJPQURXQVlfRElSRUNUSU9OX05PUlRIQk9VTkQQABIgCh'
    'xST0FEV0FZX0RJUkVDVElPTl9TT1VUSEJPVU5EEAESHwobUk9BRFdBWV9ESVJFQ1RJT05fRUFT'
    'VEJPVU5EEAISHwobUk9BRFdBWV9ESVJFQ1RJT05fV0VTVEJPVU5EEAMSIAocUk9BRFdBWV9ESV'
    'JFQ1RJT05fSU5ORVJfTE9PUBAEEiAKHFJPQURXQVlfRElSRUNUSU9OX09VVEVSX0xPT1AQBRIf'
    'ChtST0FEV0FZX0RJUkVDVElPTl9VTkRFRklORUQQBhIdChlST0FEV0FZX0RJUkVDVElPTl9VTk'
    'tOT1dOEAc=');

@$core.Deprecated('Use restrictionDescriptor instead')
const Restriction$json = {
  '1': 'Restriction',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.datahub.v1.RestrictionType', '10': 'type'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
    {'1': 'unit', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.UnitOfMeasurement', '10': 'unit'},
  ],
};

/// Descriptor for `Restriction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restrictionDescriptor = $convert.base64Decode(
    'CgtSZXN0cmljdGlvbhIvCgR0eXBlGAEgASgOMhsuZGF0YWh1Yi52MS5SZXN0cmljdGlvblR5cG'
    'VSBHR5cGUSFAoFdmFsdWUYAiABKAJSBXZhbHVlEjEKBHVuaXQYAyABKA4yHS5kYXRhaHViLnYx'
    'LlVuaXRPZk1lYXN1cmVtZW50UgR1bml0');

@$core.Deprecated('Use laneDescriptor instead')
const Lane$json = {
  '1': 'Lane',
  '2': [
    {'1': 'lane_order', '3': 1, '4': 1, '5': 13, '10': 'laneOrder'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.LaneType', '10': 'type'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.LaneStatus', '10': 'status'},
    {'1': 'restrictions', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.Restriction', '10': 'restrictions'},
  ],
};

/// Descriptor for `Lane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List laneDescriptor = $convert.base64Decode(
    'CgRMYW5lEh0KCmxhbmVfb3JkZXIYASABKA1SCWxhbmVPcmRlchIoCgR0eXBlGAIgASgOMhQuZG'
    'F0YWh1Yi52MS5MYW5lVHlwZVIEdHlwZRIuCgZzdGF0dXMYAyABKA4yFi5kYXRhaHViLnYxLkxh'
    'bmVTdGF0dXNSBnN0YXR1cxI7CgxyZXN0cmljdGlvbnMYBCADKAsyFy5kYXRhaHViLnYxLlJlc3'
    'RyaWN0aW9uUgxyZXN0cmljdGlvbnM=');

@$core.Deprecated('Use typeOfWorkDescriptor instead')
const TypeOfWork$json = {
  '1': 'TypeOfWork',
  '2': [
    {'1': 'type_name', '3': 1, '4': 1, '5': 14, '6': '.datahub.v1.WorkTypeName', '10': 'typeName'},
    {'1': 'is_architectural_change', '3': 2, '4': 1, '5': 8, '10': 'isArchitecturalChange'},
  ],
};

/// Descriptor for `TypeOfWork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeOfWorkDescriptor = $convert.base64Decode(
    'CgpUeXBlT2ZXb3JrEjUKCXR5cGVfbmFtZRgBIAEoDjIYLmRhdGFodWIudjEuV29ya1R5cGVOYW'
    '1lUgh0eXBlTmFtZRI2Chdpc19hcmNoaXRlY3R1cmFsX2NoYW5nZRgCIAEoCFIVaXNBcmNoaXRl'
    'Y3R1cmFsQ2hhbmdl');

@$core.Deprecated('Use workerPresenceDescriptor instead')
const WorkerPresence$json = {
  '1': 'WorkerPresence',
  '2': [
    {'1': 'are_workers_present', '3': 1, '4': 1, '5': 8, '10': 'areWorkersPresent'},
    {'1': 'definition', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.WorkerPresenceDefinition', '10': 'definition'},
    {'1': 'method', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.WorkerPresenceMethod', '10': 'method'},
    {'1': 'worker_presence_last_confirmed_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'workerPresenceLastConfirmedDate'},
    {'1': 'confidence', '3': 5, '4': 1, '5': 14, '6': '.datahub.v1.WorkerPresenceConfidence', '10': 'confidence'},
  ],
};

/// Descriptor for `WorkerPresence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workerPresenceDescriptor = $convert.base64Decode(
    'Cg5Xb3JrZXJQcmVzZW5jZRIuChNhcmVfd29ya2Vyc19wcmVzZW50GAEgASgIUhFhcmVXb3JrZX'
    'JzUHJlc2VudBJECgpkZWZpbml0aW9uGAIgASgOMiQuZGF0YWh1Yi52MS5Xb3JrZXJQcmVzZW5j'
    'ZURlZmluaXRpb25SCmRlZmluaXRpb24SOAoGbWV0aG9kGAMgASgOMiAuZGF0YWh1Yi52MS5Xb3'
    'JrZXJQcmVzZW5jZU1ldGhvZFIGbWV0aG9kEmgKI3dvcmtlcl9wcmVzZW5jZV9sYXN0X2NvbmZp'
    'cm1lZF9kYXRlGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIfd29ya2VyUHJlc2'
    'VuY2VMYXN0Q29uZmlybWVkRGF0ZRJECgpjb25maWRlbmNlGAUgASgOMiQuZGF0YWh1Yi52MS5X'
    'b3JrZXJQcmVzZW5jZUNvbmZpZGVuY2VSCmNvbmZpZGVuY2U=');

