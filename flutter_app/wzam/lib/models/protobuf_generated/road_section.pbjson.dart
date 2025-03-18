//
//  Generated code. Do not modify.
//  source: road_section.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roadSectionDescriptor instead')
const RoadSection$json = {
  '1': 'RoadSection',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'direction', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.RoadwayDirection', '10': 'direction'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'armed_status', '3': 5, '4': 1, '5': 14, '6': '.datahub.v1.RoadSection.RoadSectionActiveStatus', '10': 'armedStatus'},
    {'1': 'start_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 8, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'road_names', '3': 9, '4': 3, '5': 9, '10': 'roadNames'},
    {'1': 'beginning_cross_street', '3': 10, '4': 1, '5': 13, '9': 2, '10': 'beginningCrossStreet', '17': true},
    {'1': 'ending_cross_street', '3': 11, '4': 1, '5': 13, '9': 3, '10': 'endingCrossStreet', '17': true},
    {'1': 'beginning_milepost', '3': 12, '4': 1, '5': 13, '10': 'beginningMilepost'},
    {'1': 'ending_milepost', '3': 13, '4': 1, '5': 13, '10': 'endingMilepost'},
    {'1': 'surface_type', '3': 14, '4': 1, '5': 14, '6': '.datahub.v1.RoadSurfaceType', '10': 'surfaceType'},
    {'1': 'line_string', '3': 15, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 16, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'bbox', '3': 17, '4': 3, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '4': [RoadSection_RoadDirection$json, RoadSection_RoadSectionActiveStatus$json],
  '8': [
    {'1': 'Geometry'},
    {'1': '_end_date'},
    {'1': '_beginning_cross_street'},
    {'1': '_ending_cross_street'},
  ],
};

@$core.Deprecated('Use roadSectionDescriptor instead')
const RoadSection_RoadDirection$json = {
  '1': 'RoadDirection',
  '2': [
    {'1': 'ROAD_DIRECTION_BOTH', '2': 0},
    {'1': 'ROAD_DIRECTION_NORTHBOUND', '2': 1},
    {'1': 'ROAD_DIRECTION_SOUTHBOUND', '2': 2},
    {'1': 'ROAD_DIRECTION_EASTBOUND', '2': 3},
    {'1': 'ROAD_DIRECTION_WESTBOUND', '2': 4},
  ],
};

@$core.Deprecated('Use roadSectionDescriptor instead')
const RoadSection_RoadSectionActiveStatus$json = {
  '1': 'RoadSectionActiveStatus',
  '2': [
    {'1': 'ROAD_SECTION_ACTIVE_STATUS_ACTIVE', '2': 0},
    {'1': 'ROAD_SECTION_ACTIVE_STATUS_INACTIVE', '2': 1},
  ],
};

/// Descriptor for `RoadSection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSectionDescriptor = $convert.base64Decode(
    'CgtSb2FkU2VjdGlvbhIdCgpwcm9qZWN0X2lkGAEgASgEUglwcm9qZWN0SWQSOgoJZGlyZWN0aW'
    '9uGAIgASgOMhwuZGF0YWh1Yi52MS5Sb2Fkd2F5RGlyZWN0aW9uUglkaXJlY3Rpb24SEgoEbmFt'
    'ZRgDIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24SUgoMYXJtZW'
    'Rfc3RhdHVzGAUgASgOMi8uZGF0YWh1Yi52MS5Sb2FkU2VjdGlvbi5Sb2FkU2VjdGlvbkFjdGl2'
    'ZVN0YXR1c1ILYXJtZWRTdGF0dXMSOQoKc3RhcnRfZGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSCXN0YXJ0RGF0ZRI6CghlbmRfZGF0ZRgHIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBIAVIHZW5kRGF0ZYgBARI1CglhcmVhX3R5cGUYCCABKA4yGC5kYXRhaH'
    'ViLnYxLldvcmtab25lVHlwZVIIYXJlYVR5cGUSHQoKcm9hZF9uYW1lcxgJIAMoCVIJcm9hZE5h'
    'bWVzEjkKFmJlZ2lubmluZ19jcm9zc19zdHJlZXQYCiABKA1IAlIUYmVnaW5uaW5nQ3Jvc3NTdH'
    'JlZXSIAQESMwoTZW5kaW5nX2Nyb3NzX3N0cmVldBgLIAEoDUgDUhFlbmRpbmdDcm9zc1N0cmVl'
    'dIgBARItChJiZWdpbm5pbmdfbWlsZXBvc3QYDCABKA1SEWJlZ2lubmluZ01pbGVwb3N0EicKD2'
    'VuZGluZ19taWxlcG9zdBgNIAEoDVIOZW5kaW5nTWlsZXBvc3QSPgoMc3VyZmFjZV90eXBlGA4g'
    'ASgOMhsuZGF0YWh1Yi52MS5Sb2FkU3VyZmFjZVR5cGVSC3N1cmZhY2VUeXBlEkEKC2xpbmVfc3'
    'RyaW5nGA8gASgLMh4uZGF0YWh1Yi52MS5MaW5lU3RyaW5nR2VvbWV0cnlIAFIKbGluZVN0cmlu'
    'ZxI3Cgdwb2x5Z29uGBAgASgLMhsuZGF0YWh1Yi52MS5Qb2x5Z29uR2VvbWV0cnlIAFIHcG9seW'
    'dvbhIrCgRiYm94GBEgAygLMhcuZGF0YWh1Yi52MS5Cb3VuZGluZ0JveFIEYmJveCKiAQoNUm9h'
    'ZERpcmVjdGlvbhIXChNST0FEX0RJUkVDVElPTl9CT1RIEAASHQoZUk9BRF9ESVJFQ1RJT05fTk'
    '9SVEhCT1VORBABEh0KGVJPQURfRElSRUNUSU9OX1NPVVRIQk9VTkQQAhIcChhST0FEX0RJUkVD'
    'VElPTl9FQVNUQk9VTkQQAxIcChhST0FEX0RJUkVDVElPTl9XRVNUQk9VTkQQBCJpChdSb2FkU2'
    'VjdGlvbkFjdGl2ZVN0YXR1cxIlCiFST0FEX1NFQ1RJT05fQUNUSVZFX1NUQVRVU19BQ1RJVkUQ'
    'ABInCiNST0FEX1NFQ1RJT05fQUNUSVZFX1NUQVRVU19JTkFDVElWRRABQgoKCEdlb21ldHJ5Qg'
    'sKCV9lbmRfZGF0ZUIZChdfYmVnaW5uaW5nX2Nyb3NzX3N0cmVldEIWChRfZW5kaW5nX2Nyb3Nz'
    'X3N0cmVldA==');

