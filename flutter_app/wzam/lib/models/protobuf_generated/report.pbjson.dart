//
//  Generated code. Do not modify.
//  source: report.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reportDescriptor instead')
const Report$json = {
  '1': 'Report',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '9': 1, '10': 'projectId', '17': true},
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '9': 2, '10': 'roadSectionId', '17': true},
    {'1': 'area_id', '3': 3, '4': 1, '5': 4, '9': 3, '10': 'areaId', '17': true},
    {'1': 'report_name', '3': 4, '4': 1, '5': 9, '10': 'reportName'},
    {'1': 'types_of_work', '3': 5, '4': 3, '5': 11, '6': '.datahub.v1.TypeOfWork', '10': 'typesOfWork'},
    {'1': 'workers_present', '3': 6, '4': 1, '5': 8, '10': 'workersPresent'},
    {'1': 'start_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 4, '10': 'startDate', '17': true},
    {'1': 'end_date', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 5, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 9, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'mobility_speed_mph', '3': 10, '4': 1, '5': 2, '9': 6, '10': 'mobilitySpeedMph', '17': true},
    {'1': 'point', '3': 11, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '9': 0, '10': 'point'},
    {'1': 'line_string', '3': 12, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 13, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'license_plate', '3': 14, '4': 1, '5': 9, '9': 7, '10': 'licensePlate', '17': true},
    {'1': 'surface_type', '3': 15, '4': 1, '5': 14, '6': '.datahub.v1.RoadSurfaceType', '9': 8, '10': 'surfaceType', '17': true},
  ],
  '8': [
    {'1': 'Geometry'},
    {'1': '_project_id'},
    {'1': '_road_section_id'},
    {'1': '_area_id'},
    {'1': '_start_date'},
    {'1': '_end_date'},
    {'1': '_mobility_speed_mph'},
    {'1': '_license_plate'},
    {'1': '_surface_type'},
  ],
};

/// Descriptor for `Report`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportDescriptor = $convert.base64Decode(
    'CgZSZXBvcnQSIgoKcHJvamVjdF9pZBgBIAEoBEgBUglwcm9qZWN0SWSIAQESKwoPcm9hZF9zZW'
    'N0aW9uX2lkGAIgASgESAJSDXJvYWRTZWN0aW9uSWSIAQESHAoHYXJlYV9pZBgDIAEoBEgDUgZh'
    'cmVhSWSIAQESHwoLcmVwb3J0X25hbWUYBCABKAlSCnJlcG9ydE5hbWUSOgoNdHlwZXNfb2Zfd2'
    '9yaxgFIAMoCzIWLmRhdGFodWIudjEuVHlwZU9mV29ya1ILdHlwZXNPZldvcmsSJwoPd29ya2Vy'
    'c19wcmVzZW50GAYgASgIUg53b3JrZXJzUHJlc2VudBI+CgpzdGFydF9kYXRlGAcgASgLMhouZ2'
    '9vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgEUglzdGFydERhdGWIAQESOgoIZW5kX2RhdGUYCCAB'
    'KAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSAVSB2VuZERhdGWIAQESNQoJYXJlYV90eX'
    'BlGAkgASgOMhguZGF0YWh1Yi52MS5Xb3JrWm9uZVR5cGVSCGFyZWFUeXBlEjEKEm1vYmlsaXR5'
    'X3NwZWVkX21waBgKIAEoAkgGUhBtb2JpbGl0eVNwZWVkTXBoiAEBEjEKBXBvaW50GAsgASgLMh'
    'kuZGF0YWh1Yi52MS5Qb2ludEdlb21ldHJ5SABSBXBvaW50EkEKC2xpbmVfc3RyaW5nGAwgASgL'
    'Mh4uZGF0YWh1Yi52MS5MaW5lU3RyaW5nR2VvbWV0cnlIAFIKbGluZVN0cmluZxI3Cgdwb2x5Z2'
    '9uGA0gASgLMhsuZGF0YWh1Yi52MS5Qb2x5Z29uR2VvbWV0cnlIAFIHcG9seWdvbhIoCg1saWNl'
    'bnNlX3BsYXRlGA4gASgJSAdSDGxpY2Vuc2VQbGF0ZYgBARJDCgxzdXJmYWNlX3R5cGUYDyABKA'
    '4yGy5kYXRhaHViLnYxLlJvYWRTdXJmYWNlVHlwZUgIUgtzdXJmYWNlVHlwZYgBAUIKCghHZW9t'
    'ZXRyeUINCgtfcHJvamVjdF9pZEISChBfcm9hZF9zZWN0aW9uX2lkQgoKCF9hcmVhX2lkQg0KC1'
    '9zdGFydF9kYXRlQgsKCV9lbmRfZGF0ZUIVChNfbW9iaWxpdHlfc3BlZWRfbXBoQhAKDl9saWNl'
    'bnNlX3BsYXRlQg8KDV9zdXJmYWNlX3R5cGU=');

