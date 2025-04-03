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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import 'common.pbenum.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'wzdx.pb.dart' as $2;
import 'wzdx.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'road_sub_event.pbenum.dart';

enum RoadSubEvent_Geometry {
  point, 
  lineString, 
  polygon, 
  notSet
}

class RoadSubEvent extends $pb.GeneratedMessage {
  factory RoadSubEvent({
    $fixnum.Int64? projectId,
    $fixnum.Int64? workZoneId,
    $2.RoadwayDirection? direction,
    $core.String? name,
    $core.String? description,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.Iterable<$core.String>? roadNames,
    $core.String? beginningCrossStreet,
    $core.String? endingCrossStreet,
    $core.double? beginningMilepost,
    $core.double? endingMilepost,
    $2.WorkerPresence? workerPresence,
    $core.double? reducedSpeedLimitKph,
    $core.Iterable<$2.Restriction>? restrictions,
    $core.Iterable<$2.Lane>? lanes,
    $3.RoadSurfaceType? surfaceType,
    $3.MarkedLocationType? startLocationType,
    $3.MarkedLocationType? endLocationType,
    $3.PointGeometry? point,
    $3.LineStringGeometry? lineString,
    $3.PolygonGeometry? polygon,
    $core.Iterable<$3.BoundingBox>? bbox,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (workZoneId != null) {
      $result.workZoneId = workZoneId;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
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
    if (roadNames != null) {
      $result.roadNames.addAll(roadNames);
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
    if (workerPresence != null) {
      $result.workerPresence = workerPresence;
    }
    if (reducedSpeedLimitKph != null) {
      $result.reducedSpeedLimitKph = reducedSpeedLimitKph;
    }
    if (restrictions != null) {
      $result.restrictions.addAll(restrictions);
    }
    if (lanes != null) {
      $result.lanes.addAll(lanes);
    }
    if (surfaceType != null) {
      $result.surfaceType = surfaceType;
    }
    if (startLocationType != null) {
      $result.startLocationType = startLocationType;
    }
    if (endLocationType != null) {
      $result.endLocationType = endLocationType;
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
      $result.bbox.addAll(bbox);
    }
    return $result;
  }
  RoadSubEvent._() : super();
  factory RoadSubEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSubEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RoadSubEvent_Geometry> _RoadSubEvent_GeometryByTag = {
    21 : RoadSubEvent_Geometry.point,
    22 : RoadSubEvent_Geometry.lineString,
    23 : RoadSubEvent_Geometry.polygon,
    0 : RoadSubEvent_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSubEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [21, 22, 23])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'workZoneId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<$2.RoadwayDirection>(3, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: $2.RoadwayDirection.ROADWAY_DIRECTION_NORTHBOUND, valueOf: $2.RoadwayDirection.valueOf, enumValues: $2.RoadwayDirection.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(8, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..pPS(9, _omitFieldNames ? '' : 'roadNames')
    ..aOS(10, _omitFieldNames ? '' : 'beginningCrossStreet')
    ..aOS(11, _omitFieldNames ? '' : 'endingCrossStreet')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'beginningMilepost', $pb.PbFieldType.OD)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'endingMilepost', $pb.PbFieldType.OD)
    ..aOM<$2.WorkerPresence>(14, _omitFieldNames ? '' : 'workerPresence', subBuilder: $2.WorkerPresence.create)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'reducedSpeedLimitKph', $pb.PbFieldType.OF)
    ..pc<$2.Restriction>(16, _omitFieldNames ? '' : 'restrictions', $pb.PbFieldType.PM, subBuilder: $2.Restriction.create)
    ..pc<$2.Lane>(17, _omitFieldNames ? '' : 'lanes', $pb.PbFieldType.PM, subBuilder: $2.Lane.create)
    ..e<$3.RoadSurfaceType>(18, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.OE, defaultOrMaker: $3.RoadSurfaceType.ROAD_SURFACE_TYPE_PAVED, valueOf: $3.RoadSurfaceType.valueOf, enumValues: $3.RoadSurfaceType.values)
    ..e<$3.MarkedLocationType>(19, _omitFieldNames ? '' : 'startLocationType', $pb.PbFieldType.OE, defaultOrMaker: $3.MarkedLocationType.MARKED_LOCATION_TYPE_GENERIC, valueOf: $3.MarkedLocationType.valueOf, enumValues: $3.MarkedLocationType.values)
    ..e<$3.MarkedLocationType>(20, _omitFieldNames ? '' : 'endLocationType', $pb.PbFieldType.OE, defaultOrMaker: $3.MarkedLocationType.MARKED_LOCATION_TYPE_GENERIC, valueOf: $3.MarkedLocationType.valueOf, enumValues: $3.MarkedLocationType.values)
    ..aOM<$3.PointGeometry>(21, _omitFieldNames ? '' : 'point', subBuilder: $3.PointGeometry.create)
    ..aOM<$3.LineStringGeometry>(22, _omitFieldNames ? '' : 'lineString', subBuilder: $3.LineStringGeometry.create)
    ..aOM<$3.PolygonGeometry>(23, _omitFieldNames ? '' : 'polygon', subBuilder: $3.PolygonGeometry.create)
    ..pc<$3.BoundingBox>(24, _omitFieldNames ? '' : 'bbox', $pb.PbFieldType.PM, subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSubEvent clone() => RoadSubEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSubEvent copyWith(void Function(RoadSubEvent) updates) => super.copyWith((message) => updates(message as RoadSubEvent)) as RoadSubEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSubEvent create() => RoadSubEvent._();
  RoadSubEvent createEmptyInstance() => create();
  static $pb.PbList<RoadSubEvent> createRepeated() => $pb.PbList<RoadSubEvent>();
  @$core.pragma('dart2js:noInline')
  static RoadSubEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSubEvent>(create);
  static RoadSubEvent? _defaultInstance;

  RoadSubEvent_Geometry whichGeometry() => _RoadSubEvent_GeometryByTag[$_whichOneof(0)]!;
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
  $fixnum.Int64 get workZoneId => $_getI64(1);
  @$pb.TagNumber(2)
  set workZoneId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkZoneId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkZoneId() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.RoadwayDirection get direction => $_getN(2);
  @$pb.TagNumber(3)
  set direction($2.RoadwayDirection v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirection() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirection() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);

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

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get roadNames => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get beginningCrossStreet => $_getSZ(9);
  @$pb.TagNumber(10)
  set beginningCrossStreet($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBeginningCrossStreet() => $_has(9);
  @$pb.TagNumber(10)
  void clearBeginningCrossStreet() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get endingCrossStreet => $_getSZ(10);
  @$pb.TagNumber(11)
  set endingCrossStreet($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndingCrossStreet() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndingCrossStreet() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get beginningMilepost => $_getN(11);
  @$pb.TagNumber(12)
  set beginningMilepost($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBeginningMilepost() => $_has(11);
  @$pb.TagNumber(12)
  void clearBeginningMilepost() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get endingMilepost => $_getN(12);
  @$pb.TagNumber(13)
  set endingMilepost($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEndingMilepost() => $_has(12);
  @$pb.TagNumber(13)
  void clearEndingMilepost() => $_clearField(13);

  @$pb.TagNumber(14)
  $2.WorkerPresence get workerPresence => $_getN(13);
  @$pb.TagNumber(14)
  set workerPresence($2.WorkerPresence v) { $_setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasWorkerPresence() => $_has(13);
  @$pb.TagNumber(14)
  void clearWorkerPresence() => $_clearField(14);
  @$pb.TagNumber(14)
  $2.WorkerPresence ensureWorkerPresence() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.double get reducedSpeedLimitKph => $_getN(14);
  @$pb.TagNumber(15)
  set reducedSpeedLimitKph($core.double v) { $_setFloat(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasReducedSpeedLimitKph() => $_has(14);
  @$pb.TagNumber(15)
  void clearReducedSpeedLimitKph() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<$2.Restriction> get restrictions => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<$2.Lane> get lanes => $_getList(16);

  @$pb.TagNumber(18)
  $3.RoadSurfaceType get surfaceType => $_getN(17);
  @$pb.TagNumber(18)
  set surfaceType($3.RoadSurfaceType v) { $_setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasSurfaceType() => $_has(17);
  @$pb.TagNumber(18)
  void clearSurfaceType() => $_clearField(18);

  @$pb.TagNumber(19)
  $3.MarkedLocationType get startLocationType => $_getN(18);
  @$pb.TagNumber(19)
  set startLocationType($3.MarkedLocationType v) { $_setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasStartLocationType() => $_has(18);
  @$pb.TagNumber(19)
  void clearStartLocationType() => $_clearField(19);

  @$pb.TagNumber(20)
  $3.MarkedLocationType get endLocationType => $_getN(19);
  @$pb.TagNumber(20)
  set endLocationType($3.MarkedLocationType v) { $_setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasEndLocationType() => $_has(19);
  @$pb.TagNumber(20)
  void clearEndLocationType() => $_clearField(20);

  @$pb.TagNumber(21)
  $3.PointGeometry get point => $_getN(20);
  @$pb.TagNumber(21)
  set point($3.PointGeometry v) { $_setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasPoint() => $_has(20);
  @$pb.TagNumber(21)
  void clearPoint() => $_clearField(21);
  @$pb.TagNumber(21)
  $3.PointGeometry ensurePoint() => $_ensure(20);

  @$pb.TagNumber(22)
  $3.LineStringGeometry get lineString => $_getN(21);
  @$pb.TagNumber(22)
  set lineString($3.LineStringGeometry v) { $_setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasLineString() => $_has(21);
  @$pb.TagNumber(22)
  void clearLineString() => $_clearField(22);
  @$pb.TagNumber(22)
  $3.LineStringGeometry ensureLineString() => $_ensure(21);

  @$pb.TagNumber(23)
  $3.PolygonGeometry get polygon => $_getN(22);
  @$pb.TagNumber(23)
  set polygon($3.PolygonGeometry v) { $_setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasPolygon() => $_has(22);
  @$pb.TagNumber(23)
  void clearPolygon() => $_clearField(23);
  @$pb.TagNumber(23)
  $3.PolygonGeometry ensurePolygon() => $_ensure(22);

  @$pb.TagNumber(24)
  $pb.PbList<$3.BoundingBox> get bbox => $_getList(23);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
