//
//  Generated code. Do not modify.
//  source: activity_area.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ActivityArea_ActivityAreaActiveStatus extends $pb.ProtobufEnum {
  static const ActivityArea_ActivityAreaActiveStatus ACTIVITY_AREA_ACTIVE_STATUS_ACTIVE = ActivityArea_ActivityAreaActiveStatus._(0, _omitEnumNames ? '' : 'ACTIVITY_AREA_ACTIVE_STATUS_ACTIVE');
  static const ActivityArea_ActivityAreaActiveStatus ACTIVITY_AREA_ACTIVE_STATUS_INACTIVE = ActivityArea_ActivityAreaActiveStatus._(1, _omitEnumNames ? '' : 'ACTIVITY_AREA_ACTIVE_STATUS_INACTIVE');

  static const $core.List<ActivityArea_ActivityAreaActiveStatus> values = <ActivityArea_ActivityAreaActiveStatus> [
    ACTIVITY_AREA_ACTIVE_STATUS_ACTIVE,
    ACTIVITY_AREA_ACTIVE_STATUS_INACTIVE,
  ];

  static final $core.Map<$core.int, ActivityArea_ActivityAreaActiveStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ActivityArea_ActivityAreaActiveStatus? valueOf($core.int value) => _byValue[value];

  const ActivityArea_ActivityAreaActiveStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
