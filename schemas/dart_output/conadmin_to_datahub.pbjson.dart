//
//  Generated code. Do not modify.
//  source: conadmin_to_datahub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fieldDeviceAssociationChangedDescriptor instead')
const FieldDeviceAssociationChanged$json = {
  '1': 'FieldDeviceAssociationChanged',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'projectId', '17': true},
    {'1': 'segment_id', '3': 3, '4': 1, '5': 4, '9': 1, '10': 'segmentId', '17': true},
    {'1': 'area_id', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'areaId', '17': true},
    {'1': 'field_device', '3': 5, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'fieldDevice'},
    {'1': 'updated_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_project_id'},
    {'1': '_segment_id'},
    {'1': '_area_id'},
  ],
};

/// Descriptor for `FieldDeviceAssociationChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceAssociationChangedDescriptor = $convert.base64Decode(
    'Ch1GaWVsZERldmljZUFzc29jaWF0aW9uQ2hhbmdlZBIOCgJpZBgBIAEoBFICaWQSIgoKcHJvam'
    'VjdF9pZBgCIAEoBEgAUglwcm9qZWN0SWSIAQESIgoKc2VnbWVudF9pZBgDIAEoBEgBUglzZWdt'
    'ZW50SWSIAQESHAoHYXJlYV9pZBgEIAEoBEgCUgZhcmVhSWSIAQESOgoMZmllbGRfZGV2aWNlGA'
    'UgASgLMhcuZGF0YWh1Yi52MS5GaWVsZERldmljZVILZmllbGREZXZpY2USPQoMdXBkYXRlZF90'
    'aW1lGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWVCDQoLX3'
    'Byb2plY3RfaWRCDQoLX3NlZ21lbnRfaWRCCgoIX2FyZWFfaWQ=');

@$core.Deprecated('Use requestRejectedDescriptor instead')
const RequestRejected$json = {
  '1': 'RequestRejected',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'rejected_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'rejectedTime'},
  ],
};

/// Descriptor for `RequestRejected`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestRejectedDescriptor = $convert.base64Decode(
    'Cg9SZXF1ZXN0UmVqZWN0ZWQSDgoCaWQYASABKARSAmlkEhYKBnJlYXNvbhgCIAEoCVIGcmVhc2'
    '9uEj8KDXJlamVjdGVkX3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgxy'
    'ZWplY3RlZFRpbWU=');

@$core.Deprecated('Use projectCreatedDescriptor instead')
const ProjectCreated$json = {
  '1': 'ProjectCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ProjectCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectCreatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0Q3JlYXRlZBIOCgJpZBgBIAEoBFICaWQSIgoKcmVxdWVzdF9pZBgCIAEoBEgAUg'
    'lyZXF1ZXN0SWSIAQESLQoHcHJvamVjdBgDIAEoCzITLmRhdGFodWIudjEuUHJvamVjdFIHcHJv'
    'amVjdBI9CgxjcmVhdGVkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'tjcmVhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use projectUpdatedDescriptor instead')
const ProjectUpdated$json = {
  '1': 'ProjectUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ProjectUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectUpdatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0VXBkYXRlZBIOCgJpZBgBIAEoBFICaWQSIgoKcmVxdWVzdF9pZBgCIAEoBEgAUg'
    'lyZXF1ZXN0SWSIAQESLQoHcHJvamVjdBgDIAEoCzITLmRhdGFodWIudjEuUHJvamVjdFIHcHJv'
    'amVjdBI9Cgx1cGRhdGVkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    't1cGRhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use roadSegmentCreatedDescriptor instead')
const RoadSegmentCreated$json = {
  '1': 'RoadSegmentCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'road_segment', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.RoadSection', '10': 'roadSegment'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `RoadSegmentCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSegmentCreatedDescriptor = $convert.base64Decode(
    'ChJSb2FkU2VnbWVudENyZWF0ZWQSDgoCaWQYASABKARSAmlkEiIKCnJlcXVlc3RfaWQYAiABKA'
    'RIAFIJcmVxdWVzdElkiAEBEjoKDHJvYWRfc2VnbWVudBgDIAEoCzIXLmRhdGFodWIudjEuUm9h'
    'ZFNlY3Rpb25SC3JvYWRTZWdtZW50Ej0KDGNyZWF0ZWRfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSC2NyZWF0ZWRUaW1lQg0KC19yZXF1ZXN0X2lk');

@$core.Deprecated('Use roadSegmentUpdatedDescriptor instead')
const RoadSegmentUpdated$json = {
  '1': 'RoadSegmentUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'road_segment', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.RoadSection', '10': 'roadSegment'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `RoadSegmentUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSegmentUpdatedDescriptor = $convert.base64Decode(
    'ChJSb2FkU2VnbWVudFVwZGF0ZWQSDgoCaWQYASABKARSAmlkEiIKCnJlcXVlc3RfaWQYAiABKA'
    'RIAFIJcmVxdWVzdElkiAEBEjoKDHJvYWRfc2VnbWVudBgDIAEoCzIXLmRhdGFodWIudjEuUm9h'
    'ZFNlY3Rpb25SC3JvYWRTZWdtZW50Ej0KDHVwZGF0ZWRfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSC3VwZGF0ZWRUaW1lQg0KC19yZXF1ZXN0X2lk');

@$core.Deprecated('Use activityAreaCreatedDescriptor instead')
const ActivityAreaCreated$json = {
  '1': 'ActivityAreaCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'activity_area', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.ActivityArea', '10': 'activityArea'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ActivityAreaCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityAreaCreatedDescriptor = $convert.base64Decode(
    'ChNBY3Rpdml0eUFyZWFDcmVhdGVkEg4KAmlkGAEgASgEUgJpZBIiCgpyZXF1ZXN0X2lkGAIgAS'
    'gESABSCXJlcXVlc3RJZIgBARI9Cg1hY3Rpdml0eV9hcmVhGAMgASgLMhguZGF0YWh1Yi52MS5B'
    'Y3Rpdml0eUFyZWFSDGFjdGl2aXR5QXJlYRI9CgxjcmVhdGVkX3RpbWUYBCABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgtjcmVhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use activityAreaUpdatedDescriptor instead')
const ActivityAreaUpdated$json = {
  '1': 'ActivityAreaUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'activity_area', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.ActivityArea', '10': 'activityArea'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ActivityAreaUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityAreaUpdatedDescriptor = $convert.base64Decode(
    'ChNBY3Rpdml0eUFyZWFVcGRhdGVkEg4KAmlkGAEgASgEUgJpZBIiCgpyZXF1ZXN0X2lkGAIgAS'
    'gESABSCXJlcXVlc3RJZIgBARI9Cg1hY3Rpdml0eV9hcmVhGAMgASgLMhguZGF0YWh1Yi52MS5B'
    'Y3Rpdml0eUFyZWFSDGFjdGl2aXR5QXJlYRI9Cgx1cGRhdGVkX3RpbWUYBCABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

