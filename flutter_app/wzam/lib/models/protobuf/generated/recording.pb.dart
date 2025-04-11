//
//  Generated code. Do not modify.
//  source: recording.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'wzdx.pb.dart' as $2;
import 'wzdx.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecordingMarking extends $pb.GeneratedMessage {
  factory RecordingMarking({
    $core.bool? refPt,
    $core.int? laneClosed,
    $core.int? laneOpened,
    $core.bool? workersPresent,
    $core.double? speedLimitMph,
    $3.RoadSurfaceType? surfaceType,
  }) {
    final $result = create();
    if (refPt != null) {
      $result.refPt = refPt;
    }
    if (laneClosed != null) {
      $result.laneClosed = laneClosed;
    }
    if (laneOpened != null) {
      $result.laneOpened = laneOpened;
    }
    if (workersPresent != null) {
      $result.workersPresent = workersPresent;
    }
    if (speedLimitMph != null) {
      $result.speedLimitMph = speedLimitMph;
    }
    if (surfaceType != null) {
      $result.surfaceType = surfaceType;
    }
    return $result;
  }
  RecordingMarking._() : super();
  factory RecordingMarking.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingMarking.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingMarking', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'refPt')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'laneClosed', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'laneOpened', $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'workersPresent')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'speedLimitMph', $pb.PbFieldType.OF)
    ..e<$3.RoadSurfaceType>(6, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.OE, defaultOrMaker: $3.RoadSurfaceType.ROAD_SURFACE_TYPE_PAVED, valueOf: $3.RoadSurfaceType.valueOf, enumValues: $3.RoadSurfaceType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingMarking clone() => RecordingMarking()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingMarking copyWith(void Function(RecordingMarking) updates) => super.copyWith((message) => updates(message as RecordingMarking)) as RecordingMarking;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingMarking create() => RecordingMarking._();
  RecordingMarking createEmptyInstance() => create();
  static $pb.PbList<RecordingMarking> createRepeated() => $pb.PbList<RecordingMarking>();
  @$core.pragma('dart2js:noInline')
  static RecordingMarking getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingMarking>(create);
  static RecordingMarking? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get refPt => $_getBF(0);
  @$pb.TagNumber(1)
  set refPt($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefPt() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefPt() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get laneClosed => $_getIZ(1);
  @$pb.TagNumber(2)
  set laneClosed($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLaneClosed() => $_has(1);
  @$pb.TagNumber(2)
  void clearLaneClosed() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get laneOpened => $_getIZ(2);
  @$pb.TagNumber(3)
  set laneOpened($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLaneOpened() => $_has(2);
  @$pb.TagNumber(3)
  void clearLaneOpened() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get workersPresent => $_getBF(3);
  @$pb.TagNumber(4)
  set workersPresent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWorkersPresent() => $_has(3);
  @$pb.TagNumber(4)
  void clearWorkersPresent() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get speedLimitMph => $_getN(4);
  @$pb.TagNumber(5)
  set speedLimitMph($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpeedLimitMph() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpeedLimitMph() => $_clearField(5);

  @$pb.TagNumber(6)
  $3.RoadSurfaceType get surfaceType => $_getN(5);
  @$pb.TagNumber(6)
  set surfaceType($3.RoadSurfaceType v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSurfaceType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSurfaceType() => $_clearField(6);
}

class RecordingPoint extends $pb.GeneratedMessage {
  factory RecordingPoint({
    $1.Timestamp? date,
    $core.int? numSatellites,
    $core.double? accuracy,
    $core.double? latitude,
    $core.double? longitude,
    $core.double? altitude,
    $core.double? speed,
    $core.double? heading,
    $core.int? numLanes,
    $core.Iterable<RecordingMarking>? markings,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (numSatellites != null) {
      $result.numSatellites = numSatellites;
    }
    if (accuracy != null) {
      $result.accuracy = accuracy;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    if (altitude != null) {
      $result.altitude = altitude;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (heading != null) {
      $result.heading = heading;
    }
    if (numLanes != null) {
      $result.numLanes = numLanes;
    }
    if (markings != null) {
      $result.markings.addAll(markings);
    }
    return $result;
  }
  RecordingPoint._() : super();
  factory RecordingPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'date', subBuilder: $1.Timestamp.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numSatellites', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'accuracy', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'altitude', $pb.PbFieldType.OF)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OF)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'heading', $pb.PbFieldType.OF)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'numLanes', $pb.PbFieldType.OU3)
    ..pc<RecordingMarking>(10, _omitFieldNames ? '' : 'markings', $pb.PbFieldType.PM, subBuilder: RecordingMarking.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingPoint clone() => RecordingPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingPoint copyWith(void Function(RecordingPoint) updates) => super.copyWith((message) => updates(message as RecordingPoint)) as RecordingPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingPoint create() => RecordingPoint._();
  RecordingPoint createEmptyInstance() => create();
  static $pb.PbList<RecordingPoint> createRepeated() => $pb.PbList<RecordingPoint>();
  @$core.pragma('dart2js:noInline')
  static RecordingPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingPoint>(create);
  static RecordingPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get date => $_getN(0);
  @$pb.TagNumber(1)
  set date($1.Timestamp v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get numSatellites => $_getIZ(1);
  @$pb.TagNumber(2)
  set numSatellites($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumSatellites() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumSatellites() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get accuracy => $_getN(2);
  @$pb.TagNumber(3)
  set accuracy($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccuracy() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccuracy() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get latitude => $_getN(3);
  @$pb.TagNumber(4)
  set latitude($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLatitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatitude() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get longitude => $_getN(4);
  @$pb.TagNumber(5)
  set longitude($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLongitude() => $_has(4);
  @$pb.TagNumber(5)
  void clearLongitude() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get altitude => $_getN(5);
  @$pb.TagNumber(6)
  set altitude($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAltitude() => $_has(5);
  @$pb.TagNumber(6)
  void clearAltitude() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get speed => $_getN(6);
  @$pb.TagNumber(7)
  set speed($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpeed() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get heading => $_getN(7);
  @$pb.TagNumber(8)
  set heading($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHeading() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeading() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get numLanes => $_getIZ(8);
  @$pb.TagNumber(9)
  set numLanes($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNumLanes() => $_has(8);
  @$pb.TagNumber(9)
  void clearNumLanes() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<RecordingMarking> get markings => $_getList(9);
}

class Recording extends $pb.GeneratedMessage {
  factory Recording({
    $fixnum.Int64? projectId,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? areaId,
    $core.String? recordingName,
    $core.Iterable<$2.TypeOfWork>? typesOfWork,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.double? mobilitySpeedMph,
    $3.RoadSurfaceType? surfaceType,
    $core.Iterable<RecordingPoint>? points,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (areaId != null) {
      $result.areaId = areaId;
    }
    if (recordingName != null) {
      $result.recordingName = recordingName;
    }
    if (typesOfWork != null) {
      $result.typesOfWork.addAll(typesOfWork);
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
    if (mobilitySpeedMph != null) {
      $result.mobilitySpeedMph = mobilitySpeedMph;
    }
    if (surfaceType != null) {
      $result.surfaceType = surfaceType;
    }
    if (points != null) {
      $result.points.addAll(points);
    }
    return $result;
  }
  Recording._() : super();
  factory Recording.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Recording.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Recording', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'recordingName')
    ..pc<$2.TypeOfWork>(5, _omitFieldNames ? '' : 'typesOfWork', $pb.PbFieldType.PM, subBuilder: $2.TypeOfWork.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(8, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'mobilitySpeedMph', $pb.PbFieldType.OF)
    ..e<$3.RoadSurfaceType>(10, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.OE, defaultOrMaker: $3.RoadSurfaceType.ROAD_SURFACE_TYPE_PAVED, valueOf: $3.RoadSurfaceType.valueOf, enumValues: $3.RoadSurfaceType.values)
    ..pc<RecordingPoint>(11, _omitFieldNames ? '' : 'points', $pb.PbFieldType.PM, subBuilder: RecordingPoint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Recording clone() => Recording()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Recording copyWith(void Function(Recording) updates) => super.copyWith((message) => updates(message as Recording)) as Recording;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Recording create() => Recording._();
  Recording createEmptyInstance() => create();
  static $pb.PbList<Recording> createRepeated() => $pb.PbList<Recording>();
  @$core.pragma('dart2js:noInline')
  static Recording getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Recording>(create);
  static Recording? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get projectId => $_getI64(0);
  @$pb.TagNumber(1)
  set projectId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roadSectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSectionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get areaId => $_getI64(2);
  @$pb.TagNumber(3)
  set areaId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAreaId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAreaId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get recordingName => $_getSZ(3);
  @$pb.TagNumber(4)
  set recordingName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRecordingName() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecordingName() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$2.TypeOfWork> get typesOfWork => $_getList(4);

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
  $core.double get mobilitySpeedMph => $_getN(8);
  @$pb.TagNumber(9)
  set mobilitySpeedMph($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMobilitySpeedMph() => $_has(8);
  @$pb.TagNumber(9)
  void clearMobilitySpeedMph() => $_clearField(9);

  @$pb.TagNumber(10)
  $3.RoadSurfaceType get surfaceType => $_getN(9);
  @$pb.TagNumber(10)
  set surfaceType($3.RoadSurfaceType v) { $_setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSurfaceType() => $_has(9);
  @$pb.TagNumber(10)
  void clearSurfaceType() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<RecordingPoint> get points => $_getList(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
