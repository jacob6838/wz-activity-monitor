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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'google/type/date.pb.dart' as $5;
import 'google/type/timeofday.pb.dart' as $4;
import 'work_zone.pbenum.dart';
import 'wzdx.pb.dart' as $2;
import 'wzdx.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'work_zone.pbenum.dart';

class WorkZone_RoadSubEventLink extends $pb.GeneratedMessage {
  factory WorkZone_RoadSubEventLink({
    $fixnum.Int64? roadSubEventId,
    WorkZone_RoadSubEventLink_RoadSubEventLinkType? roadSubEventLinkType,
  }) {
    final $result = create();
    if (roadSubEventId != null) {
      $result.roadSubEventId = roadSubEventId;
    }
    if (roadSubEventLinkType != null) {
      $result.roadSubEventLinkType = roadSubEventLinkType;
    }
    return $result;
  }
  WorkZone_RoadSubEventLink._() : super();
  factory WorkZone_RoadSubEventLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZone_RoadSubEventLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZone.RoadSubEventLink', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'roadSubEventId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<WorkZone_RoadSubEventLink_RoadSubEventLinkType>(2, _omitFieldNames ? '' : 'roadSubEventLinkType', $pb.PbFieldType.OE, defaultOrMaker: WorkZone_RoadSubEventLink_RoadSubEventLinkType.ROAD_SUB_EVENT_LINK_TYPE_FIRST_IN_SEQUENCE, valueOf: WorkZone_RoadSubEventLink_RoadSubEventLinkType.valueOf, enumValues: WorkZone_RoadSubEventLink_RoadSubEventLinkType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZone_RoadSubEventLink clone() => WorkZone_RoadSubEventLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZone_RoadSubEventLink copyWith(void Function(WorkZone_RoadSubEventLink) updates) => super.copyWith((message) => updates(message as WorkZone_RoadSubEventLink)) as WorkZone_RoadSubEventLink;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZone_RoadSubEventLink create() => WorkZone_RoadSubEventLink._();
  WorkZone_RoadSubEventLink createEmptyInstance() => create();
  static $pb.PbList<WorkZone_RoadSubEventLink> createRepeated() => $pb.PbList<WorkZone_RoadSubEventLink>();
  @$core.pragma('dart2js:noInline')
  static WorkZone_RoadSubEventLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZone_RoadSubEventLink>(create);
  static WorkZone_RoadSubEventLink? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roadSubEventId => $_getI64(0);
  @$pb.TagNumber(1)
  set roadSubEventId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoadSubEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoadSubEventId() => $_clearField(1);

  @$pb.TagNumber(2)
  WorkZone_RoadSubEventLink_RoadSubEventLinkType get roadSubEventLinkType => $_getN(1);
  @$pb.TagNumber(2)
  set roadSubEventLinkType(WorkZone_RoadSubEventLink_RoadSubEventLinkType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSubEventLinkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSubEventLinkType() => $_clearField(2);
}

class WorkZone_EventRecurrence extends $pb.GeneratedMessage {
  factory WorkZone_EventRecurrence({
    $4.TimeOfDay? startTime,
    $4.TimeOfDay? endTime,
    $5.Date? startDate,
    $5.Date? endDate,
    $core.bool? monday,
    $core.bool? tuesday,
    $core.bool? wednesday,
    $core.bool? thursday,
    $core.bool? friday,
    $core.bool? saturday,
    $core.bool? sunday,
    $core.bool? exclusion,
  }) {
    final $result = create();
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    if (monday != null) {
      $result.monday = monday;
    }
    if (tuesday != null) {
      $result.tuesday = tuesday;
    }
    if (wednesday != null) {
      $result.wednesday = wednesday;
    }
    if (thursday != null) {
      $result.thursday = thursday;
    }
    if (friday != null) {
      $result.friday = friday;
    }
    if (saturday != null) {
      $result.saturday = saturday;
    }
    if (sunday != null) {
      $result.sunday = sunday;
    }
    if (exclusion != null) {
      $result.exclusion = exclusion;
    }
    return $result;
  }
  WorkZone_EventRecurrence._() : super();
  factory WorkZone_EventRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZone_EventRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZone.EventRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$4.TimeOfDay>(1, _omitFieldNames ? '' : 'startTime', subBuilder: $4.TimeOfDay.create)
    ..aOM<$4.TimeOfDay>(2, _omitFieldNames ? '' : 'endTime', subBuilder: $4.TimeOfDay.create)
    ..aOM<$5.Date>(3, _omitFieldNames ? '' : 'startDate', subBuilder: $5.Date.create)
    ..aOM<$5.Date>(4, _omitFieldNames ? '' : 'endDate', subBuilder: $5.Date.create)
    ..aOB(5, _omitFieldNames ? '' : 'monday')
    ..aOB(6, _omitFieldNames ? '' : 'tuesday')
    ..aOB(7, _omitFieldNames ? '' : 'wednesday')
    ..aOB(8, _omitFieldNames ? '' : 'thursday')
    ..aOB(9, _omitFieldNames ? '' : 'friday')
    ..aOB(10, _omitFieldNames ? '' : 'saturday')
    ..aOB(11, _omitFieldNames ? '' : 'sunday')
    ..aOB(12, _omitFieldNames ? '' : 'exclusion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZone_EventRecurrence clone() => WorkZone_EventRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZone_EventRecurrence copyWith(void Function(WorkZone_EventRecurrence) updates) => super.copyWith((message) => updates(message as WorkZone_EventRecurrence)) as WorkZone_EventRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZone_EventRecurrence create() => WorkZone_EventRecurrence._();
  WorkZone_EventRecurrence createEmptyInstance() => create();
  static $pb.PbList<WorkZone_EventRecurrence> createRepeated() => $pb.PbList<WorkZone_EventRecurrence>();
  @$core.pragma('dart2js:noInline')
  static WorkZone_EventRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZone_EventRecurrence>(create);
  static WorkZone_EventRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $4.TimeOfDay get startTime => $_getN(0);
  @$pb.TagNumber(1)
  set startTime($4.TimeOfDay v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.TimeOfDay ensureStartTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.TimeOfDay get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime($4.TimeOfDay v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.TimeOfDay ensureEndTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Date get startDate => $_getN(2);
  @$pb.TagNumber(3)
  set startDate($5.Date v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.Date ensureStartDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $5.Date get endDate => $_getN(3);
  @$pb.TagNumber(4)
  set endDate($5.Date v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $5.Date ensureEndDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get monday => $_getBF(4);
  @$pb.TagNumber(5)
  set monday($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMonday() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonday() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get tuesday => $_getBF(5);
  @$pb.TagNumber(6)
  set tuesday($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTuesday() => $_has(5);
  @$pb.TagNumber(6)
  void clearTuesday() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get wednesday => $_getBF(6);
  @$pb.TagNumber(7)
  set wednesday($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWednesday() => $_has(6);
  @$pb.TagNumber(7)
  void clearWednesday() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get thursday => $_getBF(7);
  @$pb.TagNumber(8)
  set thursday($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasThursday() => $_has(7);
  @$pb.TagNumber(8)
  void clearThursday() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get friday => $_getBF(8);
  @$pb.TagNumber(9)
  set friday($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFriday() => $_has(8);
  @$pb.TagNumber(9)
  void clearFriday() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get saturday => $_getBF(9);
  @$pb.TagNumber(10)
  set saturday($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSaturday() => $_has(9);
  @$pb.TagNumber(10)
  void clearSaturday() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get sunday => $_getBF(10);
  @$pb.TagNumber(11)
  set sunday($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSunday() => $_has(10);
  @$pb.TagNumber(11)
  void clearSunday() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get exclusion => $_getBF(11);
  @$pb.TagNumber(12)
  set exclusion($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasExclusion() => $_has(11);
  @$pb.TagNumber(12)
  void clearExclusion() => $_clearField(12);
}

enum WorkZone_Geometry {
  point, 
  lineString, 
  polygon, 
  notSet
}

class WorkZone extends $pb.GeneratedMessage {
  factory WorkZone({
    $fixnum.Int64? projectId,
    $core.Iterable<WorkZone_RoadSubEventLink>? roadSections,
    $core.String? name,
    $core.String? description,
    WorkZone_WorkZoneActiveStatus? status,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.Iterable<$2.TypeOfWork>? typesOfWork,
    $core.Iterable<WorkZone_EventRecurrence>? schedule,
    $3.PointGeometry? point,
    $3.LineStringGeometry? lineString,
    $3.PolygonGeometry? polygon,
    $3.BoundingBox? bbox,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (roadSections != null) {
      $result.roadSections.addAll(roadSections);
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (status != null) {
      $result.status = status;
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    if (areaType != null) {
      $result.areaType = areaType;
    }
    if (typesOfWork != null) {
      $result.typesOfWork.addAll(typesOfWork);
    }
    if (schedule != null) {
      $result.schedule.addAll(schedule);
    }
    if (point != null) {
      $result.point = point;
    }
    if (lineString != null) {
      $result.lineString = lineString;
    }
    if (polygon != null) {
      $result.polygon = polygon;
    }
    if (bbox != null) {
      $result.bbox = bbox;
    }
    return $result;
  }
  WorkZone._() : super();
  factory WorkZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WorkZone_Geometry> _WorkZone_GeometryByTag = {
    16 : WorkZone_Geometry.point,
    17 : WorkZone_Geometry.lineString,
    18 : WorkZone_Geometry.polygon,
    0 : WorkZone_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [16, 17, 18])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<WorkZone_RoadSubEventLink>(2, _omitFieldNames ? '' : 'roadSections', $pb.PbFieldType.PM, subBuilder: WorkZone_RoadSubEventLink.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..e<WorkZone_WorkZoneActiveStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: WorkZone_WorkZoneActiveStatus.WORK_ZONE_ACTIVE_STATUS_ACTIVE, valueOf: WorkZone_WorkZoneActiveStatus.valueOf, enumValues: WorkZone_WorkZoneActiveStatus.values)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(8, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..pc<$2.TypeOfWork>(14, _omitFieldNames ? '' : 'typesOfWork', $pb.PbFieldType.PM, subBuilder: $2.TypeOfWork.create)
    ..pc<WorkZone_EventRecurrence>(15, _omitFieldNames ? '' : 'schedule', $pb.PbFieldType.PM, subBuilder: WorkZone_EventRecurrence.create)
    ..aOM<$3.PointGeometry>(16, _omitFieldNames ? '' : 'point', subBuilder: $3.PointGeometry.create)
    ..aOM<$3.LineStringGeometry>(17, _omitFieldNames ? '' : 'lineString', subBuilder: $3.LineStringGeometry.create)
    ..aOM<$3.PolygonGeometry>(18, _omitFieldNames ? '' : 'polygon', subBuilder: $3.PolygonGeometry.create)
    ..aOM<$3.BoundingBox>(19, _omitFieldNames ? '' : 'bbox', subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZone clone() => WorkZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZone copyWith(void Function(WorkZone) updates) => super.copyWith((message) => updates(message as WorkZone)) as WorkZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZone create() => WorkZone._();
  WorkZone createEmptyInstance() => create();
  static $pb.PbList<WorkZone> createRepeated() => $pb.PbList<WorkZone>();
  @$core.pragma('dart2js:noInline')
  static WorkZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZone>(create);
  static WorkZone? _defaultInstance;

  WorkZone_Geometry whichGeometry() => _WorkZone_GeometryByTag[$_whichOneof(0)]!;
  void clearGeometry() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get projectId => $_getI64(0);
  @$pb.TagNumber(1)
  set projectId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<WorkZone_RoadSubEventLink> get roadSections => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  WorkZone_WorkZoneActiveStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(WorkZone_WorkZoneActiveStatus v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get startDate => $_getN(5);
  @$pb.TagNumber(6)
  set startDate($1.Timestamp v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartDate() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureStartDate() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get endDate => $_getN(6);
  @$pb.TagNumber(7)
  set endDate($1.Timestamp v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndDate() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureEndDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $2.WorkZoneType get areaType => $_getN(7);
  @$pb.TagNumber(8)
  set areaType($2.WorkZoneType v) { $_setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAreaType() => $_has(7);
  @$pb.TagNumber(8)
  void clearAreaType() => $_clearField(8);

  @$pb.TagNumber(14)
  $pb.PbList<$2.TypeOfWork> get typesOfWork => $_getList(8);

  @$pb.TagNumber(15)
  $pb.PbList<WorkZone_EventRecurrence> get schedule => $_getList(9);

  @$pb.TagNumber(16)
  $3.PointGeometry get point => $_getN(10);
  @$pb.TagNumber(16)
  set point($3.PointGeometry v) { $_setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasPoint() => $_has(10);
  @$pb.TagNumber(16)
  void clearPoint() => $_clearField(16);
  @$pb.TagNumber(16)
  $3.PointGeometry ensurePoint() => $_ensure(10);

  @$pb.TagNumber(17)
  $3.LineStringGeometry get lineString => $_getN(11);
  @$pb.TagNumber(17)
  set lineString($3.LineStringGeometry v) { $_setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasLineString() => $_has(11);
  @$pb.TagNumber(17)
  void clearLineString() => $_clearField(17);
  @$pb.TagNumber(17)
  $3.LineStringGeometry ensureLineString() => $_ensure(11);

  @$pb.TagNumber(18)
  $3.PolygonGeometry get polygon => $_getN(12);
  @$pb.TagNumber(18)
  set polygon($3.PolygonGeometry v) { $_setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasPolygon() => $_has(12);
  @$pb.TagNumber(18)
  void clearPolygon() => $_clearField(18);
  @$pb.TagNumber(18)
  $3.PolygonGeometry ensurePolygon() => $_ensure(12);

  @$pb.TagNumber(19)
  $3.BoundingBox get bbox => $_getN(13);
  @$pb.TagNumber(19)
  set bbox($3.BoundingBox v) { $_setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasBbox() => $_has(13);
  @$pb.TagNumber(19)
  void clearBbox() => $_clearField(19);
  @$pb.TagNumber(19)
  $3.BoundingBox ensureBbox() => $_ensure(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
