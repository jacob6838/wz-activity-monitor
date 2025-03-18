//
//  Generated code. Do not modify.
//  source: report.proto
//
// @dart = 2.12

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

enum Report_Geometry {
  point, 
  lineString, 
  polygon, 
  notSet
}

class Report extends $pb.GeneratedMessage {
  factory Report({
    $fixnum.Int64? projectId,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? areaId,
    $core.String? reportName,
    $core.Iterable<$2.TypeOfWork>? typesOfWork,
    $core.bool? workersPresent,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.double? mobilitySpeedMph,
    $3.PointGeometry? point,
    $3.LineStringGeometry? lineString,
    $3.PolygonGeometry? polygon,
    $core.String? licensePlate,
    $3.RoadSurfaceType? surfaceType,
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
    if (reportName != null) {
      $result.reportName = reportName;
    }
    if (typesOfWork != null) {
      $result.typesOfWork.addAll(typesOfWork);
    }
    if (workersPresent != null) {
      $result.workersPresent = workersPresent;
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
    if (point != null) {
      $result.point = point;
    }
    if (lineString != null) {
      $result.lineString = lineString;
    }
    if (polygon != null) {
      $result.polygon = polygon;
    }
    if (licensePlate != null) {
      $result.licensePlate = licensePlate;
    }
    if (surfaceType != null) {
      $result.surfaceType = surfaceType;
    }
    return $result;
  }
  Report._() : super();
  factory Report.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Report.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Report_Geometry> _Report_GeometryByTag = {
    11 : Report_Geometry.point,
    12 : Report_Geometry.lineString,
    13 : Report_Geometry.polygon,
    0 : Report_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Report', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [11, 12, 13])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'reportName')
    ..pc<$2.TypeOfWork>(5, _omitFieldNames ? '' : 'typesOfWork', $pb.PbFieldType.PM, subBuilder: $2.TypeOfWork.create)
    ..aOB(6, _omitFieldNames ? '' : 'workersPresent')
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(8, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(9, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'mobilitySpeedMph', $pb.PbFieldType.OF)
    ..aOM<$3.PointGeometry>(11, _omitFieldNames ? '' : 'point', subBuilder: $3.PointGeometry.create)
    ..aOM<$3.LineStringGeometry>(12, _omitFieldNames ? '' : 'lineString', subBuilder: $3.LineStringGeometry.create)
    ..aOM<$3.PolygonGeometry>(13, _omitFieldNames ? '' : 'polygon', subBuilder: $3.PolygonGeometry.create)
    ..aOS(14, _omitFieldNames ? '' : 'licensePlate')
    ..e<$3.RoadSurfaceType>(15, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.OE, defaultOrMaker: $3.RoadSurfaceType.ROAD_SURFACE_TYPE_PAVED, valueOf: $3.RoadSurfaceType.valueOf, enumValues: $3.RoadSurfaceType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Report clone() => Report()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Report copyWith(void Function(Report) updates) => super.copyWith((message) => updates(message as Report)) as Report;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Report create() => Report._();
  Report createEmptyInstance() => create();
  static $pb.PbList<Report> createRepeated() => $pb.PbList<Report>();
  @$core.pragma('dart2js:noInline')
  static Report getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Report>(create);
  static Report? _defaultInstance;

  Report_Geometry whichGeometry() => _Report_GeometryByTag[$_whichOneof(0)]!;
  void clearGeometry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get projectId => $_getI64(0);
  @$pb.TagNumber(1)
  set projectId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roadSectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSectionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get areaId => $_getI64(2);
  @$pb.TagNumber(3)
  set areaId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAreaId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAreaId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reportName => $_getSZ(3);
  @$pb.TagNumber(4)
  set reportName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportName() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$2.TypeOfWork> get typesOfWork => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get workersPresent => $_getBF(5);
  @$pb.TagNumber(6)
  set workersPresent($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWorkersPresent() => $_has(5);
  @$pb.TagNumber(6)
  void clearWorkersPresent() => clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get startDate => $_getN(6);
  @$pb.TagNumber(7)
  set startDate($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartDate() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureStartDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Timestamp get endDate => $_getN(7);
  @$pb.TagNumber(8)
  set endDate($1.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasEndDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndDate() => clearField(8);
  @$pb.TagNumber(8)
  $1.Timestamp ensureEndDate() => $_ensure(7);

  @$pb.TagNumber(9)
  $2.WorkZoneType get areaType => $_getN(8);
  @$pb.TagNumber(9)
  set areaType($2.WorkZoneType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAreaType() => $_has(8);
  @$pb.TagNumber(9)
  void clearAreaType() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get mobilitySpeedMph => $_getN(9);
  @$pb.TagNumber(10)
  set mobilitySpeedMph($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMobilitySpeedMph() => $_has(9);
  @$pb.TagNumber(10)
  void clearMobilitySpeedMph() => clearField(10);

  @$pb.TagNumber(11)
  $3.PointGeometry get point => $_getN(10);
  @$pb.TagNumber(11)
  set point($3.PointGeometry v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPoint() => $_has(10);
  @$pb.TagNumber(11)
  void clearPoint() => clearField(11);
  @$pb.TagNumber(11)
  $3.PointGeometry ensurePoint() => $_ensure(10);

  @$pb.TagNumber(12)
  $3.LineStringGeometry get lineString => $_getN(11);
  @$pb.TagNumber(12)
  set lineString($3.LineStringGeometry v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLineString() => $_has(11);
  @$pb.TagNumber(12)
  void clearLineString() => clearField(12);
  @$pb.TagNumber(12)
  $3.LineStringGeometry ensureLineString() => $_ensure(11);

  @$pb.TagNumber(13)
  $3.PolygonGeometry get polygon => $_getN(12);
  @$pb.TagNumber(13)
  set polygon($3.PolygonGeometry v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPolygon() => $_has(12);
  @$pb.TagNumber(13)
  void clearPolygon() => clearField(13);
  @$pb.TagNumber(13)
  $3.PolygonGeometry ensurePolygon() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get licensePlate => $_getSZ(13);
  @$pb.TagNumber(14)
  set licensePlate($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLicensePlate() => $_has(13);
  @$pb.TagNumber(14)
  void clearLicensePlate() => clearField(14);

  @$pb.TagNumber(15)
  $3.RoadSurfaceType get surfaceType => $_getN(14);
  @$pb.TagNumber(15)
  set surfaceType($3.RoadSurfaceType v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSurfaceType() => $_has(14);
  @$pb.TagNumber(15)
  void clearSurfaceType() => clearField(15);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
