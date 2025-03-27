//
//  Generated code. Do not modify.
//  source: datahub_to_conadmin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vehicleLocationUpdatedDescriptor instead')
const VehicleLocationUpdated$json = {
  '1': 'VehicleLocationUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'license_plate', '3': 2, '4': 1, '5': 9, '10': 'licensePlate'},
    {'1': 'operation_type', '3': 3, '4': 1, '5': 14, '6': '.datahub.v1.VehicleLocationUpdated.VehicleOperationType', '10': 'operationType'},
    {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '10': 'location'},
    {'1': 'velocity_kph', '3': 5, '4': 1, '5': 1, '10': 'velocityKph'},
    {'1': 'heading', '3': 6, '4': 1, '5': 1, '10': 'heading'},
    {'1': 'timestamp', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
  '4': [VehicleLocationUpdated_VehicleOperationType$json],
};

@$core.Deprecated('Use vehicleLocationUpdatedDescriptor instead')
const VehicleLocationUpdated_VehicleOperationType$json = {
  '1': 'VehicleOperationType',
  '2': [
    {'1': 'VEHICLE_OPERATION_STRIPING', '2': 0},
    {'1': 'VEHICLE_OPERATION_PLOWING', '2': 1},
    {'1': 'VEHICLE_OPERATION_MOWING', '2': 2},
    {'1': 'VEHICLE_OPERATION_COMMUTING', '2': 3},
    {'1': 'VEHICLE_OPERATION_OTHER', '2': 4},
    {'1': 'VEHICLE_OPERATION_UNKNOWN', '2': 5},
  ],
};

/// Descriptor for `VehicleLocationUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vehicleLocationUpdatedDescriptor = $convert.base64Decode(
    'ChZWZWhpY2xlTG9jYXRpb25VcGRhdGVkEg4KAmlkGAEgASgEUgJpZBIjCg1saWNlbnNlX3BsYX'
    'RlGAIgASgJUgxsaWNlbnNlUGxhdGUSXgoOb3BlcmF0aW9uX3R5cGUYAyABKA4yNy5kYXRhaHVi'
    'LnYxLlZlaGljbGVMb2NhdGlvblVwZGF0ZWQuVmVoaWNsZU9wZXJhdGlvblR5cGVSDW9wZXJhdG'
    'lvblR5cGUSNQoIbG9jYXRpb24YBCABKAsyGS5kYXRhaHViLnYxLlBvaW50R2VvbWV0cnlSCGxv'
    'Y2F0aW9uEiEKDHZlbG9jaXR5X2twaBgFIAEoAVILdmVsb2NpdHlLcGgSGAoHaGVhZGluZxgGIA'
    'EoAVIHaGVhZGluZxI4Cgl0aW1lc3RhbXAYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0'
    'YW1wUgl0aW1lc3RhbXAi0AEKFFZlaGljbGVPcGVyYXRpb25UeXBlEh4KGlZFSElDTEVfT1BFUk'
    'FUSU9OX1NUUklQSU5HEAASHQoZVkVISUNMRV9PUEVSQVRJT05fUExPV0lORxABEhwKGFZFSElD'
    'TEVfT1BFUkFUSU9OX01PV0lORxACEh8KG1ZFSElDTEVfT1BFUkFUSU9OX0NPTU1VVElORxADEh'
    'sKF1ZFSElDTEVfT1BFUkFUSU9OX09USEVSEAQSHQoZVkVISUNMRV9PUEVSQVRJT05fVU5LTk9X'
    'ThAF');

@$core.Deprecated('Use fieldDeviceCreateRequestDescriptor instead')
const FieldDeviceCreateRequest$json = {
  '1': 'FieldDeviceCreateRequest',
  '2': [
    {'1': 'field_device', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'fieldDevice'},
    {'1': 'updated_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `FieldDeviceCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceCreateRequestDescriptor = $convert.base64Decode(
    'ChhGaWVsZERldmljZUNyZWF0ZVJlcXVlc3QSOgoMZmllbGRfZGV2aWNlGAEgASgLMhcuZGF0YW'
    'h1Yi52MS5GaWVsZERldmljZVILZmllbGREZXZpY2USPQoMdXBkYXRlZF90aW1lGAIgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWU=');

@$core.Deprecated('Use fieldDeviceUpdateRequestDescriptor instead')
const FieldDeviceUpdateRequest$json = {
  '1': 'FieldDeviceUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'field_device', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.FieldDevice', '10': 'fieldDevice'},
    {'1': 'updated_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
};

/// Descriptor for `FieldDeviceUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceUpdateRequestDescriptor = $convert.base64Decode(
    'ChhGaWVsZERldmljZVVwZGF0ZVJlcXVlc3QSDgoCaWQYASABKARSAmlkEjoKDGZpZWxkX2Rldm'
    'ljZRgCIAEoCzIXLmRhdGFodWIudjEuRmllbGREZXZpY2VSC2ZpZWxkRGV2aWNlEj0KDHVwZGF0'
    'ZWRfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3VwZGF0ZWRUaW1l');

@$core.Deprecated('Use roadSectionCreateRequestDescriptor instead')
const RoadSectionCreateRequest$json = {
  '1': 'RoadSectionCreateRequest',
  '2': [
    {'1': 'proposed_road_section', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.RoadSection', '10': 'proposedRoadSection'},
    {'1': 'request_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
  ],
};

/// Descriptor for `RoadSectionCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSectionCreateRequestDescriptor = $convert.base64Decode(
    'ChhSb2FkU2VjdGlvbkNyZWF0ZVJlcXVlc3QSSwoVcHJvcG9zZWRfcm9hZF9zZWN0aW9uGAEgAS'
    'gLMhcuZGF0YWh1Yi52MS5Sb2FkU2VjdGlvblITcHJvcG9zZWRSb2FkU2VjdGlvbhI9CgxyZXF1'
    'ZXN0X3RpbWUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtyZXF1ZXN0VGltZR'
    'I3CgZzb3VyY2UYAyABKAsyHy5kYXRhaHViLnYxLkRhdGFIdWJVcGRhdGVTb3VyY2VSBnNvdXJj'
    'ZQ==');

@$core.Deprecated('Use roadSectionUpdateRequestDescriptor instead')
const RoadSectionUpdateRequest$json = {
  '1': 'RoadSectionUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'proposed_road_section', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.ActivityArea', '10': 'proposedRoadSection'},
    {'1': 'request_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
  ],
};

/// Descriptor for `RoadSectionUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSectionUpdateRequestDescriptor = $convert.base64Decode(
    'ChhSb2FkU2VjdGlvblVwZGF0ZVJlcXVlc3QSDgoCaWQYASABKARSAmlkEkwKFXByb3Bvc2VkX3'
    'JvYWRfc2VjdGlvbhgCIAEoCzIYLmRhdGFodWIudjEuQWN0aXZpdHlBcmVhUhNwcm9wb3NlZFJv'
    'YWRTZWN0aW9uEj0KDHJlcXVlc3RfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSC3JlcXVlc3RUaW1lEjcKBnNvdXJjZRgEIAEoCzIfLmRhdGFodWIudjEuRGF0YUh1YlVw'
    'ZGF0ZVNvdXJjZVIGc291cmNl');

@$core.Deprecated('Use activityAreaCreateRequestDescriptor instead')
const ActivityAreaCreateRequest$json = {
  '1': 'ActivityAreaCreateRequest',
  '2': [
    {'1': 'proposed_activity_area', '3': 1, '4': 1, '5': 11, '6': '.datahub.v1.ActivityArea', '10': 'proposedActivityArea'},
    {'1': 'request_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
  ],
};

/// Descriptor for `ActivityAreaCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityAreaCreateRequestDescriptor = $convert.base64Decode(
    'ChlBY3Rpdml0eUFyZWFDcmVhdGVSZXF1ZXN0Ek4KFnByb3Bvc2VkX2FjdGl2aXR5X2FyZWEYAS'
    'ABKAsyGC5kYXRhaHViLnYxLkFjdGl2aXR5QXJlYVIUcHJvcG9zZWRBY3Rpdml0eUFyZWESPQoM'
    'cmVxdWVzdF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdF'
    'RpbWUSNwoGc291cmNlGAMgASgLMh8uZGF0YWh1Yi52MS5EYXRhSHViVXBkYXRlU291cmNlUgZz'
    'b3VyY2U=');

@$core.Deprecated('Use activityAreaUpdateRequestDescriptor instead')
const ActivityAreaUpdateRequest$json = {
  '1': 'ActivityAreaUpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'proposed_activity_area', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.ActivityArea', '10': 'proposedActivityArea'},
    {'1': 'request_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestTime'},
    {'1': 'source', '3': 4, '4': 1, '5': 11, '6': '.datahub.v1.DataHubUpdateSource', '10': 'source'},
  ],
};

/// Descriptor for `ActivityAreaUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityAreaUpdateRequestDescriptor = $convert.base64Decode(
    'ChlBY3Rpdml0eUFyZWFVcGRhdGVSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZBJOChZwcm9wb3NlZF'
    '9hY3Rpdml0eV9hcmVhGAIgASgLMhguZGF0YWh1Yi52MS5BY3Rpdml0eUFyZWFSFHByb3Bvc2Vk'
    'QWN0aXZpdHlBcmVhEj0KDHJlcXVlc3RfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSC3JlcXVlc3RUaW1lEjcKBnNvdXJjZRgEIAEoCzIfLmRhdGFodWIudjEuRGF0YUh1'
    'YlVwZGF0ZVNvdXJjZVIGc291cmNl');

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

@$core.Deprecated('Use recordingMarkingSummaryDescriptor instead')
const RecordingMarkingSummary$json = {
  '1': 'RecordingMarkingSummary',
  '2': [
    {'1': 'path_index', '3': 1, '4': 1, '5': 13, '10': 'pathIndex'},
    {'1': 'markings', '3': 2, '4': 3, '5': 11, '6': '.datahub.v1.RecordingMarking', '10': 'markings'},
  ],
};

/// Descriptor for `RecordingMarkingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingMarkingSummaryDescriptor = $convert.base64Decode(
    'ChdSZWNvcmRpbmdNYXJraW5nU3VtbWFyeRIdCgpwYXRoX2luZGV4GAEgASgNUglwYXRoSW5kZX'
    'gSOAoIbWFya2luZ3MYAiADKAsyHC5kYXRhaHViLnYxLlJlY29yZGluZ01hcmtpbmdSCG1hcmtp'
    'bmdz');

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
    {'1': 'path', '3': 7, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '10': 'path'},
  ],
};

/// Descriptor for `RecordingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingSummaryDescriptor = $convert.base64Decode(
    'ChBSZWNvcmRpbmdTdW1tYXJ5Eg4KAmlkGAEgASgEUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEi'
    'AKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhI7CgtyZXBvcnRfZGF0ZRgEIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlcG9ydERhdGUSIwoNbGVuZ3RoX21ldGVycx'
    'gFIAEoAVIMbGVuZ3RoTWV0ZXJzEjgKGHBvc2l0aW9uX2FjY3VyYWN5X21ldGVycxgGIAEoAVIW'
    'cG9zaXRpb25BY2N1cmFjeU1ldGVycxIyCgRwYXRoGAcgASgLMh4uZGF0YWh1Yi52MS5MaW5lU3'
    'RyaW5nR2VvbWV0cnlSBHBhdGg=');

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

