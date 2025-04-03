//
//  Generated code. Do not modify.
//  source: wzam_to_datahub.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use reportCreatedDescriptor instead')
const ReportCreated$json = {
  '1': 'ReportCreated',
  '2': [
    {'1': 'report', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.Report', '10': 'report'},
    {'1': 'created_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
};

/// Descriptor for `ReportCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportCreatedDescriptor = $convert.base64Decode(
    'Cg1SZXBvcnRDcmVhdGVkEioKBnJlcG9ydBgBIAEoCzISLmRhdGFodWIudjEuUmVwb3J0UgZyZX'
    'BvcnQSPQoMY3JlYXRlZF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIL'
    'Y3JlYXRlZFRpbWU=');

@$core.Deprecated('Use reportUpdatedDescriptor instead')
const ReportUpdated$json = {
  '1': 'ReportUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'report', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Report', '10': 'report'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `ReportUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportUpdatedDescriptor = $convert.base64Decode(
    'Cg1SZXBvcnRVcGRhdGVkEg4KAmlkGAEgASgEUgJpZBIqCgZyZXBvcnQYAiABKAsyEi5kYXRhaH'
    'ViLnYxLlJlcG9ydFIGcmVwb3J0Ej0KDHVwZGF0ZWRfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBSC3VwZGF0ZWRUaW1l');

@$core.Deprecated('Use recordingCreatedDescriptor instead')
const RecordingCreated$json = {
  '1': 'RecordingCreated',
  '2': [
    {'1': 'recording', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.Recording', '10': 'recording'},
    {'1': 'created_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
};

/// Descriptor for `RecordingCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingCreatedDescriptor = $convert.base64Decode(
    'ChBSZWNvcmRpbmdDcmVhdGVkEjMKCXJlY29yZGluZxgBIAEoCzIVLmRhdGFodWIudjEuUmVjb3'
    'JkaW5nUglyZWNvcmRpbmcSPQoMY3JlYXRlZF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFILY3JlYXRlZFRpbWU=');

