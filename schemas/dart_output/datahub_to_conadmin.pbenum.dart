//
//  Generated code. Do not modify.
//  source: datahub_to_conadmin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VehicleLocationUpdated_VehicleOperationType extends $pb.ProtobufEnum {
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_STRIPING = VehicleLocationUpdated_VehicleOperationType._(0, _omitEnumNames ? '' : 'VEHICLE_OPERATION_STRIPING');
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_PLOWING = VehicleLocationUpdated_VehicleOperationType._(1, _omitEnumNames ? '' : 'VEHICLE_OPERATION_PLOWING');
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_MOWING = VehicleLocationUpdated_VehicleOperationType._(2, _omitEnumNames ? '' : 'VEHICLE_OPERATION_MOWING');
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_COMMUTING = VehicleLocationUpdated_VehicleOperationType._(3, _omitEnumNames ? '' : 'VEHICLE_OPERATION_COMMUTING');
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_OTHER = VehicleLocationUpdated_VehicleOperationType._(4, _omitEnumNames ? '' : 'VEHICLE_OPERATION_OTHER');
  static const VehicleLocationUpdated_VehicleOperationType VEHICLE_OPERATION_UNKNOWN = VehicleLocationUpdated_VehicleOperationType._(5, _omitEnumNames ? '' : 'VEHICLE_OPERATION_UNKNOWN');

  static const $core.List<VehicleLocationUpdated_VehicleOperationType> values = <VehicleLocationUpdated_VehicleOperationType> [
    VEHICLE_OPERATION_STRIPING,
    VEHICLE_OPERATION_PLOWING,
    VEHICLE_OPERATION_MOWING,
    VEHICLE_OPERATION_COMMUTING,
    VEHICLE_OPERATION_OTHER,
    VEHICLE_OPERATION_UNKNOWN,
  ];

  static final $core.Map<$core.int, VehicleLocationUpdated_VehicleOperationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VehicleLocationUpdated_VehicleOperationType? valueOf($core.int value) => _byValue[value];

  const VehicleLocationUpdated_VehicleOperationType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
