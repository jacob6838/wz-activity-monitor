//
//  Generated code. Do not modify.
//  source: activity_area.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use activityAreaDescriptor instead')
const ActivityArea$json = {
  '1': 'ActivityArea',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '10': 'roadSectionId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.datahub.v1.ActivityArea.ActivityAreaActiveStatus', '10': 'status'},
    {'1': 'start_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 8, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'lanes', '3': 9, '4': 3, '5': 11, '6': '.datahub.v1.Lane', '10': 'lanes'},
    {'1': 'beginning_cross_street', '3': 10, '4': 1, '5': 13, '10': 'beginningCrossStreet'},
    {'1': 'ending_cross_street', '3': 11, '4': 1, '5': 13, '10': 'endingCrossStreet'},
    {'1': 'beginning_milepost', '3': 12, '4': 1, '5': 13, '10': 'beginningMilepost'},
    {'1': 'ending_milepost', '3': 13, '4': 1, '5': 13, '10': 'endingMilepost'},
    {'1': 'types_of_work', '3': 14, '4': 3, '5': 11, '6': '.datahub.v1.TypeOfWork', '10': 'typesOfWork'},
    {'1': 'worker_presence', '3': 15, '4': 1, '5': 11, '6': '.datahub.v1.WorkerPresence', '10': 'workerPresence'},
    {'1': 'reduced_speed_limit_kph', '3': 16, '4': 1, '5': 2, '10': 'reducedSpeedLimitKph'},
    {'1': 'restrictions', '3': 17, '4': 3, '5': 11, '6': '.datahub.v1.Restriction', '10': 'restrictions'},
    {'1': 'schedule', '3': 18, '4': 3, '5': 11, '6': '.datahub.v1.ActivityArea.EventRecurrence', '10': 'schedule'},
    {'1': 'point', '3': 19, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '9': 0, '10': 'point'},
    {'1': 'line_string', '3': 20, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 21, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'bbox', '3': 22, '4': 1, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '3': [ActivityArea_EventRecurrence$json],
  '4': [ActivityArea_ActivityAreaActiveStatus$json],
  '8': [
    {'1': 'Geometry'},
    {'1': '_end_date'},
  ],
};

@$core.Deprecated('Use activityAreaDescriptor instead')
const ActivityArea_EventRecurrence$json = {
  '1': 'EventRecurrence',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 11, '6': '.google.type.TimeOfDay', '10': 'startTime'},
    {'1': 'end_time', '3': 2, '4': 1, '5': 11, '6': '.google.type.TimeOfDay', '10': 'endTime'},
    {'1': 'start_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'startDate'},
    {'1': 'end_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'endDate'},
    {'1': 'monday', '3': 5, '4': 1, '5': 8, '10': 'monday'},
    {'1': 'tuesday', '3': 6, '4': 1, '5': 8, '10': 'tuesday'},
    {'1': 'wednesday', '3': 7, '4': 1, '5': 8, '10': 'wednesday'},
    {'1': 'thursday', '3': 8, '4': 1, '5': 8, '10': 'thursday'},
    {'1': 'friday', '3': 9, '4': 1, '5': 8, '10': 'friday'},
    {'1': 'saturday', '3': 10, '4': 1, '5': 8, '10': 'saturday'},
    {'1': 'sunday', '3': 11, '4': 1, '5': 8, '10': 'sunday'},
    {'1': 'exclusion', '3': 12, '4': 1, '5': 8, '10': 'exclusion'},
  ],
};

@$core.Deprecated('Use activityAreaDescriptor instead')
const ActivityArea_ActivityAreaActiveStatus$json = {
  '1': 'ActivityAreaActiveStatus',
  '2': [
    {'1': 'ACTIVITY_AREA_ACTIVE_STATUS_ACTIVE', '2': 0},
    {'1': 'ACTIVITY_AREA_ACTIVE_STATUS_INACTIVE', '2': 1},
  ],
};

/// Descriptor for `ActivityArea`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityAreaDescriptor = $convert.base64Decode(
    'CgxBY3Rpdml0eUFyZWESHQoKcHJvamVjdF9pZBgBIAEoBFIJcHJvamVjdElkEiYKD3JvYWRfc2'
    'VjdGlvbl9pZBgCIAEoBFINcm9hZFNlY3Rpb25JZBISCgRuYW1lGAMgASgJUgRuYW1lEiAKC2Rl'
    'c2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhJJCgZzdGF0dXMYBSABKA4yMS5kYXRhaHViLn'
    'YxLkFjdGl2aXR5QXJlYS5BY3Rpdml0eUFyZWFBY3RpdmVTdGF0dXNSBnN0YXR1cxI5CgpzdGFy'
    'dF9kYXRlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJc3RhcnREYXRlEjoKCG'
    'VuZF9kYXRlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgBUgdlbmREYXRliAEB'
    'EjUKCWFyZWFfdHlwZRgIIAEoDjIYLmRhdGFodWIudjEuV29ya1pvbmVUeXBlUghhcmVhVHlwZR'
    'ImCgVsYW5lcxgJIAMoCzIQLmRhdGFodWIudjEuTGFuZVIFbGFuZXMSNAoWYmVnaW5uaW5nX2Ny'
    'b3NzX3N0cmVldBgKIAEoDVIUYmVnaW5uaW5nQ3Jvc3NTdHJlZXQSLgoTZW5kaW5nX2Nyb3NzX3'
    'N0cmVldBgLIAEoDVIRZW5kaW5nQ3Jvc3NTdHJlZXQSLQoSYmVnaW5uaW5nX21pbGVwb3N0GAwg'
    'ASgNUhFiZWdpbm5pbmdNaWxlcG9zdBInCg9lbmRpbmdfbWlsZXBvc3QYDSABKA1SDmVuZGluZ0'
    '1pbGVwb3N0EjoKDXR5cGVzX29mX3dvcmsYDiADKAsyFi5kYXRhaHViLnYxLlR5cGVPZldvcmtS'
    'C3R5cGVzT2ZXb3JrEkMKD3dvcmtlcl9wcmVzZW5jZRgPIAEoCzIaLmRhdGFodWIudjEuV29ya2'
    'VyUHJlc2VuY2VSDndvcmtlclByZXNlbmNlEjUKF3JlZHVjZWRfc3BlZWRfbGltaXRfa3BoGBAg'
    'ASgCUhRyZWR1Y2VkU3BlZWRMaW1pdEtwaBI7CgxyZXN0cmljdGlvbnMYESADKAsyFy5kYXRhaH'
    'ViLnYxLlJlc3RyaWN0aW9uUgxyZXN0cmljdGlvbnMSRAoIc2NoZWR1bGUYEiADKAsyKC5kYXRh'
    'aHViLnYxLkFjdGl2aXR5QXJlYS5FdmVudFJlY3VycmVuY2VSCHNjaGVkdWxlEjEKBXBvaW50GB'
    'MgASgLMhkuZGF0YWh1Yi52MS5Qb2ludEdlb21ldHJ5SABSBXBvaW50EkEKC2xpbmVfc3RyaW5n'
    'GBQgASgLMh4uZGF0YWh1Yi52MS5MaW5lU3RyaW5nR2VvbWV0cnlIAFIKbGluZVN0cmluZxI3Cg'
    'dwb2x5Z29uGBUgASgLMhsuZGF0YWh1Yi52MS5Qb2x5Z29uR2VvbWV0cnlIAFIHcG9seWdvbhIr'
    'CgRiYm94GBYgASgLMhcuZGF0YWh1Yi52MS5Cb3VuZGluZ0JveFIEYmJveBqxAwoPRXZlbnRSZW'
    'N1cnJlbmNlEjUKCnN0YXJ0X3RpbWUYASABKAsyFi5nb29nbGUudHlwZS5UaW1lT2ZEYXlSCXN0'
    'YXJ0VGltZRIxCghlbmRfdGltZRgCIAEoCzIWLmdvb2dsZS50eXBlLlRpbWVPZkRheVIHZW5kVG'
    'ltZRIwCgpzdGFydF9kYXRlGAMgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIJc3RhcnREYXRlEiwK'
    'CGVuZF9kYXRlGAQgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIHZW5kRGF0ZRIWCgZtb25kYXkYBS'
    'ABKAhSBm1vbmRheRIYCgd0dWVzZGF5GAYgASgIUgd0dWVzZGF5EhwKCXdlZG5lc2RheRgHIAEo'
    'CFIJd2VkbmVzZGF5EhoKCHRodXJzZGF5GAggASgIUgh0aHVyc2RheRIWCgZmcmlkYXkYCSABKA'
    'hSBmZyaWRheRIaCghzYXR1cmRheRgKIAEoCFIIc2F0dXJkYXkSFgoGc3VuZGF5GAsgASgIUgZz'
    'dW5kYXkSHAoJZXhjbHVzaW9uGAwgASgIUglleGNsdXNpb24ibAoYQWN0aXZpdHlBcmVhQWN0aX'
    'ZlU3RhdHVzEiYKIkFDVElWSVRZX0FSRUFfQUNUSVZFX1NUQVRVU19BQ1RJVkUQABIoCiRBQ1RJ'
    'VklUWV9BUkVBX0FDVElWRV9TVEFUVVNfSU5BQ1RJVkUQAUIKCghHZW9tZXRyeUILCglfZW5kX2'
    'RhdGU=');

