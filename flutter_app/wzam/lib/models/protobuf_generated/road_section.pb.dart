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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import 'common.pbenum.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'road_section.pbenum.dart';
import 'wzdx.pbenum.dart' as $2;

export 'road_section.pbenum.dart';

enum RoadSection_Geometry {
  lineString, 
  polygon, 
  notSet
}

class RoadSection extends $pb.GeneratedMessage {
  factory RoadSection({
    $fixnum.Int64? projectId,
    $2.RoadwayDirection? direction,
    $core.String? name,
    $core.String? description,
    RoadSection_RoadSegmentActiveStatus? armedStatus,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $core.Iterable<$core.String>? roadNames,
    $core.int? beginningCrossStreet,
    $core.int? endingCrossStreet,
    $core.int? beginningMilepost,
    $core.int? endingMilepost,
    $3.RoadSurfaceType? surfaceType,
    $3.LineStringGeometry? lineString,
    $3.PolygonGeometry? polygon,
    $core.Iterable<$3.BoundingBox>? bbox,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
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
    if (armedStatus != null) {
      $result.armedStatus = armedStatus;
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
    if (surfaceType != null) {
      $result.surfaceType = surfaceType;
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
  RoadSection._() : super();
  factory RoadSection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RoadSection_Geometry> _RoadSection_GeometryByTag = {
    15 : RoadSection_Geometry.lineString,
    16 : RoadSection_Geometry.polygon,
    0 : RoadSection_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSection', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [15, 16])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<$2.RoadwayDirection>(2, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: $2.RoadwayDirection.ROADWAY_DIRECTION_NORTHBOUND, valueOf: $2.RoadwayDirection.valueOf, enumValues: $2.RoadwayDirection.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..e<RoadSection_RoadSegmentActiveStatus>(5, _omitFieldNames ? '' : 'armedStatus', $pb.PbFieldType.OE, defaultOrMaker: RoadSection_RoadSegmentActiveStatus.ROAD_SEGMENT_ACTIVE_STATUS_ACTIVE, valueOf: RoadSection_RoadSegmentActiveStatus.valueOf, enumValues: RoadSection_RoadSegmentActiveStatus.values)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(8, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..pPS(9, _omitFieldNames ? '' : 'roadNames')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'beginningCrossStreet', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'endingCrossStreet', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'beginningMilepost', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'endingMilepost', $pb.PbFieldType.OU3)
    ..e<$3.RoadSurfaceType>(14, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.OE, defaultOrMaker: $3.RoadSurfaceType.ROAD_SURFACE_TYPE_PAVED, valueOf: $3.RoadSurfaceType.valueOf, enumValues: $3.RoadSurfaceType.values)
    ..aOM<$3.LineStringGeometry>(15, _omitFieldNames ? '' : 'lineString', subBuilder: $3.LineStringGeometry.create)
    ..aOM<$3.PolygonGeometry>(16, _omitFieldNames ? '' : 'polygon', subBuilder: $3.PolygonGeometry.create)
    ..pc<$3.BoundingBox>(17, _omitFieldNames ? '' : 'bbox', $pb.PbFieldType.PM, subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSection clone() => RoadSection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSection copyWith(void Function(RoadSection) updates) => super.copyWith((message) => updates(message as RoadSection)) as RoadSection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSection create() => RoadSection._();
  RoadSection createEmptyInstance() => create();
  static $pb.PbList<RoadSection> createRepeated() => $pb.PbList<RoadSection>();
  @$core.pragma('dart2js:noInline')
  static RoadSection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSection>(create);
  static RoadSection? _defaultInstance;

  RoadSection_Geometry whichGeometry() => _RoadSection_GeometryByTag[$_whichOneof(0)]!;
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
  $2.RoadwayDirection get direction => $_getN(1);
  @$pb.TagNumber(2)
  set direction($2.RoadwayDirection v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  RoadSection_RoadSegmentActiveStatus get armedStatus => $_getN(4);
  @$pb.TagNumber(5)
  set armedStatus(RoadSection_RoadSegmentActiveStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasArmedStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearArmedStatus() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get startDate => $_getN(5);
  @$pb.TagNumber(6)
  set startDate($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartDate() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureStartDate() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get endDate => $_getN(6);
  @$pb.TagNumber(7)
  set endDate($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndDate() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureEndDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $2.WorkZoneType get areaType => $_getN(7);
  @$pb.TagNumber(8)
  set areaType($2.WorkZoneType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAreaType() => $_has(7);
  @$pb.TagNumber(8)
  void clearAreaType() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get roadNames => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get beginningCrossStreet => $_getIZ(9);
  @$pb.TagNumber(10)
  set beginningCrossStreet($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBeginningCrossStreet() => $_has(9);
  @$pb.TagNumber(10)
  void clearBeginningCrossStreet() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get endingCrossStreet => $_getIZ(10);
  @$pb.TagNumber(11)
  set endingCrossStreet($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasEndingCrossStreet() => $_has(10);
  @$pb.TagNumber(11)
  void clearEndingCrossStreet() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get beginningMilepost => $_getIZ(11);
  @$pb.TagNumber(12)
  set beginningMilepost($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBeginningMilepost() => $_has(11);
  @$pb.TagNumber(12)
  void clearBeginningMilepost() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get endingMilepost => $_getIZ(12);
  @$pb.TagNumber(13)
  set endingMilepost($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEndingMilepost() => $_has(12);
  @$pb.TagNumber(13)
  void clearEndingMilepost() => clearField(13);

  @$pb.TagNumber(14)
  $3.RoadSurfaceType get surfaceType => $_getN(13);
  @$pb.TagNumber(14)
  set surfaceType($3.RoadSurfaceType v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasSurfaceType() => $_has(13);
  @$pb.TagNumber(14)
  void clearSurfaceType() => clearField(14);

  @$pb.TagNumber(15)
  $3.LineStringGeometry get lineString => $_getN(14);
  @$pb.TagNumber(15)
  set lineString($3.LineStringGeometry v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasLineString() => $_has(14);
  @$pb.TagNumber(15)
  void clearLineString() => clearField(15);
  @$pb.TagNumber(15)
  $3.LineStringGeometry ensureLineString() => $_ensure(14);

  @$pb.TagNumber(16)
  $3.PolygonGeometry get polygon => $_getN(15);
  @$pb.TagNumber(16)
  set polygon($3.PolygonGeometry v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasPolygon() => $_has(15);
  @$pb.TagNumber(16)
  void clearPolygon() => clearField(16);
  @$pb.TagNumber(16)
  $3.PolygonGeometry ensurePolygon() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.List<$3.BoundingBox> get bbox => $_getList(16);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
