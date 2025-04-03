//
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 3.3

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
    {'1': 'active_status', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.Project.ProjectActiveStatus', '10': 'activeStatus'},
    {'1': 'creation_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'creationDate'},
    {'1': 'start_date', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDate'},
  ],
  '4': [Project_ProjectActiveStatus$json],
};

@$core.Deprecated('Use projectDescriptor instead')
const Project_ProjectActiveStatus$json = {
  '1': 'ProjectActiveStatus',
  '2': [
    {'1': 'PROJECT_ACTIVE_STATUS_ACTIVE', '2': 0},
    {'1': 'PROJECT_ACTIVE_STATUS_SUSPENDED', '2': 1},
  ],
};

/// Descriptor for `Project`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectDescriptor = $convert.base64Decode(
    'CgdQcm9qZWN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2'
    'NyaXB0aW9uEkwKDWFjdGl2ZV9zdGF0dXMYAyABKA4yJy5kYXRhaHViLnYxLlByb2plY3QuUHJv'
    'amVjdEFjdGl2ZVN0YXR1c1IMYWN0aXZlU3RhdHVzEj8KDWNyZWF0aW9uX2RhdGUYBCABKAsyGi'
    '5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgxjcmVhdGlvbkRhdGUSOQoKc3RhcnRfZGF0ZRgF'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0RGF0ZRI1CghlbmRfZGF0ZR'
    'gGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB2VuZERhdGUiXAoTUHJvamVjdEFj'
    'dGl2ZVN0YXR1cxIgChxQUk9KRUNUX0FDVElWRV9TVEFUVVNfQUNUSVZFEAASIwofUFJPSkVDVF'
    '9BQ1RJVkVfU1RBVFVTX1NVU1BFTkRFRBAB');

