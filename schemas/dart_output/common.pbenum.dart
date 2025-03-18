//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RoadSurfaceType extends $pb.ProtobufEnum {
  static const RoadSurfaceType ROAD_SURFACE_TYPE_PAVED = RoadSurfaceType._(0, _omitEnumNames ? '' : 'ROAD_SURFACE_TYPE_PAVED');
  static const RoadSurfaceType ROAD_SURFACE_TYPE_GRAVEL = RoadSurfaceType._(1, _omitEnumNames ? '' : 'ROAD_SURFACE_TYPE_GRAVEL');
  static const RoadSurfaceType ROAD_SURFACE_TYPE_DIRT = RoadSurfaceType._(2, _omitEnumNames ? '' : 'ROAD_SURFACE_TYPE_DIRT');
  static const RoadSurfaceType ROAD_SURFACE_TYPE_GROOVED = RoadSurfaceType._(3, _omitEnumNames ? '' : 'ROAD_SURFACE_TYPE_GROOVED');

  static const $core.List<RoadSurfaceType> values = <RoadSurfaceType> [
    ROAD_SURFACE_TYPE_PAVED,
    ROAD_SURFACE_TYPE_GRAVEL,
    ROAD_SURFACE_TYPE_DIRT,
    ROAD_SURFACE_TYPE_GROOVED,
  ];

  static final $core.Map<$core.int, RoadSurfaceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RoadSurfaceType? valueOf($core.int value) => _byValue[value];

  const RoadSurfaceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
