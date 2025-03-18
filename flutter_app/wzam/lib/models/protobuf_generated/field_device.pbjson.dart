//
//  Generated code. Do not modify.
//  source: field_device.proto
//
// @dart = 2.12

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
    {'1': 'road_section_id', '3': 10, '4': 1, '5': 4, '10': 'roadSectionId'},
    {'1': 'activity_area_id', '3': 11, '4': 1, '5': 4, '10': 'activityAreaId'},
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
    {'1': 'name', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'name', '17': true},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'description', '17': true},
    {'1': 'status_messages', '3': 7, '4': 3, '5': 9, '10': 'statusMessages'},
    {'1': 'is_moving', '3': 8, '4': 1, '5': 8, '9': 3, '10': 'isMoving', '17': true},
    {'1': 'milepost', '3': 12, '4': 1, '5': 13, '9': 4, '10': 'milepost', '17': true},
    {'1': 'make', '3': 13, '4': 1, '5': 9, '9': 5, '10': 'make', '17': true},
    {'1': 'model', '3': 14, '4': 1, '5': 9, '9': 6, '10': 'model', '17': true},
    {'1': 'serial_number', '3': 15, '4': 1, '5': 9, '9': 7, '10': 'serialNumber', '17': true},
    {'1': 'firmware_version', '3': 16, '4': 1, '5': 9, '9': 8, '10': 'firmwareVersion', '17': true},
    {'1': 'velocity_kph', '3': 17, '4': 1, '5': 1, '9': 9, '10': 'velocityKph', '17': true},
  ],
  '8': [
    {'1': '_road_direction'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_moving'},
    {'1': '_milepost'},
    {'1': '_make'},
    {'1': '_model'},
    {'1': '_serial_number'},
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
    {'1': 'marked_locations', '3': 2, '4': 3, '5': 11, '6': '.datahub.v1.FieldDevice.LocationMarker.MarkedLocation', '10': 'markedLocations'},
  ],
  '3': [FieldDevice_LocationMarker_MarkedLocation$json],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_LocationMarker_MarkedLocation$json = {
  '1': 'MarkedLocation',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.datahub.v1.FieldDevice.LocationMarker.MarkedLocation.MarkedLocationType', '10': 'type'},
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'roadSectionId'},
    {'1': 'activity_area_id', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'activityAreaId'},
  ],
  '4': [FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType$json],
  '8': [
    {'1': 'EventId'},
  ],
};

@$core.Deprecated('Use fieldDeviceDescriptor instead')
const FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType$json = {
  '1': 'MarkedLocationType',
  '2': [
    {'1': 'MARKED_LOCATION_TYPE_AFAD', '2': 0},
    {'1': 'MARKED_LOCATION_TYPE_DELINEATOR', '2': 1},
    {'1': 'MARKED_LOCATION_TYPE_FLAGGER', '2': 2},
    {'1': 'MARKED_LOCATION_TYPE_LANE_SHIFT', '2': 3},
    {'1': 'MARKED_LOCATION_TYPE_LANE_CLOSURE', '2': 4},
    {'1': 'MARKED_LOCATION_TYPE_PERSONAL_DEVICE', '2': 5},
    {'1': 'MARKED_LOCATION_TYPE_RAMP_CLOSURE', '2': 6},
    {'1': 'MARKED_LOCATION_TYPE_ROAD_CLOSURE', '2': 7},
    {'1': 'MARKED_LOCATION_TYPE_ROAD_EVENT_START', '2': 8},
    {'1': 'MARKED_LOCATION_TYPE_ROAD_EVENT_END', '2': 9},
    {'1': 'MARKED_LOCATION_TYPE_WORK_TRUCK_WITH_LIGHTS_FLASHING', '2': 10},
    {'1': 'MARKED_LOCATION_TYPE_WORK_ZONE_START', '2': 11},
    {'1': 'MARKED_LOCATION_TYPE_WORK_ZONE_END', '2': 12},
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
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'roadSectionId'},
    {'1': 'activity_area_id', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'activityAreaId'},
    {'1': 'average_speed_kph', '3': 4, '4': 1, '5': 1, '10': 'averageSpeedKph'},
    {'1': 'volume_kph', '3': 5, '4': 1, '5': 1, '10': 'volumeKph'},
    {'1': 'occupancy_percent', '3': 6, '4': 1, '5': 1, '10': 'occupancyPercent'},
  ],
  '8': [
    {'1': 'EventId'},
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
    'EiYKD3JvYWRfc2VjdGlvbl9pZBgKIAEoBFINcm9hZFNlY3Rpb25JZBIoChBhY3Rpdml0eV9hcm'
    'VhX2lkGAsgASgEUg5hY3Rpdml0eUFyZWFJZBI1CghnZW9tZXRyeRgMIAMoCzIZLmRhdGFodWIu'
    'djEuUG9pbnRHZW9tZXRyeVIIZ2VvbWV0cnkSKwoEYmJveBgNIAMoCzIXLmRhdGFodWIudjEuQm'
    '91bmRpbmdCb3hSBGJib3ga+wUKFkZpZWxkRGV2aWNlQ29yZURldGFpbHMSTgoNZGV2aWNlX3N0'
    'YXR1cxgBIAEoDjIpLmRhdGFodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZpY2VTdGF0dXNSDG'
    'RldmljZVN0YXR1cxI0ChZoYXNfYXV0b21hdGljX2xvY2F0aW9uGAIgASgIUhRoYXNBdXRvbWF0'
    'aWNMb2NhdGlvbhJICg5yb2FkX2RpcmVjdGlvbhgDIAEoDjIcLmRhdGFodWIudjEuUm9hZHdheU'
    'RpcmVjdGlvbkgAUg1yb2FkRGlyZWN0aW9uiAEBEh0KCnJvYWRfbmFtZXMYBCADKAlSCXJvYWRO'
    'YW1lcxIXCgRuYW1lGAUgASgJSAFSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24YBiABKAlIAlILZG'
    'VzY3JpcHRpb26IAQESJwoPc3RhdHVzX21lc3NhZ2VzGAcgAygJUg5zdGF0dXNNZXNzYWdlcxIg'
    'Cglpc19tb3ZpbmcYCCABKAhIA1IIaXNNb3ZpbmeIAQESHwoIbWlsZXBvc3QYDCABKA1IBFIIbW'
    'lsZXBvc3SIAQESFwoEbWFrZRgNIAEoCUgFUgRtYWtliAEBEhkKBW1vZGVsGA4gASgJSAZSBW1v'
    'ZGVsiAEBEigKDXNlcmlhbF9udW1iZXIYDyABKAlIB1IMc2VyaWFsTnVtYmVyiAEBEi4KEGZpcm'
    '13YXJlX3ZlcnNpb24YECABKAlICFIPZmlybXdhcmVWZXJzaW9uiAEBEiYKDHZlbG9jaXR5X2tw'
    'aBgRIAEoAUgJUgt2ZWxvY2l0eUtwaIgBAUIRCg9fcm9hZF9kaXJlY3Rpb25CBwoFX25hbWVCDg'
    'oMX2Rlc2NyaXB0aW9uQgwKCl9pc19tb3ZpbmdCCwoJX21pbGVwb3N0QgcKBV9tYWtlQggKBl9t'
    'b2RlbEIQCg5fc2VyaWFsX251bWJlckITChFfZmlybXdhcmVfdmVyc2lvbkIPCg1fdmVsb2NpdH'
    'lfa3BoGvwICgpBcnJvd0JvYXJkElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEu'
    'RmllbGREZXZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMSTgoHcGF0dG'
    'VybhgCIAEoDjI0LmRhdGFodWIudjEuRmllbGREZXZpY2UuQXJyb3dCb2FyZC5BcnJvd0JvYXJk'
    'UGF0dGVyblIHcGF0dGVybhI8Chhpc19pbl90cmFuc3BvcnRfcG9zaXRpb24YAyABKAhIAFIVaX'
    'NJblRyYW5zcG9ydFBvc2l0aW9uiAEBIu8GChFBcnJvd0JvYXJkUGF0dGVybhIdChlBUlJPV19C'
    'T0FSRF9QQVRURVJOX0JMQU5LEAASKgomQVJST1dfQk9BUkRfUEFUVEVSTl9SSUdIVF9BUlJPV1'
    '9TVEFUSUMQARIsCihBUlJPV19CT0FSRF9QQVRURVJOX1JJR0hUX0FSUk9XX0ZMQVNISU5HEAIS'
    'LgoqQVJST1dfQk9BUkRfUEFUVEVSTl9SSUdIVF9BUlJPV19TRVFVRU5USUFMEAMSLAooQVJST1'
    'dfQk9BUkRfUEFUVEVSTl9SSUdIVF9DSEVWUk9OX1NUQVRJQxAEEi4KKkFSUk9XX0JPQVJEX1BB'
    'VFRFUk5fUklHSFRfQ0hFVlJPTl9GTEFTSElORxAFEjAKLEFSUk9XX0JPQVJEX1BBVFRFUk5fUk'
    'lHSFRfQ0hFVlJPTl9TRVFVRU5USUFMEAYSKQolQVJST1dfQk9BUkRfUEFUVEVSTl9MRUZUX0FS'
    'Uk9XX1NUQVRJQxAHEisKJ0FSUk9XX0JPQVJEX1BBVFRFUk5fTEVGVF9BUlJPV19GTEFTSElORx'
    'AIEi0KKUFSUk9XX0JPQVJEX1BBVFRFUk5fTEVGVF9BUlJPV19TRVFVRU5USUFMEAkSKwonQVJS'
    'T1dfQk9BUkRfUEFUVEVSTl9MRUZUX0NIRVZST05fU1RBVElDEAoSLQopQVJST1dfQk9BUkRfUE'
    'FUVEVSTl9MRUZUX0NIRVZST05fRkxBU0hJTkcQCxIvCitBUlJPV19CT0FSRF9QQVRURVJOX0xF'
    'RlRfQ0hFVlJPTl9TRVFVRU5USUFMEAwSMgouQVJST1dfQk9BUkRfUEFUVEVSTl9CSURJUkVDVE'
    'lPTkFMX0FSUk9XX1NUQVRJQxANEjQKMEFSUk9XX0JPQVJEX1BBVFRFUk5fQklESVJFQ1RJT05B'
    'TF9BUlJPV19GTEFTSElORxAOEiUKIUFSUk9XX0JPQVJEX1BBVFRFUk5fTElORV9GTEFTSElORx'
    'APEiwKKEFSUk9XX0JPQVJEX1BBVFRFUk5fRElBTU9ORFNfQUxURVJOQVRJTkcQEBItCilBUlJP'
    'V19CT0FSRF9QQVRURVJOX0ZPVVJfQ09STkVSU19GTEFTSElORxAREh8KG0FSUk9XX0JPQVJEX1'
    'BBVFRFUk5fVU5LTk9XThASQhsKGV9pc19pbl90cmFuc3BvcnRfcG9zaXRpb24a6QEKBkNhbWVy'
    'YRJRCgxjb3JlX2RldGFpbHMYASABKAsyLi5kYXRhaHViLnYxLkZpZWxkRGV2aWNlLkZpZWxkRG'
    'V2aWNlQ29yZURldGFpbHNSC2NvcmVEZXRhaWxzEiAKCWltYWdlX3VybBgCIAEoCUgAUghpbWFn'
    'ZVVybIgBARJICg9pbWFnZV90aW1lc3RhbXAYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wSAFSDmltYWdlVGltZXN0YW1wiAEBQgwKCl9pbWFnZV91cmxCEgoQX2ltYWdlX3RpbWVz'
    'dGFtcBqZAQoSRHluYW1pY01lc3NhZ2VTaWduElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdG'
    'FodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMS'
    'MAoUbWVzc2FnZV9tdWx0aV9zdHJpbmcYAiABKAlSEm1lc3NhZ2VNdWx0aVN0cmluZxr0AwoORm'
    'xhc2hpbmdCZWFjb24SUQoMY29yZV9kZXRhaWxzGAEgASgLMi4uZGF0YWh1Yi52MS5GaWVsZERl'
    'dmljZS5GaWVsZERldmljZUNvcmVEZXRhaWxzUgtjb3JlRGV0YWlscxJZCghmdW5jdGlvbhgCIA'
    'EoDjI9LmRhdGFodWIudjEuRmllbGREZXZpY2UuRmxhc2hpbmdCZWFjb24uRmxhc2hpbmdCZWFj'
    'b25GdW5jdGlvblIIZnVuY3Rpb24SJAoLaXNfZmxhc2hpbmcYAyABKAhIAFIKaXNGbGFzaGluZ4'
    'gBARIgCglzaWduX3RleHQYBCABKAlIAVIIc2lnblRleHSIAQEizQEKFkZsYXNoaW5nQmVhY29u'
    'RnVuY3Rpb24SLQopRkxBU0hJTkdfQkVBQ09OX0ZVTkNUSU9OX1ZFSElDTEVfRU5URVJJTkcQAB'
    'IqCiZGTEFTSElOR19CRUFDT05fRlVOQ1RJT05fUVVFVUVfV0FSTklORxABEioKJkZMQVNISU5H'
    'X0JFQUNPTl9GVU5DVElPTl9SRURVQ0VEX1NQRUVEEAISLAooRkxBU0hJTkdfQkVBQ09OX0ZVTk'
    'NUSU9OX1dPUktFUlNfUFJFU0VOVBADQg4KDF9pc19mbGFzaGluZ0IMCgpfc2lnbl90ZXh0GrME'
    'CgpIeWJyaWRTaWduElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEuRmllbGREZX'
    'ZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMSfQoYZHluYW1pY19tZXNz'
    'YWdlX2Z1bmN0aW9uGAIgASgOMkMuZGF0YWh1Yi52MS5GaWVsZERldmljZS5IeWJyaWRTaWduLk'
    'h5YnJpZFNpZ25EeW5hbWljTWVzc2FnZUZ1bmN0aW9uUhZkeW5hbWljTWVzc2FnZUZ1bmN0aW9u'
    'EjUKFGR5bmFtaWNfbWVzc2FnZV90ZXh0GAMgASgJSABSEmR5bmFtaWNNZXNzYWdlVGV4dIgBAR'
    'ItChBzdGF0aWNfc2lnbl90ZXh0GAQgASgJSAFSDnN0YXRpY1NpZ25UZXh0iAEBIr4BCiBIeWJy'
    'aWRTaWduRHluYW1pY01lc3NhZ2VGdW5jdGlvbhI0CjBIWUJSSURfU0lHTl9EWU5BTUlDX01FU1'
    'NBR0VfRlVOQ1RJT05fU1BFRURfTElNSVQQABI0CjBIWUJSSURfU0lHTl9EWU5BTUlDX01FU1NB'
    'R0VfRlVOQ1RJT05fVFJBVkVMX1RJTUUQARIuCipIWUJSSURfU0lHTl9EWU5BTUlDX01FU1NBR0'
    'VfRlVOQ1RJT05fT1RIRVIQAkIXChVfZHluYW1pY19tZXNzYWdlX3RleHRCEwoRX3N0YXRpY19z'
    'aWduX3RleHQauAcKDkxvY2F0aW9uTWFya2VyElEKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdG'
    'FodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMS'
    'YAoQbWFya2VkX2xvY2F0aW9ucxgCIAMoCzI1LmRhdGFodWIudjEuRmllbGREZXZpY2UuTG9jYX'
    'Rpb25NYXJrZXIuTWFya2VkTG9jYXRpb25SD21hcmtlZExvY2F0aW9ucxrwBQoOTWFya2VkTG9j'
    'YXRpb24SXAoEdHlwZRgBIAEoDjJILmRhdGFodWIudjEuRmllbGREZXZpY2UuTG9jYXRpb25NYX'
    'JrZXIuTWFya2VkTG9jYXRpb24uTWFya2VkTG9jYXRpb25UeXBlUgR0eXBlEigKD3JvYWRfc2Vj'
    'dGlvbl9pZBgCIAEoBEgAUg1yb2FkU2VjdGlvbklkEioKEGFjdGl2aXR5X2FyZWFfaWQYAyABKA'
    'RIAFIOYWN0aXZpdHlBcmVhSWQingQKEk1hcmtlZExvY2F0aW9uVHlwZRIdChlNQVJLRURfTE9D'
    'QVRJT05fVFlQRV9BRkFEEAASIwofTUFSS0VEX0xPQ0FUSU9OX1RZUEVfREVMSU5FQVRPUhABEi'
    'AKHE1BUktFRF9MT0NBVElPTl9UWVBFX0ZMQUdHRVIQAhIjCh9NQVJLRURfTE9DQVRJT05fVFlQ'
    'RV9MQU5FX1NISUZUEAMSJQohTUFSS0VEX0xPQ0FUSU9OX1RZUEVfTEFORV9DTE9TVVJFEAQSKA'
    'okTUFSS0VEX0xPQ0FUSU9OX1RZUEVfUEVSU09OQUxfREVWSUNFEAUSJQohTUFSS0VEX0xPQ0FU'
    'SU9OX1RZUEVfUkFNUF9DTE9TVVJFEAYSJQohTUFSS0VEX0xPQ0FUSU9OX1RZUEVfUk9BRF9DTE'
    '9TVVJFEAcSKQolTUFSS0VEX0xPQ0FUSU9OX1RZUEVfUk9BRF9FVkVOVF9TVEFSVBAIEicKI01B'
    'UktFRF9MT0NBVElPTl9UWVBFX1JPQURfRVZFTlRfRU5EEAkSOAo0TUFSS0VEX0xPQ0FUSU9OX1'
    'RZUEVfV09SS19UUlVDS19XSVRIX0xJR0hUU19GTEFTSElORxAKEigKJE1BUktFRF9MT0NBVElP'
    'Tl9UWVBFX1dPUktfWk9ORV9TVEFSVBALEiYKIk1BUktFRF9MT0NBVElPTl9UWVBFX1dPUktfWk'
    '9ORV9FTkQQDEIJCgdFdmVudElkGs4GCg1UcmFmZmljU2Vuc29yElEKDGNvcmVfZGV0YWlscxgB'
    'IAEoCzIuLmRhdGFodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZpY2VDb3JlRGV0YWlsc1ILY2'
    '9yZURldGFpbHMSXwoeY29sbGVjdGlvbl9pbnRlcnZhbF9zdGFydF9kYXRlGAIgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFIbY29sbGVjdGlvbkludGVydmFsU3RhcnREYXRlElsKHG'
    'NvbGxlY3Rpb25faW50ZXJ2YWxfZW5kX2RhdGUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUhljb2xsZWN0aW9uSW50ZXJ2YWxFbmREYXRlEi8KEWF2ZXJhZ2Vfc3BlZWRfa3BoGA'
    'QgASgBSABSD2F2ZXJhZ2VTcGVlZEtwaIgBARIiCgp2b2x1bWVfa3BoGAUgASgBSAFSCXZvbHVt'
    'ZUtwaIgBARIwChFvY2N1cGFuY3lfcGVyY2VudBgGIAEoAUgCUhBvY2N1cGFuY3lQZXJjZW50iA'
    'EBElgKCWxhbmVfZGF0YRgHIAMoCzI7LmRhdGFodWIudjEuRmllbGREZXZpY2UuVHJhZmZpY1Nl'
    'bnNvci5UcmFmZmljU2Vuc29yTGFuZURhdGFSCGxhbmVEYXRhGo8CChVUcmFmZmljU2Vuc29yTG'
    'FuZURhdGESHQoKbGFuZV9vcmRlchgBIAEoDVIJbGFuZU9yZGVyEigKD3JvYWRfc2VjdGlvbl9p'
    'ZBgCIAEoBEgAUg1yb2FkU2VjdGlvbklkEioKEGFjdGl2aXR5X2FyZWFfaWQYAyABKARIAFIOYW'
    'N0aXZpdHlBcmVhSWQSKgoRYXZlcmFnZV9zcGVlZF9rcGgYBCABKAFSD2F2ZXJhZ2VTcGVlZEtw'
    'aBIdCgp2b2x1bWVfa3BoGAUgASgBUgl2b2x1bWVLcGgSKwoRb2NjdXBhbmN5X3BlcmNlbnQYBi'
    'ABKAFSEG9jY3VwYW5jeVBlcmNlbnRCCQoHRXZlbnRJZEIUChJfYXZlcmFnZV9zcGVlZF9rcGhC'
    'DQoLX3ZvbHVtZV9rcGhCFAoSX29jY3VwYW5jeV9wZXJjZW50GuYDCg1UcmFmZmljU2lnbmFsEl'
    'EKDGNvcmVfZGV0YWlscxgBIAEoCzIuLmRhdGFodWIudjEuRmllbGREZXZpY2UuRmllbGREZXZp'
    'Y2VDb3JlRGV0YWlsc1ILY29yZURldGFpbHMSSwoEbW9kZRgCIAEoDjI3LmRhdGFodWIudjEuRm'
    'llbGREZXZpY2UuVHJhZmZpY1NpZ25hbC5UcmFmZmljU2lnbmFsTW9kZVIEbW9kZSK0AgoRVHJh'
    'ZmZpY1NpZ25hbE1vZGUSHQoZVFJBRkZJQ19TSUdOQUxfTU9ERV9CTEFOSxAAEiQKIFRSQUZGSU'
    'NfU0lHTkFMX01PREVfRkxBU0hJTkdfUkVEEAESJwojVFJBRkZJQ19TSUdOQUxfTU9ERV9GTEFT'
    'SElOR19ZRUxMT1cQAhImCiJUUkFGRklDX1NJR05BTF9NT0RFX0ZVTExZX0FDVFVBVEVEEAMSHg'
    'oaVFJBRkZJQ19TSUdOQUxfTU9ERV9NQU5VQUwQBBIhCh1UUkFGRklDX1NJR05BTF9NT0RFX1BS'
    'RV9USU1FRBAFEiUKIVRSQUZGSUNfU0lHTkFMX01PREVfU0VNSV9BQ1RVQVRFRBAGEh8KG1RSQU'
    'ZGSUNfU0lHTkFMX01PREVfVU5LTk9XThAHIpABChFGaWVsZERldmljZVN0YXR1cxIaChZGSUVM'
    'RF9ERVZJQ0VfU1RBVFVTX09LEAASHwobRklFTERfREVWSUNFX1NUQVRVU19XQVJOSU5HEAESHQ'
    'oZRklFTERfREVWSUNFX1NUQVRVU19FUlJPUhACEh8KG0ZJRUxEX0RFVklDRV9TVEFUVVNfVU5L'
    'Tk9XThADQggKBkRldmljZQ==');

