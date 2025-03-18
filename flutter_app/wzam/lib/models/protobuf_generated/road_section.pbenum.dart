//
//  Generated code. Do not modify.
//  source: road_section.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RoadSection_RoadDirection extends $pb.ProtobufEnum {
  static const RoadSection_RoadDirection ROAD_SEGMENT_DIRECTION_BOTH = RoadSection_RoadDirection._(0, _omitEnumNames ? '' : 'ROAD_SEGMENT_DIRECTION_BOTH');
  static const RoadSection_RoadDirection ROAD_SEGMENT_DIRECTION_NORTHBOUND = RoadSection_RoadDirection._(1, _omitEnumNames ? '' : 'ROAD_SEGMENT_DIRECTION_NORTHBOUND');
  static const RoadSection_RoadDirection ROAD_SEGMENT_DIRECTION_SOUTHBOUND = RoadSection_RoadDirection._(2, _omitEnumNames ? '' : 'ROAD_SEGMENT_DIRECTION_SOUTHBOUND');
  static const RoadSection_RoadDirection ROAD_SEGMENT_DIRECTION_EASTBOUND = RoadSection_RoadDirection._(3, _omitEnumNames ? '' : 'ROAD_SEGMENT_DIRECTION_EASTBOUND');
  static const RoadSection_RoadDirection ROAD_SEGMENT_DIRECTION_WESTBOUND = RoadSection_RoadDirection._(4, _omitEnumNames ? '' : 'ROAD_SEGMENT_DIRECTION_WESTBOUND');

  static const $core.List<RoadSection_RoadDirection> values = <RoadSection_RoadDirection> [
    ROAD_SEGMENT_DIRECTION_BOTH,
    ROAD_SEGMENT_DIRECTION_NORTHBOUND,
    ROAD_SEGMENT_DIRECTION_SOUTHBOUND,
    ROAD_SEGMENT_DIRECTION_EASTBOUND,
    ROAD_SEGMENT_DIRECTION_WESTBOUND,
  ];

  static final $core.Map<$core.int, RoadSection_RoadDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoadSection_RoadDirection? valueOf($core.int value) => _byValue[value];

  const RoadSection_RoadDirection._($core.int v, $core.String n) : super(v, n);
}

class RoadSection_RoadSegmentActiveStatus extends $pb.ProtobufEnum {
  static const RoadSection_RoadSegmentActiveStatus ROAD_SEGMENT_ACTIVE_STATUS_ACTIVE = RoadSection_RoadSegmentActiveStatus._(0, _omitEnumNames ? '' : 'ROAD_SEGMENT_ACTIVE_STATUS_ACTIVE');
  static const RoadSection_RoadSegmentActiveStatus ROAD_SEGMENT_ACTIVE_STATUS_INACTIVE = RoadSection_RoadSegmentActiveStatus._(1, _omitEnumNames ? '' : 'ROAD_SEGMENT_ACTIVE_STATUS_INACTIVE');

  static const $core.List<RoadSection_RoadSegmentActiveStatus> values = <RoadSection_RoadSegmentActiveStatus> [
    ROAD_SEGMENT_ACTIVE_STATUS_ACTIVE,
    ROAD_SEGMENT_ACTIVE_STATUS_INACTIVE,
  ];

  static final $core.Map<$core.int, RoadSection_RoadSegmentActiveStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoadSection_RoadSegmentActiveStatus? valueOf($core.int value) => _byValue[value];

  const RoadSection_RoadSegmentActiveStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
