//
//  Generated code. Do not modify.
//  source: delay.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use delayDescriptor instead')
const Delay$json = {
  '1': 'Delay',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '10': 'roadSectionId'},
    {'1': 'lanes', '3': 3, '4': 3, '5': 11, '6': '.datahub.v1.Lane', '10': 'lanes'},
    {'1': 'reduced_speed_limit_kph', '3': 4, '4': 1, '5': 2, '10': 'reducedSpeedLimitKph'},
    {'1': 'restrictions', '3': 5, '4': 3, '5': 11, '6': '.datahub.v1.Restriction', '10': 'restrictions'},
  ],
};

/// Descriptor for `Delay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delayDescriptor = $convert.base64Decode(
    'CgVEZWxheRIdCgpwcm9qZWN0X2lkGAEgASgEUglwcm9qZWN0SWQSJgoPcm9hZF9zZWN0aW9uX2'
    'lkGAIgASgEUg1yb2FkU2VjdGlvbklkEiYKBWxhbmVzGAMgAygLMhAuZGF0YWh1Yi52MS5MYW5l'
    'UgVsYW5lcxI1ChdyZWR1Y2VkX3NwZWVkX2xpbWl0X2twaBgEIAEoAlIUcmVkdWNlZFNwZWVkTG'
    'ltaXRLcGgSOwoMcmVzdHJpY3Rpb25zGAUgAygLMhcuZGF0YWh1Yi52MS5SZXN0cmljdGlvblIM'
    'cmVzdHJpY3Rpb25z');

@$core.Deprecated('Use delayCreatedDescriptor instead')
const DelayCreated$json = {
  '1': 'DelayCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'delay', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Delay', '10': 'delay'},
    {'1': 'created_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
};

/// Descriptor for `DelayCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delayCreatedDescriptor = $convert.base64Decode(
    'CgxEZWxheUNyZWF0ZWQSDgoCaWQYASABKARSAmlkEicKBWRlbGF5GAIgASgLMhEuZGF0YWh1Yi'
    '52MS5EZWxheVIFZGVsYXkSPQoMY3JlYXRlZF90aW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFILY3JlYXRlZFRpbWU=');

@$core.Deprecated('Use delayUpdatedDescriptor instead')
const DelayUpdated$json = {
  '1': 'DelayUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'delay', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.Delay', '10': 'delay'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `DelayUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delayUpdatedDescriptor = $convert.base64Decode(
    'CgxEZWxheVVwZGF0ZWQSDgoCaWQYASABKARSAmlkEicKBWRlbGF5GAIgASgLMhEuZGF0YWh1Yi'
    '52MS5EZWxheVIFZGVsYXkSPQoMdXBkYXRlZF90aW1lGAMgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFILdXBkYXRlZFRpbWU=');

