//
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'project.pbenum.dart';
import 'wzdx.pbenum.dart' as $2;

export 'project.pbenum.dart';

enum Project_Geometry {
  lineStrings, 
  polygons, 
  notSet
}

class Project extends $pb.GeneratedMessage {
  factory Project({
    $core.String? name,
    $core.String? description,
    Project_ProjectStatus? activeStatus,
    $1.Timestamp? creationDate,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
    $2.WorkZoneType? areaType,
    $3.MultiLineStringGeometry? lineStrings,
    $3.MultiPolygonGeometry? polygons,
    $3.BoundingBox? bbox,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (activeStatus != null) {
      $result.activeStatus = activeStatus;
    }
    if (creationDate != null) {
      $result.creationDate = creationDate;
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
    if (lineStrings != null) {
      $result.lineStrings = lineStrings;
    }
    if (polygons != null) {
      $result.polygons = polygons;
    }
    if (bbox != null) {
      $result.bbox = bbox;
    }
    return $result;
  }
  Project._() : super();
  factory Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Project_Geometry> _Project_GeometryByTag = {
    8 : Project_Geometry.lineStrings,
    9 : Project_Geometry.polygons,
    0 : Project_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Project', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..e<Project_ProjectStatus>(3, _omitFieldNames ? '' : 'activeStatus', $pb.PbFieldType.OE, defaultOrMaker: Project_ProjectStatus.PROJECT_STATUS_ACTIVE, valueOf: Project_ProjectStatus.valueOf, enumValues: Project_ProjectStatus.values)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'creationDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..e<$2.WorkZoneType>(7, _omitFieldNames ? '' : 'areaType', $pb.PbFieldType.OE, defaultOrMaker: $2.WorkZoneType.WORK_ZONE_TYPE_STATIC, valueOf: $2.WorkZoneType.valueOf, enumValues: $2.WorkZoneType.values)
    ..aOM<$3.MultiLineStringGeometry>(8, _omitFieldNames ? '' : 'lineStrings', subBuilder: $3.MultiLineStringGeometry.create)
    ..aOM<$3.MultiPolygonGeometry>(9, _omitFieldNames ? '' : 'polygons', subBuilder: $3.MultiPolygonGeometry.create)
    ..aOM<$3.BoundingBox>(10, _omitFieldNames ? '' : 'bbox', subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Project clone() => Project()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project)) as Project;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Project create() => Project._();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  @$core.pragma('dart2js:noInline')
  static Project getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Project>(create);
  static Project? _defaultInstance;

  Project_Geometry whichGeometry() => _Project_GeometryByTag[$_whichOneof(0)]!;
  void clearGeometry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  Project_ProjectStatus get activeStatus => $_getN(2);
  @$pb.TagNumber(3)
  set activeStatus(Project_ProjectStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActiveStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveStatus() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get creationDate => $_getN(3);
  @$pb.TagNumber(4)
  set creationDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreationDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreationDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreationDate() => $_ensure(3);

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
  $3.MultiLineStringGeometry get lineStrings => $_getN(7);
  @$pb.TagNumber(8)
  set lineStrings($3.MultiLineStringGeometry v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLineStrings() => $_has(7);
  @$pb.TagNumber(8)
  void clearLineStrings() => clearField(8);
  @$pb.TagNumber(8)
  $3.MultiLineStringGeometry ensureLineStrings() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.MultiPolygonGeometry get polygons => $_getN(8);
  @$pb.TagNumber(9)
  set polygons($3.MultiPolygonGeometry v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPolygons() => $_has(8);
  @$pb.TagNumber(9)
  void clearPolygons() => clearField(9);
  @$pb.TagNumber(9)
  $3.MultiPolygonGeometry ensurePolygons() => $_ensure(8);

  @$pb.TagNumber(10)
  $3.BoundingBox get bbox => $_getN(9);
  @$pb.TagNumber(10)
  set bbox($3.BoundingBox v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBbox() => $_has(9);
  @$pb.TagNumber(10)
  void clearBbox() => clearField(10);
  @$pb.TagNumber(10)
  $3.BoundingBox ensureBbox() => $_ensure(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
