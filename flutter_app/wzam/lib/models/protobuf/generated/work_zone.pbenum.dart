//
//  Generated code. Do not modify.
//  source: work_zone.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WorkZone_WorkZoneActiveStatus extends $pb.ProtobufEnum {
  static const WorkZone_WorkZoneActiveStatus WORK_ZONE_ACTIVE_STATUS_ACTIVE = WorkZone_WorkZoneActiveStatus._(0, _omitEnumNames ? '' : 'WORK_ZONE_ACTIVE_STATUS_ACTIVE');
  static const WorkZone_WorkZoneActiveStatus WORK_ZONE_ACTIVE_STATUS_INACTIVE = WorkZone_WorkZoneActiveStatus._(1, _omitEnumNames ? '' : 'WORK_ZONE_ACTIVE_STATUS_INACTIVE');

  static const $core.List<WorkZone_WorkZoneActiveStatus> values = <WorkZone_WorkZoneActiveStatus> [
    WORK_ZONE_ACTIVE_STATUS_ACTIVE,
    WORK_ZONE_ACTIVE_STATUS_INACTIVE,
  ];

  static final $core.Map<$core.int, WorkZone_WorkZoneActiveStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WorkZone_WorkZoneActiveStatus? valueOf($core.int value) => _byValue[value];

  const WorkZone_WorkZoneActiveStatus._(super.v, super.n);
}

class WorkZone_RoadSubEventLink_RoadSubEventLinkType extends $pb.ProtobufEnum {
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_FIRST_IN_SEQUENCE = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(0, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_FIRST_IN_SEQUENCE');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_NEXT_IN_SEQUENCE = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(1, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_NEXT_IN_SEQUENCE');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_FIRST_OCCURRENCE = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(2, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_FIRST_OCCURRENCE');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_NEXT_OCCURRENCE = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(3, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_NEXT_OCCURRENCE');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_RELATED_WORK_ZONE = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(4, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_RELATED_WORK_ZONE');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_RELATED_DETOUR = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(5, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_RELATED_DETOUR');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_PLANNED_MOVING_OPERATION = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(6, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_PLANNED_MOVING_OPERATION');
  static const WorkZone_RoadSubEventLink_RoadSubEventLinkType ROAD_SUB_EVENT_LINK_TYPE_ACTIVE_MOVING_OPERATION = WorkZone_RoadSubEventLink_RoadSubEventLinkType._(7, _omitEnumNames ? '' : 'ROAD_SUB_EVENT_LINK_TYPE_ACTIVE_MOVING_OPERATION');

  static const $core.List<WorkZone_RoadSubEventLink_RoadSubEventLinkType> values = <WorkZone_RoadSubEventLink_RoadSubEventLinkType> [
    ROAD_SUB_EVENT_LINK_TYPE_FIRST_IN_SEQUENCE,
    ROAD_SUB_EVENT_LINK_TYPE_NEXT_IN_SEQUENCE,
    ROAD_SUB_EVENT_LINK_TYPE_FIRST_OCCURRENCE,
    ROAD_SUB_EVENT_LINK_TYPE_NEXT_OCCURRENCE,
    ROAD_SUB_EVENT_LINK_TYPE_RELATED_WORK_ZONE,
    ROAD_SUB_EVENT_LINK_TYPE_RELATED_DETOUR,
    ROAD_SUB_EVENT_LINK_TYPE_PLANNED_MOVING_OPERATION,
    ROAD_SUB_EVENT_LINK_TYPE_ACTIVE_MOVING_OPERATION,
  ];

  static final $core.Map<$core.int, WorkZone_RoadSubEventLink_RoadSubEventLinkType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WorkZone_RoadSubEventLink_RoadSubEventLinkType? valueOf($core.int value) => _byValue[value];

  const WorkZone_RoadSubEventLink_RoadSubEventLinkType._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
