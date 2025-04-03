//
//  Generated code. Do not modify.
//  source: road_sub_event.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RoadSubEvent_RoadDirection extends $pb.ProtobufEnum {
  static const RoadSubEvent_RoadDirection ROAD_DIRECTION_BOTH = RoadSubEvent_RoadDirection._(0, _omitEnumNames ? '' : 'ROAD_DIRECTION_BOTH');
  static const RoadSubEvent_RoadDirection ROAD_DIRECTION_NORTHBOUND = RoadSubEvent_RoadDirection._(1, _omitEnumNames ? '' : 'ROAD_DIRECTION_NORTHBOUND');
  static const RoadSubEvent_RoadDirection ROAD_DIRECTION_SOUTHBOUND = RoadSubEvent_RoadDirection._(2, _omitEnumNames ? '' : 'ROAD_DIRECTION_SOUTHBOUND');
  static const RoadSubEvent_RoadDirection ROAD_DIRECTION_EASTBOUND = RoadSubEvent_RoadDirection._(3, _omitEnumNames ? '' : 'ROAD_DIRECTION_EASTBOUND');
  static const RoadSubEvent_RoadDirection ROAD_DIRECTION_WESTBOUND = RoadSubEvent_RoadDirection._(4, _omitEnumNames ? '' : 'ROAD_DIRECTION_WESTBOUND');

  static const $core.List<RoadSubEvent_RoadDirection> values = <RoadSubEvent_RoadDirection> [
    ROAD_DIRECTION_BOTH,
    ROAD_DIRECTION_NORTHBOUND,
    ROAD_DIRECTION_SOUTHBOUND,
    ROAD_DIRECTION_EASTBOUND,
    ROAD_DIRECTION_WESTBOUND,
  ];

  static final $core.Map<$core.int, RoadSubEvent_RoadDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoadSubEvent_RoadDirection? valueOf($core.int value) => _byValue[value];

  const RoadSubEvent_RoadDirection._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
