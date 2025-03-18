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
    {'1': 'segment_id', '3': 2, '4': 1, '5': 4, '9': 2, '10': 'segmentId', '17': true},
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
    {'1': '_segment_id'},
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
    'CgZSZXBvcnQSIgoKcHJvamVjdF9pZBgBIAEoBEgBUglwcm9qZWN0SWSIAQESIgoKc2VnbWVudF'
    '9pZBgCIAEoBEgCUglzZWdtZW50SWSIAQESHAoHYXJlYV9pZBgDIAEoBEgDUgZhcmVhSWSIAQES'
    'HwoLcmVwb3J0X25hbWUYBCABKAlSCnJlcG9ydE5hbWUSOgoNdHlwZXNfb2Zfd29yaxgFIAMoCz'
    'IWLmRhdGFodWIudjEuVHlwZU9mV29ya1ILdHlwZXNPZldvcmsSJwoPd29ya2Vyc19wcmVzZW50'
    'GAYgASgIUg53b3JrZXJzUHJlc2VudBI+CgpzdGFydF9kYXRlGAcgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcEgEUglzdGFydERhdGWIAQESOgoIZW5kX2RhdGUYCCABKAsyGi5nb29n'
    'bGUucHJvdG9idWYuVGltZXN0YW1wSAVSB2VuZERhdGWIAQESNQoJYXJlYV90eXBlGAkgASgOMh'
    'guZGF0YWh1Yi52MS5Xb3JrWm9uZVR5cGVSCGFyZWFUeXBlEjEKEm1vYmlsaXR5X3NwZWVkX21w'
    'aBgKIAEoAkgGUhBtb2JpbGl0eVNwZWVkTXBoiAEBEjEKBXBvaW50GAsgASgLMhkuZGF0YWh1Yi'
    '52MS5Qb2ludEdlb21ldHJ5SABSBXBvaW50EkEKC2xpbmVfc3RyaW5nGAwgASgLMh4uZGF0YWh1'
    'Yi52MS5MaW5lU3RyaW5nR2VvbWV0cnlIAFIKbGluZVN0cmluZxI3Cgdwb2x5Z29uGA0gASgLMh'
    'suZGF0YWh1Yi52MS5Qb2x5Z29uR2VvbWV0cnlIAFIHcG9seWdvbhIoCg1saWNlbnNlX3BsYXRl'
    'GA4gASgJSAdSDGxpY2Vuc2VQbGF0ZYgBARJDCgxzdXJmYWNlX3R5cGUYDyABKA4yGy5kYXRhaH'
    'ViLnYxLlJvYWRTdXJmYWNlVHlwZUgIUgtzdXJmYWNlVHlwZYgBAUIKCghHZW9tZXRyeUINCgtf'
    'cHJvamVjdF9pZEINCgtfc2VnbWVudF9pZEIKCghfYXJlYV9pZEINCgtfc3RhcnRfZGF0ZUILCg'
    'lfZW5kX2RhdGVCFQoTX21vYmlsaXR5X3NwZWVkX21waEIQCg5fbGljZW5zZV9wbGF0ZUIPCg1f'
    'c3VyZmFjZV90eXBl');

