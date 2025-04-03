//
//  Generated code. Do not modify.
//  source: datahub_to_wzam.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reportStateDescriptor instead')
const ReportState$json = {
  '1': 'ReportState',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'report', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Report', '10': 'report'},
    {'1': 'created_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `ReportState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportStateDescriptor = $convert.base64Decode(
    'CgtSZXBvcnRTdGF0ZRIOCgJpZBgBIAEoBFICaWQSKgoGcmVwb3J0GAIgASgLMhIuZGF0YWh1Yi'
    '52MS5SZXBvcnRSBnJlcG9ydBI9CgxjcmVhdGVkX3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9i'
    'dWYuVGltZXN0YW1wUgtjcmVhdGVkVGltZRI9Cgx1cGRhdGVkX3RpbWUYBCABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZQ==');

@$core.Deprecated('Use recordingStateDescriptor instead')
const RecordingState$json = {
  '1': 'RecordingState',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'recording', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Recording', '10': 'recording'},
    {'1': 'created_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `RecordingState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingStateDescriptor = $convert.base64Decode(
    'Cg5SZWNvcmRpbmdTdGF0ZRIOCgJpZBgBIAEoBFICaWQSMwoJcmVjb3JkaW5nGAIgASgLMhUuZG'
    'F0YWh1Yi52MS5SZWNvcmRpbmdSCXJlY29yZGluZxI9CgxjcmVhdGVkX3RpbWUYAyABKAsyGi5n'
    'b29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtjcmVhdGVkVGltZRI9Cgx1cGRhdGVkX3RpbWUYBC'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZQ==');

@$core.Deprecated('Use projectStateDescriptor instead')
const ProjectState$json = {
  '1': 'ProjectState',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'project', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'created_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `ProjectState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectStateDescriptor = $convert.base64Decode(
    'CgxQcm9qZWN0U3RhdGUSDgoCaWQYASABKARSAmlkEi0KB3Byb2plY3QYAiABKAsyEy5kYXRhaH'
    'ViLnYxLlByb2plY3RSB3Byb2plY3QSPQoMY3JlYXRlZF90aW1lGAMgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFILY3JlYXRlZFRpbWUSPQoMdXBkYXRlZF90aW1lGAQgASgLMhouZ2'
    '9vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWU=');

@$core.Deprecated('Use workZoneStateDescriptor instead')
const WorkZoneState$json = {
  '1': 'WorkZoneState',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'work_zone', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'road_sub_events', '3': 3, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvents'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
    {'1': 'updated_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `WorkZoneState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workZoneStateDescriptor = $convert.base64Decode(
    'Cg1Xb3JrWm9uZVN0YXRlEg4KAmlkGAEgASgEUgJpZBIxCgl3b3JrX3pvbmUYAiABKAsyFC5kYX'
    'RhaHViLnYxLldvcmtab25lUgh3b3JrWm9uZRJACg9yb2FkX3N1Yl9ldmVudHMYAyADKAsyGC5k'
    'YXRhaHViLnYxLlJvYWRTdWJFdmVudFINcm9hZFN1YkV2ZW50cxI9CgxjcmVhdGVkX3RpbWUYBC'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtjcmVhdGVkVGltZRI9Cgx1cGRhdGVk'
    'X3RpbWUYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZQ==');

