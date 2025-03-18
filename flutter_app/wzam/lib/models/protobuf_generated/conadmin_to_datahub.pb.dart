//
//  Generated code. Do not modify.
//  source: conadmin_to_datahub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'activity_area.pb.dart' as $9;
import 'field_device.pb.dart' as $6;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'project.pb.dart' as $7;
import 'road_section.pb.dart' as $8;

class FieldDeviceAssociationChanged extends $pb.GeneratedMessage {
  factory FieldDeviceAssociationChanged({
    $fixnum.Int64? id,
    $fixnum.Int64? projectId,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? areaId,
    $6.FieldDevice? fieldDevice,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (areaId != null) {
      $result.areaId = areaId;
    }
    if (fieldDevice != null) {
      $result.fieldDevice = fieldDevice;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  FieldDeviceAssociationChanged._() : super();
  factory FieldDeviceAssociationChanged.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceAssociationChanged.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceAssociationChanged', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'areaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$6.FieldDevice>(5, _omitFieldNames ? '' : 'fieldDevice', subBuilder: $6.FieldDevice.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceAssociationChanged clone() => FieldDeviceAssociationChanged()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceAssociationChanged copyWith(void Function(FieldDeviceAssociationChanged) updates) => super.copyWith((message) => updates(message as FieldDeviceAssociationChanged)) as FieldDeviceAssociationChanged;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceAssociationChanged create() => FieldDeviceAssociationChanged._();
  FieldDeviceAssociationChanged createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceAssociationChanged> createRepeated() => $pb.PbList<FieldDeviceAssociationChanged>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceAssociationChanged getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceAssociationChanged>(create);
  static FieldDeviceAssociationChanged? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get projectId => $_getI64(1);
  @$pb.TagNumber(2)
  set projectId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roadSectionId => $_getI64(2);
  @$pb.TagNumber(3)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSectionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSectionId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get areaId => $_getI64(3);
  @$pb.TagNumber(4)
  set areaId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAreaId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAreaId() => clearField(4);

  @$pb.TagNumber(5)
  $6.FieldDevice get fieldDevice => $_getN(4);
  @$pb.TagNumber(5)
  set fieldDevice($6.FieldDevice v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFieldDevice() => $_has(4);
  @$pb.TagNumber(5)
  void clearFieldDevice() => clearField(5);
  @$pb.TagNumber(5)
  $6.FieldDevice ensureFieldDevice() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get updatedTime => $_getN(5);
  @$pb.TagNumber(6)
  set updatedTime($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedTime() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureUpdatedTime() => $_ensure(5);
}

class RequestRejected extends $pb.GeneratedMessage {
  factory RequestRejected({
    $fixnum.Int64? id,
    $core.String? reason,
    $1.Timestamp? rejectedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (rejectedTime != null) {
      $result.rejectedTime = rejectedTime;
    }
    return $result;
  }
  RequestRejected._() : super();
  factory RequestRejected.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestRejected.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestRejected', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'rejectedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestRejected clone() => RequestRejected()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestRejected copyWith(void Function(RequestRejected) updates) => super.copyWith((message) => updates(message as RequestRejected)) as RequestRejected;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestRejected create() => RequestRejected._();
  RequestRejected createEmptyInstance() => create();
  static $pb.PbList<RequestRejected> createRepeated() => $pb.PbList<RequestRejected>();
  @$core.pragma('dart2js:noInline')
  static RequestRejected getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestRejected>(create);
  static RequestRejected? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get rejectedTime => $_getN(2);
  @$pb.TagNumber(3)
  set rejectedTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRejectedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRejectedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRejectedTime() => $_ensure(2);
}

class ProjectCreated extends $pb.GeneratedMessage {
  factory ProjectCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $7.Project? project,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (project != null) {
      $result.project = project;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  ProjectCreated._() : super();
  factory ProjectCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.Project>(3, _omitFieldNames ? '' : 'project', subBuilder: $7.Project.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectCreated clone() => ProjectCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectCreated copyWith(void Function(ProjectCreated) updates) => super.copyWith((message) => updates(message as ProjectCreated)) as ProjectCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectCreated create() => ProjectCreated._();
  ProjectCreated createEmptyInstance() => create();
  static $pb.PbList<ProjectCreated> createRepeated() => $pb.PbList<ProjectCreated>();
  @$core.pragma('dart2js:noInline')
  static ProjectCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectCreated>(create);
  static ProjectCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $7.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($7.Project v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => clearField(3);
  @$pb.TagNumber(3)
  $7.Project ensureProject() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get createdTime => $_getN(3);
  @$pb.TagNumber(4)
  set createdTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedTime() => $_ensure(3);
}

class ProjectUpdated extends $pb.GeneratedMessage {
  factory ProjectUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $7.Project? project,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (project != null) {
      $result.project = project;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ProjectUpdated._() : super();
  factory ProjectUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.Project>(3, _omitFieldNames ? '' : 'project', subBuilder: $7.Project.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectUpdated clone() => ProjectUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectUpdated copyWith(void Function(ProjectUpdated) updates) => super.copyWith((message) => updates(message as ProjectUpdated)) as ProjectUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectUpdated create() => ProjectUpdated._();
  ProjectUpdated createEmptyInstance() => create();
  static $pb.PbList<ProjectUpdated> createRepeated() => $pb.PbList<ProjectUpdated>();
  @$core.pragma('dart2js:noInline')
  static ProjectUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectUpdated>(create);
  static ProjectUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $7.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($7.Project v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => clearField(3);
  @$pb.TagNumber(3)
  $7.Project ensureProject() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}

class RoadSectionCreated extends $pb.GeneratedMessage {
  factory RoadSectionCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $8.RoadSection? roadSection,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (roadSection != null) {
      $result.roadSection = roadSection;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  RoadSectionCreated._() : super();
  factory RoadSectionCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSectionCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSectionCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSection>(3, _omitFieldNames ? '' : 'roadSection', subBuilder: $8.RoadSection.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSectionCreated clone() => RoadSectionCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSectionCreated copyWith(void Function(RoadSectionCreated) updates) => super.copyWith((message) => updates(message as RoadSectionCreated)) as RoadSectionCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSectionCreated create() => RoadSectionCreated._();
  RoadSectionCreated createEmptyInstance() => create();
  static $pb.PbList<RoadSectionCreated> createRepeated() => $pb.PbList<RoadSectionCreated>();
  @$core.pragma('dart2js:noInline')
  static RoadSectionCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSectionCreated>(create);
  static RoadSectionCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $8.RoadSection get roadSection => $_getN(2);
  @$pb.TagNumber(3)
  set roadSection($8.RoadSection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSection() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSection() => clearField(3);
  @$pb.TagNumber(3)
  $8.RoadSection ensureRoadSection() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get createdTime => $_getN(3);
  @$pb.TagNumber(4)
  set createdTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedTime() => $_ensure(3);
}

class RoadSectionUpdated extends $pb.GeneratedMessage {
  factory RoadSectionUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $8.RoadSection? roadSection,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (roadSection != null) {
      $result.roadSection = roadSection;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  RoadSectionUpdated._() : super();
  factory RoadSectionUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSectionUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSectionUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSection>(3, _omitFieldNames ? '' : 'roadSection', subBuilder: $8.RoadSection.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSectionUpdated clone() => RoadSectionUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSectionUpdated copyWith(void Function(RoadSectionUpdated) updates) => super.copyWith((message) => updates(message as RoadSectionUpdated)) as RoadSectionUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSectionUpdated create() => RoadSectionUpdated._();
  RoadSectionUpdated createEmptyInstance() => create();
  static $pb.PbList<RoadSectionUpdated> createRepeated() => $pb.PbList<RoadSectionUpdated>();
  @$core.pragma('dart2js:noInline')
  static RoadSectionUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSectionUpdated>(create);
  static RoadSectionUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $8.RoadSection get roadSection => $_getN(2);
  @$pb.TagNumber(3)
  set roadSection($8.RoadSection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSection() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSection() => clearField(3);
  @$pb.TagNumber(3)
  $8.RoadSection ensureRoadSection() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}

class ActivityAreaCreated extends $pb.GeneratedMessage {
  factory ActivityAreaCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $9.ActivityArea? activityArea,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (activityArea != null) {
      $result.activityArea = activityArea;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  ActivityAreaCreated._() : super();
  factory ActivityAreaCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityAreaCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityAreaCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.ActivityArea>(3, _omitFieldNames ? '' : 'activityArea', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityAreaCreated clone() => ActivityAreaCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityAreaCreated copyWith(void Function(ActivityAreaCreated) updates) => super.copyWith((message) => updates(message as ActivityAreaCreated)) as ActivityAreaCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityAreaCreated create() => ActivityAreaCreated._();
  ActivityAreaCreated createEmptyInstance() => create();
  static $pb.PbList<ActivityAreaCreated> createRepeated() => $pb.PbList<ActivityAreaCreated>();
  @$core.pragma('dart2js:noInline')
  static ActivityAreaCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityAreaCreated>(create);
  static ActivityAreaCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $9.ActivityArea get activityArea => $_getN(2);
  @$pb.TagNumber(3)
  set activityArea($9.ActivityArea v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityArea() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityArea() => clearField(3);
  @$pb.TagNumber(3)
  $9.ActivityArea ensureActivityArea() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get createdTime => $_getN(3);
  @$pb.TagNumber(4)
  set createdTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedTime() => $_ensure(3);
}

class ActivityAreaUpdated extends $pb.GeneratedMessage {
  factory ActivityAreaUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $9.ActivityArea? activityArea,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (activityArea != null) {
      $result.activityArea = activityArea;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ActivityAreaUpdated._() : super();
  factory ActivityAreaUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityAreaUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityAreaUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.ActivityArea>(3, _omitFieldNames ? '' : 'activityArea', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityAreaUpdated clone() => ActivityAreaUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityAreaUpdated copyWith(void Function(ActivityAreaUpdated) updates) => super.copyWith((message) => updates(message as ActivityAreaUpdated)) as ActivityAreaUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityAreaUpdated create() => ActivityAreaUpdated._();
  ActivityAreaUpdated createEmptyInstance() => create();
  static $pb.PbList<ActivityAreaUpdated> createRepeated() => $pb.PbList<ActivityAreaUpdated>();
  @$core.pragma('dart2js:noInline')
  static ActivityAreaUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityAreaUpdated>(create);
  static ActivityAreaUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $9.ActivityArea get activityArea => $_getN(2);
  @$pb.TagNumber(3)
  set activityArea($9.ActivityArea v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityArea() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityArea() => clearField(3);
  @$pb.TagNumber(3)
  $9.ActivityArea ensureActivityArea() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
