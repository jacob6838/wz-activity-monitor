//
//  Generated code. Do not modify.
//  source: vehicle_location.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vehicleLocationDescriptor instead')
const VehicleLocation$json = {
  '1': 'VehicleLocation',
  '2': [
    {'1': 'license_plate', '3': 1, '4': 1, '5': 9, '10': 'licensePlate'},
    {'1': 'operation_type', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.VehicleLocation.VehicleOperationType', '10': 'operationType'},
    {'1': 'location', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '10': 'location'},
    {'1': 'velocity_kph', '3': 4, '4': 1, '5': 1, '10': 'velocityKph'},
    {'1': 'heading', '3': 5, '4': 1, '5': 1, '10': 'heading'},
    {'1': 'request_id', '3': 6, '4': 1, '5': 4, '10': 'requestId'},
  ],
  '4': [VehicleLocation_VehicleOperationType$json],
};

@$core.Deprecated('Use vehicleLocationDescriptor instead')
const VehicleLocation_VehicleOperationType$json = {
  '1': 'VehicleOperationType',
  '2': [
    {'1': 'VEHICLE_OPERATION_STRIPING', '2': 0},
    {'1': 'VEHICLE_OPERATION_PLOWING', '2': 1},
    {'1': 'VEHICLE_OPERATION_MOWING', '2': 2},
    {'1': 'VEHICLE_OPERATION_GENERAL_ACTIVE', '2': 3},
    {'1': 'VEHICLE_OPERATION_GENERAL_INACTIVE', '2': 4},
    {'1': 'VEHICLE_OPERATION_UNKNOWN', '2': 5},
  ],
};

/// Descriptor for `VehicleLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vehicleLocationDescriptor = $convert.base64Decode(
    'Cg9WZWhpY2xlTG9jYXRpb24SIwoNbGljZW5zZV9wbGF0ZRgBIAEoCVIMbGljZW5zZVBsYXRlEl'
    'cKDm9wZXJhdGlvbl90eXBlGAIgASgOMjAuZGF0YWh1Yi52MS5WZWhpY2xlTG9jYXRpb24uVmVo'
    'aWNsZU9wZXJhdGlvblR5cGVSDW9wZXJhdGlvblR5cGUSNQoIbG9jYXRpb24YAyABKAsyGS5kYX'
    'RhaHViLnYxLlBvaW50R2VvbWV0cnlSCGxvY2F0aW9uEiEKDHZlbG9jaXR5X2twaBgEIAEoAVIL'
    'dmVsb2NpdHlLcGgSGAoHaGVhZGluZxgFIAEoAVIHaGVhZGluZxIdCgpyZXF1ZXN0X2lkGAYgAS'
    'gEUglyZXF1ZXN0SWQi4AEKFFZlaGljbGVPcGVyYXRpb25UeXBlEh4KGlZFSElDTEVfT1BFUkFU'
    'SU9OX1NUUklQSU5HEAASHQoZVkVISUNMRV9PUEVSQVRJT05fUExPV0lORxABEhwKGFZFSElDTE'
    'VfT1BFUkFUSU9OX01PV0lORxACEiQKIFZFSElDTEVfT1BFUkFUSU9OX0dFTkVSQUxfQUNUSVZF'
    'EAMSJgoiVkVISUNMRV9PUEVSQVRJT05fR0VORVJBTF9JTkFDVElWRRAEEh0KGVZFSElDTEVfT1'
    'BFUkFUSU9OX1VOS05PV04QBQ==');

