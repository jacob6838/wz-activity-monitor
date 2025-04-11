//
//  Generated code. Do not modify.
//  source: conadmin_to_datahub.proto
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
import 'project.pb.dart' as $6;
import 'road_sub_event.pb.dart' as $8;
import 'work_zone.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FieldDeviceUpdated extends $pb.GeneratedMessage {
  factory FieldDeviceUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? projectId,
    $fixnum.Int64? workZoneEventId,
    $3.MarkedLocationType? locationType,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (workZoneEventId != null) {
      $result.workZoneEventId = workZoneEventId;
    }
    if (locationType != null) {
      $result.locationType = locationType;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  FieldDeviceUpdated._() : super();
  factory FieldDeviceUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'workZoneEventId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<$3.MarkedLocationType>(4, _omitFieldNames ? '' : 'locationType', $pb.PbFieldType.OE, defaultOrMaker: $3.MarkedLocationType.MARKED_LOCATION_TYPE_GENERIC, valueOf: $3.MarkedLocationType.valueOf, enumValues: $3.MarkedLocationType.values)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceUpdated clone() => FieldDeviceUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceUpdated copyWith(void Function(FieldDeviceUpdated) updates) => super.copyWith((message) => updates(message as FieldDeviceUpdated)) as FieldDeviceUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceUpdated create() => FieldDeviceUpdated._();
  FieldDeviceUpdated createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceUpdated> createRepeated() => $pb.PbList<FieldDeviceUpdated>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceUpdated>(create);
  static FieldDeviceUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get projectId => $_getI64(1);
  @$pb.TagNumber(2)
  set projectId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get workZoneEventId => $_getI64(2);
  @$pb.TagNumber(3)
  set workZoneEventId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkZoneEventId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkZoneEventId() => $_clearField(3);

  @$pb.TagNumber(4)
  $3.MarkedLocationType get locationType => $_getN(3);
  @$pb.TagNumber(4)
  set locationType($3.MarkedLocationType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationType() => $_clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get updatedTime => $_getN(4);
  @$pb.TagNumber(5)
  set updatedTime($1.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureUpdatedTime() => $_ensure(4);
}

class VehicleLocationUpdated extends $pb.GeneratedMessage {
  factory VehicleLocationUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? projectId,
    $fixnum.Int64? workZoneEventId,
    $3.MarkedLocationType? locationType,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (workZoneEventId != null) {
      $result.workZoneEventId = workZoneEventId;
    }
    if (locationType != null) {
      $result.locationType = locationType;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  VehicleLocationUpdated._() : super();
  factory VehicleLocationUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VehicleLocationUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VehicleLocationUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'workZoneEventId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<$3.MarkedLocationType>(4, _omitFieldNames ? '' : 'locationType', $pb.PbFieldType.OE, defaultOrMaker: $3.MarkedLocationType.MARKED_LOCATION_TYPE_GENERIC, valueOf: $3.MarkedLocationType.valueOf, enumValues: $3.MarkedLocationType.values)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VehicleLocationUpdated clone() => VehicleLocationUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VehicleLocationUpdated copyWith(void Function(VehicleLocationUpdated) updates) => super.copyWith((message) => updates(message as VehicleLocationUpdated)) as VehicleLocationUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VehicleLocationUpdated create() => VehicleLocationUpdated._();
  VehicleLocationUpdated createEmptyInstance() => create();
  static $pb.PbList<VehicleLocationUpdated> createRepeated() => $pb.PbList<VehicleLocationUpdated>();
  @$core.pragma('dart2js:noInline')
  static VehicleLocationUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VehicleLocationUpdated>(create);
  static VehicleLocationUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get projectId => $_getI64(1);
  @$pb.TagNumber(2)
  set projectId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get workZoneEventId => $_getI64(2);
  @$pb.TagNumber(3)
  set workZoneEventId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkZoneEventId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkZoneEventId() => $_clearField(3);

  @$pb.TagNumber(4)
  $3.MarkedLocationType get locationType => $_getN(3);
  @$pb.TagNumber(4)
  set locationType($3.MarkedLocationType v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocationType() => $_clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get updatedTime => $_getN(4);
  @$pb.TagNumber(5)
  set updatedTime($1.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureUpdatedTime() => $_ensure(4);
}

class ProjectCreated extends $pb.GeneratedMessage {
  factory ProjectCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $6.Project? project,
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
    ..aOM<$6.Project>(3, _omitFieldNames ? '' : 'project', subBuilder: $6.Project.create)
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
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $6.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($6.Project v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Project ensureProject() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get createdTime => $_getN(3);
  @$pb.TagNumber(4)
  set createdTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedTime() => $_ensure(3);
}

class ProjectUpdated extends $pb.GeneratedMessage {
  factory ProjectUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $6.Project? project,
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
    ..aOM<$6.Project>(3, _omitFieldNames ? '' : 'project', subBuilder: $6.Project.create)
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
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $6.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($6.Project v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Project ensureProject() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}

class ProjectRemoved extends $pb.GeneratedMessage {
  factory ProjectRemoved({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $6.Project? project,
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
  ProjectRemoved._() : super();
  factory ProjectRemoved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectRemoved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectRemoved', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$6.Project>(3, _omitFieldNames ? '' : 'project', subBuilder: $6.Project.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectRemoved clone() => ProjectRemoved()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectRemoved copyWith(void Function(ProjectRemoved) updates) => super.copyWith((message) => updates(message as ProjectRemoved)) as ProjectRemoved;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectRemoved create() => ProjectRemoved._();
  ProjectRemoved createEmptyInstance() => create();
  static $pb.PbList<ProjectRemoved> createRepeated() => $pb.PbList<ProjectRemoved>();
  @$core.pragma('dart2js:noInline')
  static ProjectRemoved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectRemoved>(create);
  static ProjectRemoved? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $6.Project get project => $_getN(2);
  @$pb.TagNumber(3)
  set project($6.Project v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Project ensureProject() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}

class WorkZoneCreated extends $pb.GeneratedMessage {
  factory WorkZoneCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $7.WorkZone? workZone,
    $core.Iterable<RoadSubEventCreated>? roadSubEventsCreated,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (roadSubEventsCreated != null) {
      $result.roadSubEventsCreated.addAll(roadSubEventsCreated);
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  WorkZoneCreated._() : super();
  factory WorkZoneCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZoneCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZoneCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.WorkZone>(3, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..pc<RoadSubEventCreated>(4, _omitFieldNames ? '' : 'roadSubEventsCreated', $pb.PbFieldType.PM, subBuilder: RoadSubEventCreated.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZoneCreated clone() => WorkZoneCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZoneCreated copyWith(void Function(WorkZoneCreated) updates) => super.copyWith((message) => updates(message as WorkZoneCreated)) as WorkZoneCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZoneCreated create() => WorkZoneCreated._();
  WorkZoneCreated createEmptyInstance() => create();
  static $pb.PbList<WorkZoneCreated> createRepeated() => $pb.PbList<WorkZoneCreated>();
  @$core.pragma('dart2js:noInline')
  static WorkZoneCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZoneCreated>(create);
  static WorkZoneCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $7.WorkZone get workZone => $_getN(2);
  @$pb.TagNumber(3)
  set workZone($7.WorkZone v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkZone() => $_clearField(3);
  @$pb.TagNumber(3)
  $7.WorkZone ensureWorkZone() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<RoadSubEventCreated> get roadSubEventsCreated => $_getList(3);

  @$pb.TagNumber(5)
  $1.Timestamp get createdTime => $_getN(4);
  @$pb.TagNumber(5)
  set createdTime($1.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCreatedTime() => $_ensure(4);
}

class WorkZoneUpdated extends $pb.GeneratedMessage {
  factory WorkZoneUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $7.WorkZone? workZone,
    $core.Iterable<RoadSubEventCreated>? roadSubEventsCreated,
    $core.Iterable<RoadSubEventUpdated>? roadSubEventsUpdated,
    $core.Iterable<RoadSubEventRemoved>? roadSubEventsRemoved,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (roadSubEventsCreated != null) {
      $result.roadSubEventsCreated.addAll(roadSubEventsCreated);
    }
    if (roadSubEventsUpdated != null) {
      $result.roadSubEventsUpdated.addAll(roadSubEventsUpdated);
    }
    if (roadSubEventsRemoved != null) {
      $result.roadSubEventsRemoved.addAll(roadSubEventsRemoved);
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  WorkZoneUpdated._() : super();
  factory WorkZoneUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZoneUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZoneUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.WorkZone>(3, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..pc<RoadSubEventCreated>(4, _omitFieldNames ? '' : 'roadSubEventsCreated', $pb.PbFieldType.PM, subBuilder: RoadSubEventCreated.create)
    ..pc<RoadSubEventUpdated>(5, _omitFieldNames ? '' : 'roadSubEventsUpdated', $pb.PbFieldType.PM, subBuilder: RoadSubEventUpdated.create)
    ..pc<RoadSubEventRemoved>(6, _omitFieldNames ? '' : 'roadSubEventsRemoved', $pb.PbFieldType.PM, subBuilder: RoadSubEventRemoved.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZoneUpdated clone() => WorkZoneUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZoneUpdated copyWith(void Function(WorkZoneUpdated) updates) => super.copyWith((message) => updates(message as WorkZoneUpdated)) as WorkZoneUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZoneUpdated create() => WorkZoneUpdated._();
  WorkZoneUpdated createEmptyInstance() => create();
  static $pb.PbList<WorkZoneUpdated> createRepeated() => $pb.PbList<WorkZoneUpdated>();
  @$core.pragma('dart2js:noInline')
  static WorkZoneUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZoneUpdated>(create);
  static WorkZoneUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $7.WorkZone get workZone => $_getN(2);
  @$pb.TagNumber(3)
  set workZone($7.WorkZone v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkZone() => $_clearField(3);
  @$pb.TagNumber(3)
  $7.WorkZone ensureWorkZone() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<RoadSubEventCreated> get roadSubEventsCreated => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<RoadSubEventUpdated> get roadSubEventsUpdated => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<RoadSubEventRemoved> get roadSubEventsRemoved => $_getList(5);

  @$pb.TagNumber(7)
  $1.Timestamp get updatedTime => $_getN(6);
  @$pb.TagNumber(7)
  set updatedTime($1.Timestamp v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedTime() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureUpdatedTime() => $_ensure(6);
}

class WorkZoneRemoved extends $pb.GeneratedMessage {
  factory WorkZoneRemoved({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $7.WorkZone? workZone,
    $core.Iterable<$8.RoadSubEvent>? roadSubEvents,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (roadSubEvents != null) {
      $result.roadSubEvents.addAll(roadSubEvents);
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  WorkZoneRemoved._() : super();
  factory WorkZoneRemoved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZoneRemoved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZoneRemoved', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.WorkZone>(3, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..pc<$8.RoadSubEvent>(4, _omitFieldNames ? '' : 'roadSubEvents', $pb.PbFieldType.PM, subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZoneRemoved clone() => WorkZoneRemoved()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZoneRemoved copyWith(void Function(WorkZoneRemoved) updates) => super.copyWith((message) => updates(message as WorkZoneRemoved)) as WorkZoneRemoved;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZoneRemoved create() => WorkZoneRemoved._();
  WorkZoneRemoved createEmptyInstance() => create();
  static $pb.PbList<WorkZoneRemoved> createRepeated() => $pb.PbList<WorkZoneRemoved>();
  @$core.pragma('dart2js:noInline')
  static WorkZoneRemoved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZoneRemoved>(create);
  static WorkZoneRemoved? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $7.WorkZone get workZone => $_getN(2);
  @$pb.TagNumber(3)
  set workZone($7.WorkZone v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWorkZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearWorkZone() => $_clearField(3);
  @$pb.TagNumber(3)
  $7.WorkZone ensureWorkZone() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<$8.RoadSubEvent> get roadSubEvents => $_getList(3);

  @$pb.TagNumber(5)
  $1.Timestamp get updatedTime => $_getN(4);
  @$pb.TagNumber(5)
  set updatedTime($1.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureUpdatedTime() => $_ensure(4);
}

class RoadSubEventCreated extends $pb.GeneratedMessage {
  factory RoadSubEventCreated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  RoadSubEventCreated._() : super();
  factory RoadSubEventCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSubEventCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSubEventCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSubEvent>(3, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSubEventCreated clone() => RoadSubEventCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSubEventCreated copyWith(void Function(RoadSubEventCreated) updates) => super.copyWith((message) => updates(message as RoadSubEventCreated)) as RoadSubEventCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSubEventCreated create() => RoadSubEventCreated._();
  RoadSubEventCreated createEmptyInstance() => create();
  static $pb.PbList<RoadSubEventCreated> createRepeated() => $pb.PbList<RoadSubEventCreated>();
  @$core.pragma('dart2js:noInline')
  static RoadSubEventCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSubEventCreated>(create);
  static RoadSubEventCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $8.RoadSubEvent get roadSubEvent => $_getN(2);
  @$pb.TagNumber(3)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSubEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSubEvent() => $_clearField(3);
  @$pb.TagNumber(3)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get createdTime => $_getN(3);
  @$pb.TagNumber(4)
  set createdTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedTime() => $_ensure(3);
}

class RoadSubEventUpdated extends $pb.GeneratedMessage {
  factory RoadSubEventUpdated({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  RoadSubEventUpdated._() : super();
  factory RoadSubEventUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSubEventUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSubEventUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSubEvent>(3, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSubEventUpdated clone() => RoadSubEventUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSubEventUpdated copyWith(void Function(RoadSubEventUpdated) updates) => super.copyWith((message) => updates(message as RoadSubEventUpdated)) as RoadSubEventUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSubEventUpdated create() => RoadSubEventUpdated._();
  RoadSubEventUpdated createEmptyInstance() => create();
  static $pb.PbList<RoadSubEventUpdated> createRepeated() => $pb.PbList<RoadSubEventUpdated>();
  @$core.pragma('dart2js:noInline')
  static RoadSubEventUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSubEventUpdated>(create);
  static RoadSubEventUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $8.RoadSubEvent get roadSubEvent => $_getN(2);
  @$pb.TagNumber(3)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSubEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSubEvent() => $_clearField(3);
  @$pb.TagNumber(3)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}

class RoadSubEventRemoved extends $pb.GeneratedMessage {
  factory RoadSubEventRemoved({
    $fixnum.Int64? id,
    $fixnum.Int64? requestId,
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  RoadSubEventRemoved._() : super();
  factory RoadSubEventRemoved.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSubEventRemoved.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSubEventRemoved', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSubEvent>(3, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSubEventRemoved clone() => RoadSubEventRemoved()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSubEventRemoved copyWith(void Function(RoadSubEventRemoved) updates) => super.copyWith((message) => updates(message as RoadSubEventRemoved)) as RoadSubEventRemoved;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSubEventRemoved create() => RoadSubEventRemoved._();
  RoadSubEventRemoved createEmptyInstance() => create();
  static $pb.PbList<RoadSubEventRemoved> createRepeated() => $pb.PbList<RoadSubEventRemoved>();
  @$core.pragma('dart2js:noInline')
  static RoadSubEventRemoved getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSubEventRemoved>(create);
  static RoadSubEventRemoved? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get requestId => $_getI64(1);
  @$pb.TagNumber(2)
  set requestId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => $_clearField(2);

  @$pb.TagNumber(3)
  $8.RoadSubEvent get roadSubEvent => $_getN(2);
  @$pb.TagNumber(3)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadSubEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadSubEvent() => $_clearField(3);
  @$pb.TagNumber(3)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get updatedTime => $_getN(3);
  @$pb.TagNumber(4)
  set updatedTime($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdatedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureUpdatedTime() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
