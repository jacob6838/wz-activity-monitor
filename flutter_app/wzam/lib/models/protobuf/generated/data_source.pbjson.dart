//
//  Generated code. Do not modify.
//  source: data_source.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataSourceDescriptor instead')
const DataSource$json = {
  '1': 'DataSource',
  '2': [
    {'1': 'organization_name', '3': 1, '4': 1, '5': 9, '10': 'organizationName'},
    {'1': 'contact_name', '3': 2, '4': 1, '5': 9, '10': 'contactName'},
    {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'update_frequency_ms', '3': 4, '4': 1, '5': 13, '10': 'updateFrequencyMs'},
  ],
};

/// Descriptor for `DataSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceDescriptor = $convert.base64Decode(
    'CgpEYXRhU291cmNlEisKEW9yZ2FuaXphdGlvbl9uYW1lGAEgASgJUhBvcmdhbml6YXRpb25OYW'
    '1lEiEKDGNvbnRhY3RfbmFtZRgCIAEoCVILY29udGFjdE5hbWUSIwoNY29udGFjdF9lbWFpbBgD'
    'IAEoCVIMY29udGFjdEVtYWlsEi4KE3VwZGF0ZV9mcmVxdWVuY3lfbXMYBCABKA1SEXVwZGF0ZU'
    'ZyZXF1ZW5jeU1z');

@$core.Deprecated('Use dataSourceCreatedDescriptor instead')
const DataSourceCreated$json = {
  '1': 'DataSourceCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'data_source', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.DataSource', '10': 'dataSource'},
    {'1': 'created_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
};

/// Descriptor for `DataSourceCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceCreatedDescriptor = $convert.base64Decode(
    'ChFEYXRhU291cmNlQ3JlYXRlZBIOCgJpZBgBIAEoBFICaWQSNwoLZGF0YV9zb3VyY2UYAiABKA'
    'syFi5kYXRhaHViLnYxLkRhdGFTb3VyY2VSCmRhdGFTb3VyY2USPQoMY3JlYXRlZF90aW1lGAMg'
    'ASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILY3JlYXRlZFRpbWU=');

@$core.Deprecated('Use dataSourceUpdatedDescriptor instead')
const DataSourceUpdated$json = {
  '1': 'DataSourceUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'data_source', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.DataSource', '10': 'dataSource'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `DataSourceUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceUpdatedDescriptor = $convert.base64Decode(
    'ChFEYXRhU291cmNlVXBkYXRlZBIOCgJpZBgBIAEoBFICaWQSNwoLZGF0YV9zb3VyY2UYAiABKA'
    'syFi5kYXRhaHViLnYxLkRhdGFTb3VyY2VSCmRhdGFTb3VyY2USPQoMdXBkYXRlZF90aW1lGAMg'
    'ASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWU=');

