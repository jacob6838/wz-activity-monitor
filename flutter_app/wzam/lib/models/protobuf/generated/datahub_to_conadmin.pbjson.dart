//
//  Generated code. Do not modify.
//  source: datahub_to_conadmin.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use updateVehicleLocationDescriptor instead')
const UpdateVehicleLocation$json = {
  '1': 'UpdateVehicleLocation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'vehicle_location', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.VehicleLocation', '10': 'vehicleLocation'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `UpdateVehicleLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateVehicleLocationDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVWZWhpY2xlTG9jYXRpb24SDgoCaWQYASABKARSAmlkEkYKEHZlaGljbGVfbG9jYX'
    'Rpb24YAiABKAsyGy5kYXRhaHViLnYxLlZlaGljbGVMb2NhdGlvblIPdmVoaWNsZUxvY2F0aW9u'
    'Ej0KDHVwZGF0ZWRfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3VwZG'
    'F0ZWRUaW1l');

@$core.Deprecated('Use createFieldDeviceDescriptor instead')
const CreateFieldDevice$json = {
  '1': 'CreateFieldDevice',
  '2': [
    {'1': 'field_device', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'fieldDevice'},
    {'1': 'updated_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
    {'1': 'request_id', '3': 3, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CreateFieldDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createFieldDeviceDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVGaWVsZERldmljZRI6CgxmaWVsZF9kZXZpY2UYASABKAsyFy5kYXRhaHViLnYxLk'
    'ZpZWxkRGV2aWNlUgtmaWVsZERldmljZRI9Cgx1cGRhdGVkX3RpbWUYAiABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZRIdCgpyZXF1ZXN0X2lkGAMgASgEUglyZX'
    'F1ZXN0SWQ=');

@$core.Deprecated('Use updateFieldDeviceDescriptor instead')
const UpdateFieldDevice$json = {
  '1': 'UpdateFieldDevice',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'field_device', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'fieldDevice'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
    {'1': 'request_id', '3': 4, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `UpdateFieldDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateFieldDeviceDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVGaWVsZERldmljZRIOCgJpZBgBIAEoBFICaWQSOgoMZmllbGRfZGV2aWNlGAIgAS'
    'gLMhcuZGF0YWh1Yi52MS5GaWVsZERldmljZVILZmllbGREZXZpY2USPQoMdXBkYXRlZF90aW1l'
    'GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWUSHQoKcmVxdW'
    'VzdF9pZBgEIAEoBFIJcmVxdWVzdElk');

@$core.Deprecated('Use createWorkZoneDescriptor instead')
const CreateWorkZone$json = {
  '1': 'CreateWorkZone',
  '2': [
    {'1': 'work_zone', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'request_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
    {'1': 'road_sub_events_to_create', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.CreateRoadSection', '10': 'roadSubEventsToCreate'},
    {'1': 'request_id', '3': 7, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CreateWorkZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWorkZoneDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVXb3JrWm9uZRIxCgl3b3JrX3pvbmUYASABKAsyFC5kYXRhaHViLnYxLldvcmtab2'
    '5lUgh3b3JrWm9uZRI9CgxyZXF1ZXN0X3RpbWUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUgtyZXF1ZXN0VGltZRI3CgZzb3VyY2UYAyABKAsyHy5kYXRhaHViLnYxLkRhdGFIdW'
    'JVcGRhdGVTb3VyY2VSBnNvdXJjZRJXChlyb2FkX3N1Yl9ldmVudHNfdG9fY3JlYXRlGAQgAygL'
    'Mh0uZGF0YWh1Yi52MS5DcmVhdGVSb2FkU2VjdGlvblIVcm9hZFN1YkV2ZW50c1RvQ3JlYXRlEh'
    '0KCnJlcXVlc3RfaWQYByABKARSCXJlcXVlc3RJZA==');

@$core.Deprecated('Use updateWorkZoneDescriptor instead')
const UpdateWorkZone$json = {
  '1': 'UpdateWorkZone',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'work_zone', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'request_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
    {'1': 'create_road_sub_events', '3': 5, '4': 3, '5': 11, '6': '.datahub.v1.CreateRoadSection', '10': 'createRoadSubEvents'},
    {'1': 'update_road_sub_events', '3': 6, '4': 3, '5': 11, '6': '.datahub.v1.UpdateRoadSection', '10': 'updateRoadSubEvents'},
    {'1': 'remove_road_sub_events', '3': 7, '4': 3, '5': 11, '6': '.datahub.v1.RemoveRoadSection', '10': 'removeRoadSubEvents'},
    {'1': 'request_id', '3': 8, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `UpdateWorkZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWorkZoneDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVXb3JrWm9uZRIOCgJpZBgBIAEoBFICaWQSMQoJd29ya196b25lGAIgASgLMhQuZG'
    'F0YWh1Yi52MS5Xb3JrWm9uZVIId29ya1pvbmUSPQoMcmVxdWVzdF90aW1lGAMgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdFRpbWUSNwoGc291cmNlGAQgASgLMh8uZG'
    'F0YWh1Yi52MS5EYXRhSHViVXBkYXRlU291cmNlUgZzb3VyY2USUgoWY3JlYXRlX3JvYWRfc3Vi'
    'X2V2ZW50cxgFIAMoCzIdLmRhdGFodWIudjEuQ3JlYXRlUm9hZFNlY3Rpb25SE2NyZWF0ZVJvYW'
    'RTdWJFdmVudHMSUgoWdXBkYXRlX3JvYWRfc3ViX2V2ZW50cxgGIAMoCzIdLmRhdGFodWIudjEu'
    'VXBkYXRlUm9hZFNlY3Rpb25SE3VwZGF0ZVJvYWRTdWJFdmVudHMSUgoWcmVtb3ZlX3JvYWRfc3'
    'ViX2V2ZW50cxgHIAMoCzIdLmRhdGFodWIudjEuUmVtb3ZlUm9hZFNlY3Rpb25SE3JlbW92ZVJv'
    'YWRTdWJFdmVudHMSHQoKcmVxdWVzdF9pZBgIIAEoBFIJcmVxdWVzdElk');

@$core.Deprecated('Use createRoadSectionDescriptor instead')
const CreateRoadSection$json = {
  '1': 'CreateRoadSection',
  '2': [
    {'1': 'road_sub_event', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'request_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
    {'1': 'request_id', '3': 4, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `CreateRoadSection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoadSectionDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSb2FkU2VjdGlvbhI+Cg5yb2FkX3N1Yl9ldmVudBgBIAEoCzIYLmRhdGFodWIudj'
    'EuUm9hZFN1YkV2ZW50Ugxyb2FkU3ViRXZlbnQSPQoMcmVxdWVzdF90aW1lGAIgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdFRpbWUSNwoGc291cmNlGAMgASgLMh8uZG'
    'F0YWh1Yi52MS5EYXRhSHViVXBkYXRlU291cmNlUgZzb3VyY2USHQoKcmVxdWVzdF9pZBgEIAEo'
    'BFIJcmVxdWVzdElk');

@$core.Deprecated('Use updateRoadSectionDescriptor instead')
const UpdateRoadSection$json = {
  '1': 'UpdateRoadSection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'road_sub_event', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'request_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
    {'1': 'request_id', '3': 5, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `UpdateRoadSection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoadSectionDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVSb2FkU2VjdGlvbhIOCgJpZBgBIAEoBFICaWQSPgoOcm9hZF9zdWJfZXZlbnQYAi'
    'ABKAsyGC5kYXRhaHViLnYxLlJvYWRTdWJFdmVudFIMcm9hZFN1YkV2ZW50Ej0KDHJlcXVlc3Rf'
    'dGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RUaW1lEjcKBn'
    'NvdXJjZRgEIAEoCzIfLmRhdGFodWIudjEuRGF0YUh1YlVwZGF0ZVNvdXJjZVIGc291cmNlEh0K'
    'CnJlcXVlc3RfaWQYBSABKARSCXJlcXVlc3RJZA==');

@$core.Deprecated('Use removeRoadSectionDescriptor instead')
const RemoveRoadSection$json = {
  '1': 'RemoveRoadSection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'road_sub_event', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'request_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
    {'1': 'request_id', '3': 5, '4': 1, '5': 4, '10': 'requestId'},
  ],
};

/// Descriptor for `RemoveRoadSection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRoadSectionDescriptor = $convert.base64Decode(
    'ChFSZW1vdmVSb2FkU2VjdGlvbhIOCgJpZBgBIAEoBFICaWQSPgoOcm9hZF9zdWJfZXZlbnQYAi'
    'ABKAsyGC5kYXRhaHViLnYxLlJvYWRTdWJFdmVudFIMcm9hZFN1YkV2ZW50Ej0KDHJlcXVlc3Rf'
    'dGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RUaW1lEjcKBn'
    'NvdXJjZRgEIAEoCzIfLmRhdGFodWIudjEuRGF0YUh1YlVwZGF0ZVNvdXJjZVIGc291cmNlEh0K'
    'CnJlcXVlc3RfaWQYBSABKARSCXJlcXVlc3RJZA==');

@$core.Deprecated('Use reportSummaryDescriptor instead')
const ReportSummary$json = {
  '1': 'ReportSummary',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'report_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'reportDate'},
    {'1': 'contact_name', '3': 5, '4': 1, '5': 9, '10': 'contactName'},
    {'1': 'contact_phone', '3': 6, '4': 1, '5': 9, '10': 'contactPhone'},
  ],
};

/// Descriptor for `ReportSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportSummaryDescriptor = $convert.base64Decode(
    'Cg1SZXBvcnRTdW1tYXJ5Eg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2'
    'Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI7CgtyZXBvcnRfZGF0ZRgEIAEoCzIaLmdv'
    'b2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlcG9ydERhdGUSIQoMY29udGFjdF9uYW1lGAUgAS'
    'gJUgtjb250YWN0TmFtZRIjCg1jb250YWN0X3Bob25lGAYgASgJUgxjb250YWN0UGhvbmU=');

@$core.Deprecated('Use recordingSummaryDescriptor instead')
const RecordingSummary$json = {
  '1': 'RecordingSummary',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'report_date', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'reportDate'},
    {'1': 'length_meters', '3': 5, '4': 1, '5': 1, '10': 'lengthMeters'},
    {'1': 'position_accuracy_meters', '3': 6, '4': 1, '5': 1, '10': 'positionAccuracyMeters'},
  ],
};

/// Descriptor for `RecordingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingSummaryDescriptor = $convert.base64Decode(
    'ChBSZWNvcmRpbmdTdW1tYXJ5Eg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEi'
    'AKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI7CgtyZXBvcnRfZGF0ZRgEIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlcG9ydERhdGUSIwoNbGVuZ3RoX21ldGVycx'
    'gFIAEoAVIMbGVuZ3RoTWV0ZXJzEjgKGHBvc2l0aW9uX2FjY3VyYWN5X21ldGVycxgGIAEoAVIW'
    'cG9zaXRpb25BY2N1cmFjeU1ldGVycw==');

@$core.Deprecated('Use fieldDeviceSummaryArrayDescriptor instead')
const FieldDeviceSummaryArray$json = {
  '1': 'FieldDeviceSummaryArray',
  '2': [
    {'1': 'field_device_summary', '3': 1, '4': 3, '5': 11, '6': '.datahub.v1.FieldDeviceSummary', '10': 'fieldDeviceSummary'},
  ],
};

/// Descriptor for `FieldDeviceSummaryArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceSummaryArrayDescriptor = $convert.base64Decode(
    'ChdGaWVsZERldmljZVN1bW1hcnlBcnJheRJQChRmaWVsZF9kZXZpY2Vfc3VtbWFyeRgBIAMoCz'
    'IeLmRhdGFodWIudjEuRmllbGREZXZpY2VTdW1tYXJ5UhJmaWVsZERldmljZVN1bW1hcnk=');

@$core.Deprecated('Use fieldDeviceSummaryDescriptor instead')
const FieldDeviceSummary$json = {
  '1': 'FieldDeviceSummary',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'device', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'device'},
    {'1': 'update_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updateDate'},
  ],
};

/// Descriptor for `FieldDeviceSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceSummaryDescriptor = $convert.base64Decode(
    'ChJGaWVsZERldmljZVN1bW1hcnkSDgoCaWQYASABKARSAmlkEi8KBmRldmljZRgCIAEoCzIXLm'
    'RhdGFodWIudjEuRmllbGREZXZpY2VSBmRldmljZRI7Cgt1cGRhdGVfZGF0ZRgDIAEoCzIaLmdv'
    'b2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use dataHubUpdateSourceDescriptor instead')
const DataHubUpdateSource$json = {
  '1': 'DataHubUpdateSource',
  '2': [
    {'1': 'report_summary', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.ReportSummary', '9': 0, '10': 'reportSummary'},
    {'1': 'recording_summary', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.RecordingSummary', '9': 0, '10': 'recordingSummary'},
    {'1': 'field_device_summaries', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.FieldDeviceSummaryArray', '9': 0, '10': 'fieldDeviceSummaries'},
  ],
  '8': [
    {'1': 'source'},
  ],
};

/// Descriptor for `DataHubUpdateSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataHubUpdateSourceDescriptor = $convert.base64Decode(
    'ChNEYXRhSHViVXBkYXRlU291cmNlEkIKDnJlcG9ydF9zdW1tYXJ5GAEgASgLMhkuZGF0YWh1Yi'
    '52MS5SZXBvcnRTdW1tYXJ5SABSDXJlcG9ydFN1bW1hcnkSSwoRcmVjb3JkaW5nX3N1bW1hcnkY'
    'AiABKAsyHC5kYXRhaHViLnYxLlJlY29yZGluZ1N1bW1hcnlIAFIQcmVjb3JkaW5nU3VtbWFyeR'
    'JbChZmaWVsZF9kZXZpY2Vfc3VtbWFyaWVzGAMgASgLMiMuZGF0YWh1Yi52MS5GaWVsZERldmlj'
    'ZVN1bW1hcnlBcnJheUgAUhRmaWVsZERldmljZVN1bW1hcmllc0IICgZzb3VyY2U=');

