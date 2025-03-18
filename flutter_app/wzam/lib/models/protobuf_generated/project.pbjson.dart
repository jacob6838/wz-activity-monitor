//
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use projectDescriptor instead')
const Project$json = {
  '1': 'Project',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'active_status', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.Project.ProjectStatus', '10': 'activeStatus'},
    {'1': 'creation_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'creationDate'},
    {'1': 'start_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
    {'1': 'area_type', '3': 7, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'line_strings', '3': 8, '4': 1, '5': 11, '6': '.datahub.v1.MultiLineStringGeometry', '9': 0, '10': 'lineStrings'},
    {'1': 'polygons', '3': 9, '4': 1, '5': 11, '6': '.datahub.v1.MultiPolygonGeometry', '9': 0, '10': 'polygons'},
    {'1': 'bbox', '3': 10, '4': 1, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '4': [Project_ProjectActiveStatus$json, Project_ProjectStatus$json],
  '8': [
    {'1': 'Geometry'},
  ],
};

@$core.Deprecated('Use projectDescriptor instead')
const Project_ProjectActiveStatus$json = {
  '1': 'ProjectActiveStatus',
  '2': [
    {'1': 'PROJECT_ACTIVE_STATUS_ACTIVE', '2': 0},
    {'1': 'PROJECT_ACTIVE_STATUS_INACTIVE', '2': 1},
  ],
};

@$core.Deprecated('Use projectDescriptor instead')
const Project_ProjectStatus$json = {
  '1': 'ProjectStatus',
  '2': [
    {'1': 'PROJECT_STATUS_ACTIVE', '2': 0},
    {'1': 'PROJECT_STATUS_SUSPENDED', '2': 1},
  ],
};

/// Descriptor for `Project`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDescriptor = $convert.base64Decode(
    'CgdQcm9qZWN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2'
    'NyaXB0aW9uEkYKDWFjdGl2ZV9zdGF0dXMYAyABKA4yIS5kYXRhaHViLnYxLlByb2plY3QuUHJv'
    'amVjdFN0YXR1c1IMYWN0aXZlU3RhdHVzEj8KDWNyZWF0aW9uX2RhdGUYBCABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgxjcmVhdGlvbkRhdGUSOQoKc3RhcnRfZGF0ZRgFIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0RGF0ZRI1CghlbmRfZGF0ZRgGIAEoCz'
    'IaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2VuZERhdGUSNQoJYXJlYV90eXBlGAcgASgO'
    'MhguZGF0YWh1Yi52MS5Xb3JrWm9uZVR5cGVSCGFyZWFUeXBlEkgKDGxpbmVfc3RyaW5ncxgIIA'
    'EoCzIjLmRhdGFodWIudjEuTXVsdGlMaW5lU3RyaW5nR2VvbWV0cnlIAFILbGluZVN0cmluZ3MS'
    'PgoIcG9seWdvbnMYCSABKAsyIC5kYXRhaHViLnYxLk11bHRpUG9seWdvbkdlb21ldHJ5SABSCH'
    'BvbHlnb25zEisKBGJib3gYCiABKAsyFy5kYXRhaHViLnYxLkJvdW5kaW5nQm94UgRiYm94IlsK'
    'E1Byb2plY3RBY3RpdmVTdGF0dXMSIAocUFJPSkVDVF9BQ1RJVkVfU1RBVFVTX0FDVElWRRAAEi'
    'IKHlBST0pFQ1RfQUNUSVZFX1NUQVRVU19JTkFDVElWRRABIkgKDVByb2plY3RTdGF0dXMSGQoV'
    'UFJPSkVDVF9TVEFUVVNfQUNUSVZFEAASHAoYUFJPSkVDVF9TVEFUVVNfU1VTUEVOREVEEAFCCg'
    'oIR2VvbWV0cnk=');

