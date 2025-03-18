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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'activity_area.pbenum.dart';
import 'common.pb.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'google/type/date.pb.dart' as $5;
import 'google/type/timeofday.pb.dart' as $4;
import 'wzdx.pb.dart' as $2;
import 'wzdx.pbenum.dart' as $2;

export 'activity_area.pbenum.dart';

class ActivityArea_EventRecurrence extends $pb.GeneratedMessage {
  factory ActivityArea_EventRecurrence({
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
  ActivityArea_EventRecurrence._() : super();
  factory ActivityArea_EventRecurrence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityArea_EventRecurrence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityArea.EventRecurrence', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
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
  ActivityArea_EventRecurrence clone() => ActivityArea_EventRecurrence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityArea_EventRecurrence copyWith(void Function(ActivityArea_EventRecurrence) updates) => super.copyWith((message) => updates(message as ActivityArea_EventRecurrence)) as ActivityArea_EventRecurrence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityArea_EventRecurrence create() => ActivityArea_EventRecurrence._();
  ActivityArea_EventRecurrence createEmptyInstance() => create();
  static $pb.PbList<ActivityArea_EventRecurrence> createRepeated() => $pb.PbList<ActivityArea_EventRecurrence>();
  @$core.pragma('dart2js:noInline')
  static ActivityArea_EventRecurrence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityArea_EventRecurrence>(create);
  static ActivityArea_EventRecurrence? _defaultInstance;

  @$pb.TagNumber(1)
  $4.TimeOfDay get startTime => $_getN(0);
  @$pb.TagNumber(1)
  set startTime($4.TimeOfDay v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);
  @$pb.TagNumber(1)
  $4.TimeOfDay ensureStartTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.TimeOfDay get endTime => $_getN(1);
  @$pb.TagNumber(2)
  set endTime($4.TimeOfDay v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);
  @$pb.TagNumber(2)
  $4.TimeOfDay ensureEndTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Date get startDate => $_getN(2);
  @$pb.TagNumber(3)
  set startDate($5.Date v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartDate() => clearField(3);
  @$pb.TagNumber(3)
  $5.Date ensureStartDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $5.Date get endDate => $_getN(3);
  @$pb.TagNumber(4)
  set endDate($5.Date v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndDate() => clearField(4);
  @$pb.TagNumber(4)
  $5.Date ensureEndDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get monday => $_getBF(4);
  @$pb.TagNumber(5)
  set monday($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMonday() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonday() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get tuesday => $_getBF(5);
  @$pb.TagNumber(6)
  set tuesday($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTuesday() => $_has(5);
  @$pb.TagNumber(6)
  void clearTuesday() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get wednesday => $_getBF(6);
  @$pb.TagNumber(7)
  set wednesday($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWednesday() => $_has(6);
  @$pb.TagNumber(7)
  void clearWednesday() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get thursday => $_getBF(7);
  @$pb.TagNumber(8)
  set thursday($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasThursday() => $_has(7);
  @$pb.TagNumber(8)
  void clearThursday() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get friday => $_getBF(8);
  @$pb.TagNumber(9)
  set friday($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFriday() => $_has(8);
  @$pb.TagNumber(9)
  void clearFriday() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get saturday => $_getBF(9);
  @$pb.TagNumber(10)
  set saturday($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSaturday() => $_has(9);
  @$pb.TagNumber(10)
  void clearSaturday() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get sunday => $_getBF(10);
  @$pb.TagNumber(11)
  set sunday($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSunday() => $_has(10);
  @$pb.TagNumber(11)
  void clearSunday() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get exclusion => $_getBF(11);
  @$pb.TagNumber(12)
  set exclusion($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasExclusion() => $_has(11);
  @$pb.TagNumber(12)
  void clearExclusion() => clearField(12);
}

enum ActivityArea_Geometry {
  point, 
  lineString, 
  polygon, 
  notSet
}

class ActivityArea extends $pb.GeneratedMessage {
  factory ActivityArea({
    $fixnum.Int64? segmentId,
    $core.String? name,
    $core.String? description,
    ActivityArea_ActivityAreaActiveStatus? status,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.Iterable<$2.Lane>? lanes,
    $core.int? beginningCrossStreet,
    $core.int? endingCrossStreet,
    $core.int? beginningMilepost,
    $core.int? endingMilepost,
    $core.Iterable<$2.TypeOfWork>? typesOfWork,
    $2.WorkerPresence? workerPresence,
    $core.double? reducedSpeedLimitKph,
    $core.Iterable<$2.Restriction>? restrictions,
    $core.Iterable<ActivityArea_EventRecurrence>? schedule,
    $3.PointGeometry? point,
    $3.LineStringGeometry? lineString,
    $3.PolygonGeometry? polygon,
    $3.BoundingBox? bbox,
  }) {
    final $result = create();
    if (segmentId != null) {
      $result.segmentId = segmentId;
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
    if (lanes != null) {
      $result.lanes.addAll(lanes);
    }
    if (beginningCrossStreet != null) {
      $result.beginningCrossStreet = beginningCrossStreet;
    }
    if (endingCrossStreet != null) {
      $result.endingCrossStreet = endingCrossStreet;
    }
    if (beginningMilepost != null) {
      $result.beginningMilepost = beginningMilepost;
    }
    if (endingMilepost != null) {
      $result.endingMilepost = endingMilepost;
    }
    if (typesOfWork != null) {
      $result.typesOfWork.addAll(typesOfWork);
    }
    if (workerPresence != null) {
      $result.workerPresence = workerPresence;
    }
    if (reducedSpeedLimitKph != null) {
      $result.reducedSpeedLimitKph = reducedSpeedLimitKph;
    }
    if (restrictions != null) {
      $result.restrictions.addAll(restrictions);
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
  ActivityArea._() : super();
  factory ActivityArea.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityArea.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ActivityArea_Geometry> _ActivityArea_GeometryByTag = {
    18 : ActivityArea_Geometry.point,
    19 : ActivityArea_Geometry.lineString,
    20 : ActivityArea_Geometry.polygon,
    0 : ActivityArea_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityArea', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [18, 19, 20])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'segmentId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<ActivityArea_ActivityAreaActiveStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ActivityArea_ActivityAreaActiveStatus.ACTIVITY_AREA_ACTIVE_STATUS_ACTIVE, valueOf: ActivityArea_ActivityAreaActiveStatus.valueOf, enumValues: ActivityArea_ActivityAreaActiveStatus.values)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(7, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..pc<$2.Lane>(8, _omitFieldNames ? '' : 'lanes', $pb.PbFieldType.PM, subBuilder: $2.Lane.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'beginningCrossStreet', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'endingCrossStreet', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'beginningMilepost', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'endingMilepost', $pb.PbFieldType.OU3)
    ..pc<$2.TypeOfWork>(13, _omitFieldNames ? '' : 'typesOfWork', $pb.PbFieldType.PM, subBuilder: $2.TypeOfWork.create)
    ..aOM<$2.WorkerPresence>(14, _omitFieldNames ? '' : 'workerPresence', subBuilder: $2.WorkerPresence.create)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'reducedSpeedLimitKph', $pb.PbFieldType.OF)
    ..pc<$2.Restriction>(16, _omitFieldNames ? '' : 'restrictions', $pb.PbFieldType.PM, subBuilder: $2.Restriction.create)
    ..pc<ActivityArea_EventRecurrence>(17, _omitFieldNames ? '' : 'schedule', $pb.PbFieldType.PM, subBuilder: ActivityArea_EventRecurrence.create)
    ..aOM<$3.PointGeometry>(18, _omitFieldNames ? '' : 'point', subBuilder: $3.PointGeometry.create)
    ..aOM<$3.LineStringGeometry>(19, _omitFieldNames ? '' : 'lineString', subBuilder: $3.LineStringGeometry.create)
    ..aOM<$3.PolygonGeometry>(20, _omitFieldNames ? '' : 'polygon', subBuilder: $3.PolygonGeometry.create)
    ..aOM<$3.BoundingBox>(21, _omitFieldNames ? '' : 'bbox', subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityArea clone() => ActivityArea()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityArea copyWith(void Function(ActivityArea) updates) => super.copyWith((message) => updates(message as ActivityArea)) as ActivityArea;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityArea create() => ActivityArea._();
  ActivityArea createEmptyInstance() => create();
  static $pb.PbList<ActivityArea> createRepeated() => $pb.PbList<ActivityArea>();
  @$core.pragma('dart2js:noInline')
  static ActivityArea getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityArea>(create);
  static ActivityArea? _defaultInstance;

  ActivityArea_Geometry whichGeometry() => _ActivityArea_GeometryByTag[$_whichOneof(0)]!;
  void clearGeometry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get segmentId => $_getI64(0);
  @$pb.TagNumber(1)
  set segmentId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSegmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSegmentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  ActivityArea_ActivityAreaActiveStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(ActivityArea_ActivityAreaActiveStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get startDate => $_getN(4);
  @$pb.TagNumber(5)
  set startDate($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartDate() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureStartDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get endDate => $_getN(5);
  @$pb.TagNumber(6)
  set endDate($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndDate() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureEndDate() => $_ensure(5);

  @$pb.TagNumber(7)
  $2.WorkZoneType get areaType => $_getN(6);
  @$pb.TagNumber(7)
  set areaType($2.WorkZoneType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAreaType() => $_has(6);
  @$pb.TagNumber(7)
  void clearAreaType() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$2.Lane> get lanes => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get beginningCrossStreet => $_getIZ(8);
  @$pb.TagNumber(9)
  set beginningCrossStreet($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBeginningCrossStreet() => $_has(8);
  @$pb.TagNumber(9)
  void clearBeginningCrossStreet() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get endingCrossStreet => $_getIZ(9);
  @$pb.TagNumber(10)
  set endingCrossStreet($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasEndingCrossStreet() => $_has(9);
  @$pb.TagNumber(10)
  void clearEndingCrossStreet() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get beginningMilepost => $_getIZ(10);
  @$pb.TagNumber(11)
  set beginningMilepost($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBeginningMilepost() => $_has(10);
  @$pb.TagNumber(11)
  void clearBeginningMilepost() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get endingMilepost => $_getIZ(11);
  @$pb.TagNumber(12)
  set endingMilepost($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEndingMilepost() => $_has(11);
  @$pb.TagNumber(12)
  void clearEndingMilepost() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$2.TypeOfWork> get typesOfWork => $_getList(12);

  @$pb.TagNumber(14)
  $2.WorkerPresence get workerPresence => $_getN(13);
  @$pb.TagNumber(14)
  set workerPresence($2.WorkerPresence v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasWorkerPresence() => $_has(13);
  @$pb.TagNumber(14)
  void clearWorkerPresence() => clearField(14);
  @$pb.TagNumber(14)
  $2.WorkerPresence ensureWorkerPresence() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.double get reducedSpeedLimitKph => $_getN(14);
  @$pb.TagNumber(15)
  set reducedSpeedLimitKph($core.double v) { $_setFloat(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasReducedSpeedLimitKph() => $_has(14);
  @$pb.TagNumber(15)
  void clearReducedSpeedLimitKph() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$2.Restriction> get restrictions => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<ActivityArea_EventRecurrence> get schedule => $_getList(16);

  @$pb.TagNumber(18)
  $3.PointGeometry get point => $_getN(17);
  @$pb.TagNumber(18)
  set point($3.PointGeometry v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasPoint() => $_has(17);
  @$pb.TagNumber(18)
  void clearPoint() => clearField(18);
  @$pb.TagNumber(18)
  $3.PointGeometry ensurePoint() => $_ensure(17);

  @$pb.TagNumber(19)
  $3.LineStringGeometry get lineString => $_getN(18);
  @$pb.TagNumber(19)
  set lineString($3.LineStringGeometry v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasLineString() => $_has(18);
  @$pb.TagNumber(19)
  void clearLineString() => clearField(19);
  @$pb.TagNumber(19)
  $3.LineStringGeometry ensureLineString() => $_ensure(18);

  @$pb.TagNumber(20)
  $3.PolygonGeometry get polygon => $_getN(19);
  @$pb.TagNumber(20)
  set polygon($3.PolygonGeometry v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasPolygon() => $_has(19);
  @$pb.TagNumber(20)
  void clearPolygon() => clearField(20);
  @$pb.TagNumber(20)
  $3.PolygonGeometry ensurePolygon() => $_ensure(19);

  @$pb.TagNumber(21)
  $3.BoundingBox get bbox => $_getN(20);
  @$pb.TagNumber(21)
  set bbox($3.BoundingBox v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasBbox() => $_has(20);
  @$pb.TagNumber(21)
  void clearBbox() => clearField(21);
  @$pb.TagNumber(21)
  $3.BoundingBox ensureBbox() => $_ensure(20);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
