//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 3.3

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

  const RoadSurfaceType._(super.v, super.n);
}

/// https://github.com/usdot-jpo-ode/wzdx/blob/develop/spec-content/enumerated-types/MarkedLocationType.md
class MarkedLocationType extends $pb.ProtobufEnum {
  static const MarkedLocationType MARKED_LOCATION_TYPE_GENERIC = MarkedLocationType._(0, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_GENERIC');
  static const MarkedLocationType MARKED_LOCATION_TYPE_FLAGGER = MarkedLocationType._(1, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_FLAGGER');
  static const MarkedLocationType MARKED_LOCATION_TYPE_LANE_CLOSURE_START = MarkedLocationType._(2, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_LANE_CLOSURE_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_LANE_CLOSURE_END = MarkedLocationType._(3, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_LANE_CLOSURE_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_WORKER_PRESENCE_START = MarkedLocationType._(4, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_WORKER_PRESENCE_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_WORKER_PRESENCE_END = MarkedLocationType._(5, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_WORKER_PRESENCE_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_WORKER_POSITION = MarkedLocationType._(6, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_WORKER_POSITION');
  static const MarkedLocationType MARKED_LOCATION_TYPE_ROAD_CLOSURE_START = MarkedLocationType._(7, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_ROAD_CLOSURE_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_ROAD_CLOSURE_END = MarkedLocationType._(8, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_ROAD_CLOSURE_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_WORK_ZONE_START = MarkedLocationType._(9, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_WORK_ZONE_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_WORK_ZONE_END = MarkedLocationType._(10, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_WORK_ZONE_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_SPEED_REDUCTION_START = MarkedLocationType._(11, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_SPEED_REDUCTION_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_SPEED_REDUCTION_END = MarkedLocationType._(12, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_SPEED_REDUCTION_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_INCIDENT_START = MarkedLocationType._(13, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_INCIDENT_START');
  static const MarkedLocationType MARKED_LOCATION_TYPE_INCIDENT_END = MarkedLocationType._(14, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_INCIDENT_END');
  static const MarkedLocationType MARKED_LOCATION_TYPE_APPROACH_REGION = MarkedLocationType._(15, _omitEnumNames ? '' : 'MARKED_LOCATION_TYPE_APPROACH_REGION');

  static const $core.List<MarkedLocationType> values = <MarkedLocationType> [
    MARKED_LOCATION_TYPE_GENERIC,
    MARKED_LOCATION_TYPE_FLAGGER,
    MARKED_LOCATION_TYPE_LANE_CLOSURE_START,
    MARKED_LOCATION_TYPE_LANE_CLOSURE_END,
    MARKED_LOCATION_TYPE_WORKER_PRESENCE_START,
    MARKED_LOCATION_TYPE_WORKER_PRESENCE_END,
    MARKED_LOCATION_TYPE_WORKER_POSITION,
    MARKED_LOCATION_TYPE_ROAD_CLOSURE_START,
    MARKED_LOCATION_TYPE_ROAD_CLOSURE_END,
    MARKED_LOCATION_TYPE_WORK_ZONE_START,
    MARKED_LOCATION_TYPE_WORK_ZONE_END,
    MARKED_LOCATION_TYPE_SPEED_REDUCTION_START,
    MARKED_LOCATION_TYPE_SPEED_REDUCTION_END,
    MARKED_LOCATION_TYPE_INCIDENT_START,
    MARKED_LOCATION_TYPE_INCIDENT_END,
    MARKED_LOCATION_TYPE_APPROACH_REGION,
  ];

  static final $core.Map<$core.int, MarkedLocationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarkedLocationType? valueOf($core.int value) => _byValue[value];

  const MarkedLocationType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
