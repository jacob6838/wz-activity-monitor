//
//  Generated code. Do not modify.
//  source: road_sub_event.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roadSubEventDescriptor instead')
const RoadSubEvent$json = {
  '1': 'RoadSubEvent',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'work_zone_id', '3': 2, '4': 1, '5': 4, '10': 'workZoneId'},
    {'1': 'direction', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.RoadwayDirection', '10': 'direction'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'start_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 8, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'road_names', '3': 9, '4': 3, '5': 9, '10': 'roadNames'},
    {'1': 'beginning_cross_street', '3': 10, '4': 1, '5': 9, '9': 2, '10': 'beginningCrossStreet', '17': true},
    {'1': 'ending_cross_street', '3': 11, '4': 1, '5': 9, '9': 3, '10': 'endingCrossStreet', '17': true},
    {'1': 'beginning_milepost', '3': 12, '4': 1, '5': 1, '10': 'beginningMilepost'},
    {'1': 'ending_milepost', '3': 13, '4': 1, '5': 1, '10': 'endingMilepost'},
    {'1': 'worker_presence', '3': 14, '4': 1, '5': 11, '6': '.datahub.v1.WorkerPresence', '10': 'workerPresence'},
    {'1': 'reduced_speed_limit_kph', '3': 15, '4': 1, '5': 2, '10': 'reducedSpeedLimitKph'},
    {'1': 'restrictions', '3': 16, '4': 3, '5': 11, '6': '.datahub.v1.Restriction', '10': 'restrictions'},
    {'1': 'lanes', '3': 17, '4': 3, '5': 11, '6': '.datahub.v1.Lane', '10': 'lanes'},
    {'1': 'surface_type', '3': 18, '4': 1, '5': 14, '6': '.datahub.v1.RoadSurfaceType', '10': 'surfaceType'},
    {'1': 'start_location_type', '3': 19, '4': 1, '5': 14, '6': '.datahub.v1.MarkedLocationType', '9': 4, '10': 'startLocationType', '17': true},
    {'1': 'end_location_type', '3': 20, '4': 1, '5': 14, '6': '.datahub.v1.MarkedLocationType', '9': 5, '10': 'endLocationType', '17': true},
    {'1': 'point', '3': 21, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '9': 0, '10': 'point'},
    {'1': 'line_string', '3': 22, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 23, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'bbox', '3': 24, '4': 3, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '4': [RoadSubEvent_RoadDirection$json],
  '8': [
    {'1': 'Geometry'},
    {'1': '_end_date'},
    {'1': '_beginning_cross_street'},
    {'1': '_ending_cross_street'},
    {'1': '_start_location_type'},
    {'1': '_end_location_type'},
  ],
};

@$core.Deprecated('Use roadSubEventDescriptor instead')
const RoadSubEvent_RoadDirection$json = {
  '1': 'RoadDirection',
  '2': [
    {'1': 'ROAD_DIRECTION_BOTH', '2': 0},
    {'1': 'ROAD_DIRECTION_NORTHBOUND', '2': 1},
    {'1': 'ROAD_DIRECTION_SOUTHBOUND', '2': 2},
    {'1': 'ROAD_DIRECTION_EASTBOUND', '2': 3},
    {'1': 'ROAD_DIRECTION_WESTBOUND', '2': 4},
  ],
};

/// Descriptor for `RoadSubEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSubEventDescriptor = $convert.base64Decode(
    'CgxSb2FkU3ViRXZlbnQSHQoKcHJvamVjdF9pZBgBIAEoBFIJcHJvamVjdElkEiAKDHdvcmtfem'
    '9uZV9pZBgCIAEoBFIKd29ya1pvbmVJZBI6CglkaXJlY3Rpb24YAyABKA4yHC5kYXRhaHViLnYx'
    'LlJvYWR3YXlEaXJlY3Rpb25SCWRpcmVjdGlvbhISCgRuYW1lGAQgASgJUgRuYW1lEiAKC2Rlc2'
    'NyaXB0aW9uGAUgASgJUgtkZXNjcmlwdGlvbhI5CgpzdGFydF9kYXRlGAYgASgLMhouZ29vZ2xl'
    'LnByb3RvYnVmLlRpbWVzdGFtcFIJc3RhcnREYXRlEjoKCGVuZF9kYXRlGAcgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcEgBUgdlbmREYXRliAEBEjUKCWFyZWFfdHlwZRgIIAEoDjIY'
    'LmRhdGFodWIudjEuV29ya1pvbmVUeXBlUghhcmVhVHlwZRIdCgpyb2FkX25hbWVzGAkgAygJUg'
    'lyb2FkTmFtZXMSOQoWYmVnaW5uaW5nX2Nyb3NzX3N0cmVldBgKIAEoCUgCUhRiZWdpbm5pbmdD'
    'cm9zc1N0cmVldIgBARIzChNlbmRpbmdfY3Jvc3Nfc3RyZWV0GAsgASgJSANSEWVuZGluZ0Nyb3'
    'NzU3RyZWV0iAEBEi0KEmJlZ2lubmluZ19taWxlcG9zdBgMIAEoAVIRYmVnaW5uaW5nTWlsZXBv'
    'c3QSJwoPZW5kaW5nX21pbGVwb3N0GA0gASgBUg5lbmRpbmdNaWxlcG9zdBJDCg93b3JrZXJfcH'
    'Jlc2VuY2UYDiABKAsyGi5kYXRhaHViLnYxLldvcmtlclByZXNlbmNlUg53b3JrZXJQcmVzZW5j'
    'ZRI1ChdyZWR1Y2VkX3NwZWVkX2xpbWl0X2twaBgPIAEoAlIUcmVkdWNlZFNwZWVkTGltaXRLcG'
    'gSOwoMcmVzdHJpY3Rpb25zGBAgAygLMhcuZGF0YWh1Yi52MS5SZXN0cmljdGlvblIMcmVzdHJp'
    'Y3Rpb25zEiYKBWxhbmVzGBEgAygLMhAuZGF0YWh1Yi52MS5MYW5lUgVsYW5lcxI+CgxzdXJmYW'
    'NlX3R5cGUYEiABKA4yGy5kYXRhaHViLnYxLlJvYWRTdXJmYWNlVHlwZVILc3VyZmFjZVR5cGUS'
    'UwoTc3RhcnRfbG9jYXRpb25fdHlwZRgTIAEoDjIeLmRhdGFodWIudjEuTWFya2VkTG9jYXRpb2'
    '5UeXBlSARSEXN0YXJ0TG9jYXRpb25UeXBliAEBEk8KEWVuZF9sb2NhdGlvbl90eXBlGBQgASgO'
    'Mh4uZGF0YWh1Yi52MS5NYXJrZWRMb2NhdGlvblR5cGVIBVIPZW5kTG9jYXRpb25UeXBliAEBEj'
    'EKBXBvaW50GBUgASgLMhkuZGF0YWh1Yi52MS5Qb2ludEdlb21ldHJ5SABSBXBvaW50EkEKC2xp'
    'bmVfc3RyaW5nGBYgASgLMh4uZGF0YWh1Yi52MS5MaW5lU3RyaW5nR2VvbWV0cnlIAFIKbGluZV'
    'N0cmluZxI3Cgdwb2x5Z29uGBcgASgLMhsuZGF0YWh1Yi52MS5Qb2x5Z29uR2VvbWV0cnlIAFIH'
    'cG9seWdvbhIrCgRiYm94GBggAygLMhcuZGF0YWh1Yi52MS5Cb3VuZGluZ0JveFIEYmJveCKiAQ'
    'oNUm9hZERpcmVjdGlvbhIXChNST0FEX0RJUkVDVElPTl9CT1RIEAASHQoZUk9BRF9ESVJFQ1RJ'
    'T05fTk9SVEhCT1VORBABEh0KGVJPQURfRElSRUNUSU9OX1NPVVRIQk9VTkQQAhIcChhST0FEX0'
    'RJUkVDVElPTl9FQVNUQk9VTkQQAxIcChhST0FEX0RJUkVDVElPTl9XRVNUQk9VTkQQBEIKCghH'
    'ZW9tZXRyeUILCglfZW5kX2RhdGVCGQoXX2JlZ2lubmluZ19jcm9zc19zdHJlZXRCFgoUX2VuZG'
    'luZ19jcm9zc19zdHJlZXRCFgoUX3N0YXJ0X2xvY2F0aW9uX3R5cGVCFAoSX2VuZF9sb2NhdGlv'
    'bl90eXBl');

