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
    {'1': 'segment_id', '3': 1, '4': 1, '5': 4, '10': 'segmentId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.datahub.v1.ActivityArea.ActivityAreaActiveStatus', '10': 'status'},
    {'1': 'start_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 7, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'lanes', '3': 8, '4': 3, '5': 11, '6': '.datahub.v1.Lane', '10': 'lanes'},
    {'1': 'beginning_cross_street', '3': 9, '4': 1, '5': 13, '10': 'beginningCrossStreet'},
    {'1': 'ending_cross_street', '3': 10, '4': 1, '5': 13, '10': 'endingCrossStreet'},
    {'1': 'beginning_milepost', '3': 11, '4': 1, '5': 13, '10': 'beginningMilepost'},
    {'1': 'ending_milepost', '3': 12, '4': 1, '5': 13, '10': 'endingMilepost'},
    {'1': 'types_of_work', '3': 13, '4': 3, '5': 11, '6': '.datahub.v1.TypeOfWork', '10': 'typesOfWork'},
    {'1': 'worker_presence', '3': 14, '4': 1, '5': 11, '6': '.datahub.v1.WorkerPresence', '10': 'workerPresence'},
    {'1': 'reduced_speed_limit_kph', '3': 15, '4': 1, '5': 2, '10': 'reducedSpeedLimitKph'},
    {'1': 'restrictions', '3': 16, '4': 3, '5': 11, '6': '.datahub.v1.Restriction', '10': 'restrictions'},
    {'1': 'schedule', '3': 17, '4': 3, '5': 11, '6': '.datahub.v1.ActivityArea.EventRecurrence', '10': 'schedule'},
    {'1': 'point', '3': 18, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '9': 0, '10': 'point'},
    {'1': 'line_string', '3': 19, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 20, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'bbox', '3': 21, '4': 1, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
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
    'CgxBY3Rpdml0eUFyZWESHQoKc2VnbWVudF9pZBgBIAEoBFIJc2VnbWVudElkEhIKBG5hbWUYAi'
    'ABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEkkKBnN0YXR1cxgE'
    'IAEoDjIxLmRhdGFodWIudjEuQWN0aXZpdHlBcmVhLkFjdGl2aXR5QXJlYUFjdGl2ZVN0YXR1c1'
    'IGc3RhdHVzEjkKCnN0YXJ0X2RhdGUYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UglzdGFydERhdGUSOgoIZW5kX2RhdGUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW'
    '1wSAFSB2VuZERhdGWIAQESNQoJYXJlYV90eXBlGAcgASgOMhguZGF0YWh1Yi52MS5Xb3JrWm9u'
    'ZVR5cGVSCGFyZWFUeXBlEiYKBWxhbmVzGAggAygLMhAuZGF0YWh1Yi52MS5MYW5lUgVsYW5lcx'
    'I0ChZiZWdpbm5pbmdfY3Jvc3Nfc3RyZWV0GAkgASgNUhRiZWdpbm5pbmdDcm9zc1N0cmVldBIu'
    'ChNlbmRpbmdfY3Jvc3Nfc3RyZWV0GAogASgNUhFlbmRpbmdDcm9zc1N0cmVldBItChJiZWdpbm'
    '5pbmdfbWlsZXBvc3QYCyABKA1SEWJlZ2lubmluZ01pbGVwb3N0EicKD2VuZGluZ19taWxlcG9z'
    'dBgMIAEoDVIOZW5kaW5nTWlsZXBvc3QSOgoNdHlwZXNfb2Zfd29yaxgNIAMoCzIWLmRhdGFodW'
    'IudjEuVHlwZU9mV29ya1ILdHlwZXNPZldvcmsSQwoPd29ya2VyX3ByZXNlbmNlGA4gASgLMhou'
    'ZGF0YWh1Yi52MS5Xb3JrZXJQcmVzZW5jZVIOd29ya2VyUHJlc2VuY2USNQoXcmVkdWNlZF9zcG'
    'VlZF9saW1pdF9rcGgYDyABKAJSFHJlZHVjZWRTcGVlZExpbWl0S3BoEjsKDHJlc3RyaWN0aW9u'
    'cxgQIAMoCzIXLmRhdGFodWIudjEuUmVzdHJpY3Rpb25SDHJlc3RyaWN0aW9ucxJECghzY2hlZH'
    'VsZRgRIAMoCzIoLmRhdGFodWIudjEuQWN0aXZpdHlBcmVhLkV2ZW50UmVjdXJyZW5jZVIIc2No'
    'ZWR1bGUSMQoFcG9pbnQYEiABKAsyGS5kYXRhaHViLnYxLlBvaW50R2VvbWV0cnlIAFIFcG9pbn'
    'QSQQoLbGluZV9zdHJpbmcYEyABKAsyHi5kYXRhaHViLnYxLkxpbmVTdHJpbmdHZW9tZXRyeUgA'
    'UgpsaW5lU3RyaW5nEjcKB3BvbHlnb24YFCABKAsyGy5kYXRhaHViLnYxLlBvbHlnb25HZW9tZX'
    'RyeUgAUgdwb2x5Z29uEisKBGJib3gYFSABKAsyFy5kYXRhaHViLnYxLkJvdW5kaW5nQm94UgRi'
    'Ym94GrEDCg9FdmVudFJlY3VycmVuY2USNQoKc3RhcnRfdGltZRgBIAEoCzIWLmdvb2dsZS50eX'
    'BlLlRpbWVPZkRheVIJc3RhcnRUaW1lEjEKCGVuZF90aW1lGAIgASgLMhYuZ29vZ2xlLnR5cGUu'
    'VGltZU9mRGF5UgdlbmRUaW1lEjAKCnN0YXJ0X2RhdGUYAyABKAsyES5nb29nbGUudHlwZS5EYX'
    'RlUglzdGFydERhdGUSLAoIZW5kX2RhdGUYBCABKAsyES5nb29nbGUudHlwZS5EYXRlUgdlbmRE'
    'YXRlEhYKBm1vbmRheRgFIAEoCFIGbW9uZGF5EhgKB3R1ZXNkYXkYBiABKAhSB3R1ZXNkYXkSHA'
    'oJd2VkbmVzZGF5GAcgASgIUgl3ZWRuZXNkYXkSGgoIdGh1cnNkYXkYCCABKAhSCHRodXJzZGF5'
    'EhYKBmZyaWRheRgJIAEoCFIGZnJpZGF5EhoKCHNhdHVyZGF5GAogASgIUghzYXR1cmRheRIWCg'
    'ZzdW5kYXkYCyABKAhSBnN1bmRheRIcCglleGNsdXNpb24YDCABKAhSCWV4Y2x1c2lvbiJsChhB'
    'Y3Rpdml0eUFyZWFBY3RpdmVTdGF0dXMSJgoiQUNUSVZJVFlfQVJFQV9BQ1RJVkVfU1RBVFVTX0'
    'FDVElWRRAAEigKJEFDVElWSVRZX0FSRUFfQUNUSVZFX1NUQVRVU19JTkFDVElWRRABQgoKCEdl'
    'b21ldHJ5QgsKCV9lbmRfZGF0ZQ==');

