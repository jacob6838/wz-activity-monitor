//
//  Generated code. Do not modify.
//  source: field_device.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice$json = {
  '1': 'FieldDevice',
  '2': [
    {'1': 'arrow_board', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.ArrowBoard', '9': 0, '10': 'arrowBoard'},
    {'1': 'camera', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.Camera', '9': 0, '10': 'camera'},
    {'1': 'dynamic_message_sign', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.DynamicMessageSign', '9': 0, '10': 'dynamicMessageSign'},
    {'1': 'flashing_beacon', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FlashingBeacon', '9': 0, '10': 'flashingBeacon'},
    {'1': 'hybrid_sign', '3': 5, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.HybridSign', '9': 0, '10': 'hybridSign'},
    {'1': 'location_marker', '3': 6, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.LocationMarker', '9': 0, '10': 'locationMarker'},
    {'1': 'traffic_sensor', '3': 7, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.TrafficSensor', '9': 0, '10': 'trafficSensor'},
    {'1': 'traffic_signal', '3': 8, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.TrafficSignal', '9': 0, '10': 'trafficSignal'},
    {'1': 'project_id', '3': 9, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'work_zone_id', '3': 10, '4': 1, '5': 4, '10': 'workZoneId'},
    {'1': 'location_type', '3': 11, '4': 1, '5': 14, '6': '.datahub.v1.MarkedLocationType', '10': 'locationType'},
    {'1': 'geometry', '3': 12, '4': 3, '5': 11, '6': '.datahub.v1.PointGeometry', '10': 'geometry'},
    {'1': 'bbox', '3': 13, '4': 3, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '3': [FieldDevice_FieldDeviceCoreDetails$json, FieldDevice_ArrowBoard$json, FieldDevice_Camera$json, FieldDevice_DynamicMessageSign$json, FieldDevice_FlashingBeacon$json, FieldDevice_HybridSign$json, FieldDevice_LocationMarker$json, FieldDevice_TrafficSensor$json, FieldDevice_TrafficSignal$json],
  '4': [FieldDevice_FieldDeviceStatus$json],
  '8': [
    {'1': 'Device'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_FieldDeviceCoreDetails$json = {
  '1': 'FieldDeviceCoreDetails',
  '2': [
    {'1': 'device_status', '3': 1, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.FieldDeviceStatus', '10': 'deviceStatus'},
    {'1': 'has_automatic_location', '3': 2, '4': 1, '5': 8, '10': 'hasAutomaticLocation'},
    {'1': 'road_direction', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.RoadwayDirection', '9': 0, '10': 'roadDirection', '17': true},
    {'1': 'road_names', '3': 4, '4': 3, '5': 9, '10': 'roadNames'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'status_messages', '3': 7, '4': 3, '5': 9, '10': 'statusMessages'},
    {'1': 'is_moving', '3': 8, '4': 1, '5': 8, '10': 'isMoving'},
    {'1': 'milepost', '3': 12, '4': 1, '5': 1, '9': 2, '10': 'milepost', '17': true},
    {'1': 'make', '3': 13, '4': 1, '5': 9, '10': 'make'},
    {'1': 'model', '3': 14, '4': 1, '5': 9, '10': 'model'},
    {'1': 'serial_number', '3': 15, '4': 1, '5': 9, '10': 'serialNumber'},
    {'1': 'firmware_version', '3': 16, '4': 1, '5': 9, '9': 3, '10': 'firmwareVersion', '17': true},
    {'1': 'velocity_kph', '3': 17, '4': 1, '5': 1, '9': 4, '10': 'velocityKph', '17': true},
  ],
  '8': [
    {'1': '_road_direction'},
    {'1': '_description'},
    {'1': '_milepost'},
    {'1': '_firmware_version'},
    {'1': '_velocity_kph'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_ArrowBoard$json = {
  '1': 'ArrowBoard',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'pattern', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.ArrowBoard.ArrowBoardPattern', '10': 'pattern'},
    {'1': 'is_in_transport_position', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'isInTransportPosition', '17': true},
  ],
  '4': [FieldDevice_ArrowBoard_ArrowBoardPattern$json],
  '8': [
    {'1': '_is_in_transport_position'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_ArrowBoard_ArrowBoardPattern$json = {
  '1': 'ArrowBoardPattern',
  '2': [
    {'1': 'ARROW_BOARD_PATTERN_BLANK', '2': 0},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_ARROW_STATIC', '2': 1},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_ARROW_FLASHING', '2': 2},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_ARROW_SEQUENTIAL', '2': 3},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_CHEVRON_STATIC', '2': 4},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_CHEVRON_FLASHING', '2': 5},
    {'1': 'ARROW_BOARD_PATTERN_RIGHT_CHEVRON_SEQUENTIAL', '2': 6},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_ARROW_STATIC', '2': 7},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_ARROW_FLASHING', '2': 8},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_ARROW_SEQUENTIAL', '2': 9},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_CHEVRON_STATIC', '2': 10},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_CHEVRON_FLASHING', '2': 11},
    {'1': 'ARROW_BOARD_PATTERN_LEFT_CHEVRON_SEQUENTIAL', '2': 12},
    {'1': 'ARROW_BOARD_PATTERN_BIDIRECTIONAL_ARROW_STATIC', '2': 13},
    {'1': 'ARROW_BOARD_PATTERN_BIDIRECTIONAL_ARROW_FLASHING', '2': 14},
    {'1': 'ARROW_BOARD_PATTERN_LINE_FLASHING', '2': 15},
    {'1': 'ARROW_BOARD_PATTERN_DIAMONDS_ALTERNATING', '2': 16},
    {'1': 'ARROW_BOARD_PATTERN_FOUR_CORNERS_FLASHING', '2': 17},
    {'1': 'ARROW_BOARD_PATTERN_UNKNOWN', '2': 18},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_Camera$json = {
  '1': 'Camera',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'image_url', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'imageUrl', '17': true},
    {'1': 'image_timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'imageTimestamp', '17': true},
  ],
  '8': [
    {'1': '_image_url'},
    {'1': '_image_timestamp'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_DynamicMessageSign$json = {
  '1': 'DynamicMessageSign',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'message_multi_string', '3': 2, '4': 1, '5': 9, '10': 'messageMultiString'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_FlashingBeacon$json = {
  '1': 'FlashingBeacon',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'function', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.FlashingBeacon.FlashingBeaconFunction', '10': 'function'},
    {'1': 'is_flashing', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'isFlashing', '17': true},
    {'1': 'sign_text', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'signText', '17': true},
  ],
  '4': [FieldDevice_FlashingBeacon_FlashingBeaconFunction$json],
  '8': [
    {'1': '_is_flashing'},
    {'1': '_sign_text'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_FlashingBeacon_FlashingBeaconFunction$json = {
  '1': 'FlashingBeaconFunction',
  '2': [
    {'1': 'FLASHING_BEACON_FUNCTION_VEHICLE_ENTERING', '2': 0},
    {'1': 'FLASHING_BEACON_FUNCTION_QUEUE_WARNING', '2': 1},
    {'1': 'FLASHING_BEACON_FUNCTION_REDUCED_SPEED', '2': 2},
    {'1': 'FLASHING_BEACON_FUNCTION_WORKERS_PRESENT', '2': 3},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_HybridSign$json = {
  '1': 'HybridSign',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'dynamic_message_function', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.HybridSign.HybridSignDynamicMessageFunction', '10': 'dynamicMessageFunction'},
    {'1': 'dynamic_message_text', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'dynamicMessageText', '17': true},
    {'1': 'static_sign_text', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'staticSignText', '17': true},
  ],
  '4': [FieldDevice_HybridSign_HybridSignDynamicMessageFunction$json],
  '8': [
    {'1': '_dynamic_message_text'},
    {'1': '_static_sign_text'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_HybridSign_HybridSignDynamicMessageFunction$json = {
  '1': 'HybridSignDynamicMessageFunction',
  '2': [
    {'1': 'HYBRID_SIGN_DYNAMIC_MESSAGE_FUNCTION_SPEED_LIMIT', '2': 0},
    {'1': 'HYBRID_SIGN_DYNAMIC_MESSAGE_FUNCTION_TRAVEL_TIME', '2': 1},
    {'1': 'HYBRID_SIGN_DYNAMIC_MESSAGE_FUNCTION_OTHER', '2': 2},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_LocationMarker$json = {
  '1': 'LocationMarker',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_TrafficSensor$json = {
  '1': 'TrafficSensor',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'collection_interval_start_date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'collectionIntervalStartDate'},
    {'1': 'collection_interval_end_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'collectionIntervalEndDate'},
    {'1': 'average_speed_kph', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'averageSpeedKph', '17': true},
    {'1': 'volume_kph', '3': 5, '4': 1, '5': 1, '9': 1, '10': 'volumeKph', '17': true},
    {'1': 'occupancy_percent', '3': 6, '4': 1, '5': 1, '9': 2, '10': 'occupancyPercent', '17': true},
    {'1': 'lane_data', '3': 7, '4': 3, '5': 11, '6': '.datahub.v1.FieldDevice.TrafficSensor.TrafficSensorLaneData', '10': 'laneData'},
  ],
  '3': [FieldDevice_TrafficSensor_TrafficSensorLaneData$json],
  '8': [
    {'1': '_average_speed_kph'},
    {'1': '_volume_kph'},
    {'1': '_occupancy_percent'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_TrafficSensor_TrafficSensorLaneData$json = {
  '1': 'TrafficSensorLaneData',
  '2': [
    {'1': 'lane_order', '3': 1, '4': 1, '5': 13, '10': 'laneOrder'},
    {'1': 'work_zone_id', '3': 2, '4': 1, '5': 4, '10': 'workZoneId'},
    {'1': 'average_speed_kph', '3': 3, '4': 1, '5': 1, '10': 'averageSpeedKph'},
    {'1': 'volume_kph', '3': 4, '4': 1, '5': 1, '10': 'volumeKph'},
    {'1': 'occupancy_percent', '3': 5, '4': 1, '5': 1, '10': 'occupancyPercent'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_TrafficSignal$json = {
  '1': 'TrafficSignal',
  '2': [
    {'1': 'core_details', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice.FieldDeviceCoreDetails', '10': 'coreDetails'},
    {'1': 'mode', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.TrafficSignal.TrafficSignalMode', '10': 'mode'},
  ],
  '4': [FieldDevice_TrafficSignal_TrafficSignalMode$json],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_TrafficSignal_TrafficSignalMode$json = {
  '1': 'TrafficSignalMode',
  '2': [
    {'1': 'TRAFFIC_SIGNAL_MODE_BLANK', '2': 0},
    {'1': 'TRAFFIC_SIGNAL_MODE_FLASHING_RED', '2': 1},
    {'1': 'TRAFFIC_SIGNAL_MODE_FLASHING_YELLOW', '2': 2},
    {'1': 'TRAFFIC_SIGNAL_MODE_FULLY_ACTUATED', '2': 3},
    {'1': 'TRAFFIC_SIGNAL_MODE_MANUAL', '2': 4},
    {'1': 'TRAFFIC_SIGNAL_MODE_PRE_TIMED', '2': 5},
    {'1': 'TRAFFIC_SIGNAL_MODE_SEMI_ACTUATED', '2': 6},
    {'1': 'TRAFFIC_SIGNAL_MODE_UNKNOWN', '2': 7},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_FieldDeviceStatus$json = {
  '1': 'FieldDeviceStatus',
  '2': [
    {'1': 'FIELD_DEVICE_STATUS_OK', '2': 0},
    {'1': 'FIELD_DEVICE_STATUS_WARNING', '2': 1},
    {'1': 'FIELD_DEVICE_STATUS_ERROR', '2': 2},
    {'1': 'FIELD_DEVICE_STATUS_UNKNOWN', '2': 3},
  ],
};

/// Descriptor for `FieldDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceDescriptor = $convert.base64Decode(
    'CgtGaWVsZERldmljZRJFCgthcnJvd19ib2FyZBgBIAEoCzIiLmRhdGFodWIudjEuRmllbGREZX'
    'ZpY2UuQXJyb3dCb2FyZEgAUgphcnJvd0JvYXJkEjgKBmNhbWVyYRgCIAEoCzIeLmRhdGFodWIu'
    'djEuRmllbGREZXZpY2UuQ2FtZXJhSABSBmNhbWVyYRJeChRkeW5hbWljX21lc3NhZ2Vfc2lnbh'
    'gDIAEoCzIqLmRhdGFodWIudjEuRmllbGREZXZpY2UuRHluYW1pY01lc3NhZ2VTaWduSABSEmR5'
    'bmFtaWNNZXNzYWdlU2lnbhJRCg9mbGFzaGluZ19iZWFjb24YBCABKAsyJi5kYXRhaHViLnYxLk'
    'ZpZWxkRGV2aWNlLkZsYXNoaW5nQmVhY29uSABSDmZsYXNoaW5nQmVhY29uEkUKC2h5YnJpZF9z'
    'aWduGAUgASgLMiIuZGF0YWh1Yi52MS5GaWVsZERldmljZS5IeWJyaWRTaWduSABSCmh5YnJpZF'
    'NpZ24SUQoPbG9jYXRpb25fbWFya2VyGAYgASgLMiYuZGF0YWh1Yi52MS5GaWVsZERldmljZS5M'
    'b2NhdGlvbk1hcmtlckgAUg5sb2NhdGlvbk1hcmtlchJOCg50cmFmZmljX3NlbnNvchgHIAEoCz'
    'IlLmRhdGFodWIudjEuRmllbGREZXZpY2UuVHJhZmZpY1NlbnNvckgAUg10cmFmZmljU2Vuc29y'
    'Ek4KDnRyYWZmaWNfc2lnbmFsGAggASgLMiUuZGF0YWh1Yi52MS5GaWVsZERldmljZS5UcmFmZm'
    'ljU2lnbmFsSABSDXRyYWZmaWNTaWduYWwSHQoKcHJvamVjdF9pZBgJIAEoBFIJcHJvamVjdElk'
    'EiAKDHdvcmtfem9uZV9pZBgKIAEoBFIKd29ya1pvbmVJZBJDCg1sb2NhdGlvbl90eXBlGAsgAS'
    'gOMh4uZGF0YWh1Yi52MS5NYXJrZWRMb2NhdGlvblR5cGVSDGxvY2F0aW9uVHlwZRI1CghnZW9t'
    'ZXRyeRgMIAMoCzIZLmRhdGFodWIudjEuUG9pbnRHZW9tZXRyeVIIZ2VvbWV0cnkSKwoEYmJveB'
    'gNIAMoCzIXLmRhdGFodWIudjEuQm91bmRpbmdCb3hSBGJib3gapgUKFkZpZWxkRGV2aWNlQ29y'
    'ZURldGFpbHMSTgoNZGV2aWNlX3N0YXR1cxgBIAEoDjIpLmRhdGFodWIudjEuRmllbGREZXZpY2'
    'UuRmllbGREZXZpY2VTdGF0dXNSDGRldmljZVN0YXR1cxI0ChZoYXNfYXV0b21hdGljX2xvY2F0'
    'aW9uGAIgASgIUhRoYXNBdXRvbWF0aWNMb2NhdGlvbhJICg5yb2FkX2RpcmVjdGlvbhgDIAEoDj'
    'IcLmRhdGFodWIudjEuUm9hZHdheURpcmVjdGlvbkgAUg1yb2FkRGlyZWN0aW9uiAEBEh0KCnJv'
    'YWRfbmFtZXMYBCADKAlSCXJvYWROYW1lcxISCgRuYW1lGAUgASgJUgRuYW1lEiUKC2Rlc2NyaX'
    'B0aW9uGAYgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEicKD3N0YXR1c19tZXNzYWdlcxgHIAMoCVIO'
    'c3RhdHVzTWVzc2FnZXMSGwoJaXNfbW92aW5nGAggASgIUghpc01vdmluZxIfCghtaWxlcG9zdB'
    'gMIAEoAUgCUghtaWxlcG9zdIgBARISCgRtYWtlGA0gASgJUgRtYWtlEhQKBW1vZGVsGA4gASgJ'
    'UgVtb2RlbBIjCg1zZXJpYWxfbnVtYmVyGA8gASgJUgxzZXJpYWxOdW1iZXISLgoQZmlybXdhcm'
    'VfdmVyc2lvbhgQIAEoCUgDUg9maXJtd2FyZVZlcnNpb26IAQESJgoMdmVsb2NpdHlfa3BoGBEg'
    'ASgBSARSC3ZlbG9jaXR5S3BoiAEBQhEKD19yb2FkX2RpcmVjdGlvbkIOCgxfZGVzY3JpcHRpb2'
    '5CCwoJX21pbGVwb3N0QhMKEV9maXJtd2FyZV92ZXJzaW9uQg8KDV92ZWxvY2l0eV9rcGga/AgK'
    'CkFycm93Qm9hcmQSUQoMY29yZV9kZXRhaWxzGAEgASgLMi4uZGF0YWh1Yi52MS5GaWVsZERldm'
    'ljZS5GaWVsZERldmljZUNvcmVEZXRhaWxzUgtjb3JlRGV0YWlscxJOCgdwYXR0ZXJuGAIgASgO'
    'MjQuZGF0YWh1Yi52MS5GaWVsZERldmljZS5BcnJvd0JvYXJkLkFycm93Qm9hcmRQYXR0ZXJuUg'
    'dwYXR0ZXJuEjwKGGlzX2luX3RyYW5zcG9ydF9wb3NpdGlvbhgDIAEoCEgAUhVpc0luVHJhbnNw'
    'b3J0UG9zaXRpb26IAQEi7wYKEUFycm93Qm9hcmRQYXR0ZXJuEh0KGUFSUk9XX0JPQVJEX1BBVF'
    'RFUk5fQkxBTksQABIqCiZBUlJPV19CT0FSRF9QQVRURVJOX1JJR0hUX0FSUk9XX1NUQVRJQxAB'
    'EiwKKEFSUk9XX0JPQVJEX1BBVFRFUk5fUklHSFRfQVJST1dfRkxBU0hJTkcQAhIuCipBUlJPV1'
    '9CT0FSRF9QQVRURVJOX1JJR0hUX0FSUk9XX1NFUVVFTlRJQUwQAxIsCihBUlJPV19CT0FSRF9Q'
    'QVRURVJOX1JJR0hUX0NIRVZST05fU1RBVElDEAQSLgoqQVJST1dfQk9BUkRfUEFUVEVSTl9SSU'
    'dIVF9DSEVWUk9OX0ZMQVNISU5HEAUSMAosQVJST1dfQk9BUkRfUEFUVEVSTl9SSUdIVF9DSEVW'
    'Uk9OX1NFUVVFTlRJQUwQBhIpCiVBUlJPV19CT0FSRF9QQVRURVJOX0xFRlRfQVJST1dfU1RBVE'
    'lDEAcSKwonQVJST1dfQk9BUkRfUEFUVEVSTl9MRUZUX0FSUk9XX0ZMQVNISU5HEAgSLQopQVJS'
    'T1dfQk9BUkRfUEFUVEVSTl9MRUZUX0FSUk9XX1NFUVVFTlRJQUwQCRIrCidBUlJPV19CT0FSRF'
    '9QQVRURVJOX0xFRlRfQ0hFVlJPTl9TVEFUSUMQChItCilBUlJPV19CT0FSRF9QQVRURVJOX0xF'
    'RlRfQ0hFVlJPTl9GTEFTSElORxALEi8KK0FSUk9XX0JPQVJEX1BBVFRFUk5fTEVGVF9DSEVWUk'
    '9OX1NFUVVFTlRJQUwQDBIyCi5BUlJPV19CT0FSRF9QQVRURVJOX0JJRElSRUNUSU9OQUxfQVJS'
    'T1dfU1RBVElDEA0SNAowQVJST1dfQk9BUkRfUEFUVEVSTl9CSURJUkVDVElPTkFMX0FSUk9XX0'
    'ZMQVNISU5HEA4SJQohQVJST1dfQk9BUkRfUEFUVEVSTl9MSU5FX0ZMQVNISU5HEA8SLAooQVJS'
    'T1dfQk9BUkRfUEFUVEVSTl9ESUFNT05EU19BTFRFUk5BVElORxAQEi0KKUFSUk9XX0JPQVJEX1'
    'BBVFRFUk5fRk9VUl9DT1JORVJTX0ZMQVNISU5HEBESHwobQVJST1dfQk9BUkRfUEFUVEVSTl9V'
    'TktOT1dOEBJCGwoZX2lzX2luX3RyYW5zcG9ydF9wb3NpdGlvbhrpAQoGQ2FtZXJhElEKDGNvcm'
    'VfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZpY2VDb3Jl'
    'RGV0YWlsc1ILY29yZURldGFpbHMSIAoJaW1hZ2VfdXJsGAIgASgJSABSCGltYWdlVXJsiAEBEk'
    'gKD2ltYWdlX3RpbWVzdGFtcBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIO'
    'aW1hZ2VUaW1lc3RhbXCIAQFCDAoKX2ltYWdlX3VybEISChBfaW1hZ2VfdGltZXN0YW1wGpkBCh'
    'JEeW5hbWljTWVzc2FnZVNpZ24SUQoMY29yZV9kZXRhaWxzGAEgASgLMi4uZGF0YWh1Yi52MS5G'
    'aWVsZERldmljZS5GaWVsZERldmljZUNvcmVEZXRhaWxzUgtjb3JlRGV0YWlscxIwChRtZXNzYW'
    'dlX211bHRpX3N0cmluZxgCIAEoCVISbWVzc2FnZU11bHRpU3RyaW5nGvQDCg5GbGFzaGluZ0Jl'
    'YWNvbhJRCgxjb3JlX2RldGFpbHMYASABKAsyLi5kYXRhaHViLnYxLkZpZWxkRGV2aWNlLkZpZW'
    'xkRGV2aWNlQ29yZURldGFpbHNSC2NvcmVEZXRhaWxzElkKCGZ1bmN0aW9uGAIgASgOMj0uZGF0'
    'YWh1Yi52MS5GaWVsZERldmljZS5GbGFzaGluZ0JlYWNvbi5GbGFzaGluZ0JlYWNvbkZ1bmN0aW'
    '9uUghmdW5jdGlvbhIkCgtpc19mbGFzaGluZxgDIAEoCEgAUgppc0ZsYXNoaW5niAEBEiAKCXNp'
    'Z25fdGV4dBgEIAEoCUgBUghzaWduVGV4dIgBASLNAQoWRmxhc2hpbmdCZWFjb25GdW5jdGlvbh'
    'ItCilGTEFTSElOR19CRUFDT05fRlVOQ1RJT05fVkVISUNMRV9FTlRFUklORxAAEioKJkZMQVNI'
    'SU5HX0JFQUNPTl9GVU5DVElPTl9RVUVVRV9XQVJOSU5HEAESKgomRkxBU0hJTkdfQkVBQ09OX0'
    'ZVTkNUSU9OX1JFRFVDRURfU1BFRUQQAhIsCihGTEFTSElOR19CRUFDT05fRlVOQ1RJT05fV09S'
    'S0VSU19QUkVTRU5UEANCDgoMX2lzX2ZsYXNoaW5nQgwKCl9zaWduX3RleHQaswQKCkh5YnJpZF'
    'NpZ24SUQoMY29yZV9kZXRhaWxzGAEgASgLMi4uZGF0YWh1Yi52MS5GaWVsZERldmljZS5GaWVs'
    'ZERldmljZUNvcmVEZXRhaWxzUgtjb3JlRGV0YWlscxJ9ChhkeW5hbWljX21lc3NhZ2VfZnVuY3'
    'Rpb24YAiABKA4yQy5kYXRhaHViLnYxLkZpZWxkRGV2aWNlLkh5YnJpZFNpZ24uSHlicmlkU2ln'
    'bkR5bmFtaWNNZXNzYWdlRnVuY3Rpb25SFmR5bmFtaWNNZXNzYWdlRnVuY3Rpb24SNQoUZHluYW'
    '1pY19tZXNzYWdlX3RleHQYAyABKAlIAFISZHluYW1pY01lc3NhZ2VUZXh0iAEBEi0KEHN0YXRp'
    'Y19zaWduX3RleHQYBCABKAlIAVIOc3RhdGljU2lnblRleHSIAQEivgEKIEh5YnJpZFNpZ25EeW'
    '5hbWljTWVzc2FnZUZ1bmN0aW9uEjQKMEhZQlJJRF9TSUdOX0RZTkFNSUNfTUVTU0FHRV9GVU5D'
    'VElPTl9TUEVFRF9MSU1JVBAAEjQKMEhZQlJJRF9TSUdOX0RZTkFNSUNfTUVTU0FHRV9GVU5DVE'
    'lPTl9UUkFWRUxfVElNRRABEi4KKkhZQlJJRF9TSUdOX0RZTkFNSUNfTUVTU0FHRV9GVU5DVElP'
    'Tl9PVEhFUhACQhcKFV9keW5hbWljX21lc3NhZ2VfdGV4dEITChFfc3RhdGljX3NpZ25fdGV4dB'
    'pjCg5Mb2NhdGlvbk1hcmtlchJRCgxjb3JlX2RldGFpbHMYASABKAsyLi5kYXRhaHViLnYxLkZp'
    'ZWxkRGV2aWNlLkZpZWxkRGV2aWNlQ29yZURldGFpbHNSC2NvcmVEZXRhaWxzGo8GCg1UcmFmZm'
    'ljU2Vuc29yElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEuRmllbGREZXZpY2Uu'
    'RmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMSXwoeY29sbGVjdGlvbl9pbnRlcn'
    'ZhbF9zdGFydF9kYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIbY29sbGVj'
    'dGlvbkludGVydmFsU3RhcnREYXRlElsKHGNvbGxlY3Rpb25faW50ZXJ2YWxfZW5kX2RhdGUYAy'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUhljb2xsZWN0aW9uSW50ZXJ2YWxFbmRE'
    'YXRlEi8KEWF2ZXJhZ2Vfc3BlZWRfa3BoGAQgASgBSABSD2F2ZXJhZ2VTcGVlZEtwaIgBARIiCg'
    'p2b2x1bWVfa3BoGAUgASgBSAFSCXZvbHVtZUtwaIgBARIwChFvY2N1cGFuY3lfcGVyY2VudBgG'
    'IAEoAUgCUhBvY2N1cGFuY3lQZXJjZW50iAEBElgKCWxhbmVfZGF0YRgHIAMoCzI7LmRhdGFodW'
    'IudjEuRmllbGREZXZpY2UuVHJhZmZpY1NlbnNvci5UcmFmZmljU2Vuc29yTGFuZURhdGFSCGxh'
    'bmVEYXRhGtABChVUcmFmZmljU2Vuc29yTGFuZURhdGESHQoKbGFuZV9vcmRlchgBIAEoDVIJbG'
    'FuZU9yZGVyEiAKDHdvcmtfem9uZV9pZBgCIAEoBFIKd29ya1pvbmVJZBIqChFhdmVyYWdlX3Nw'
    'ZWVkX2twaBgDIAEoAVIPYXZlcmFnZVNwZWVkS3BoEh0KCnZvbHVtZV9rcGgYBCABKAFSCXZvbH'
    'VtZUtwaBIrChFvY2N1cGFuY3lfcGVyY2VudBgFIAEoAVIQb2NjdXBhbmN5UGVyY2VudEIUChJf'
    'YXZlcmFnZV9zcGVlZF9rcGhCDQoLX3ZvbHVtZV9rcGhCFAoSX29jY3VwYW5jeV9wZXJjZW50Gu'
    'YDCg1UcmFmZmljU2lnbmFsElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEuRmll'
    'bGREZXZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMSSwoEbW9kZRgCIA'
    'EoDjI3LmRhdGFodWIudjEuRmllbGREZXZpY2UuVHJhZmZpY1NpZ25hbC5UcmFmZmljU2lnbmFs'
    'TW9kZVIEbW9kZSK0AgoRVHJhZmZpY1NpZ25hbE1vZGUSHQoZVFJBRkZJQ19TSUdOQUxfTU9ERV'
    '9CTEFOSxAAEiQKIFRSQUZGSUNfU0lHTkFMX01PREVfRkxBU0hJTkdfUkVEEAESJwojVFJBRkZJ'
    'Q19TSUdOQUxfTU9ERV9GTEFTSElOR19ZRUxMT1cQAhImCiJUUkFGRklDX1NJR05BTF9NT0RFX0'
    'ZVTExZX0FDVFVBVEVEEAMSHgoaVFJBRkZJQ19TSUdOQUxfTU9ERV9NQU5VQUwQBBIhCh1UUkFG'
    'RklDX1NJR05BTF9NT0RFX1BSRV9USU1FRBAFEiUKIVRSQUZGSUNfU0lHTkFMX01PREVfU0VNSV'
    '9BQ1RVQVRFRBAGEh8KG1RSQUZGSUNfU0lHTkFMX01PREVfVU5LTk9XThAHIpABChFGaWVsZERl'
    'dmljZVN0YXR1cxIaChZGSUVMRF9ERVZJQ0VfU1RBVFVTX09LEAASHwobRklFTERfREVWSUNFX1'
    'NUQVRVU19XQVJOSU5HEAESHQoZRklFTERfREVWSUNFX1NUQVRVU19FUlJPUhACEh8KG0ZJRUxE'
    'X0RFVklDRV9TVEFUVVNfVU5LTk9XThADQggKBkRldmljZQ==');

