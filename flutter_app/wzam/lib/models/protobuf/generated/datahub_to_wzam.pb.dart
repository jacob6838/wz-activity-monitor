//
//  Generated code. Do not modify.
//  source: datahub_to_wzam.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;
import 'project.pb.dart' as $6;
import 'recording.pb.dart' as $12;
import 'report.pb.dart' as $11;
import 'road_sub_event.pb.dart' as $8;
import 'work_zone.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReportState extends $pb.GeneratedMessage {
  factory ReportState({
    $fixnum.Int64? id,
    $11.Report? report,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (report != null) {
      $result.report = report;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ReportState._() : super();
  factory ReportState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Report>(2, _omitFieldNames ? '' : 'report', subBuilder: $11.Report.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportState clone() => ReportState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportState copyWith(void Function(ReportState) updates) => super.copyWith((message) => updates(message as ReportState)) as ReportState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportState create() => ReportState._();
  ReportState createEmptyInstance() => create();
  static $pb.PbList<ReportState> createRepeated() => $pb.PbList<ReportState>();
  @$core.pragma('dart2js:noInline')
  static ReportState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportState>(create);
  static ReportState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $11.Report get report => $_getN(1);
  @$pb.TagNumber(2)
  set report($11.Report v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReport() => $_has(1);
  @$pb.TagNumber(2)
  void clearReport() => $_clearField(2);
  @$pb.TagNumber(2)
  $11.Report ensureReport() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class RecordingState extends $pb.GeneratedMessage {
  factory RecordingState({
    $fixnum.Int64? id,
    $12.Recording? recording,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (recording != null) {
      $result.recording = recording;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  RecordingState._() : super();
  factory RecordingState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$12.Recording>(2, _omitFieldNames ? '' : 'recording', subBuilder: $12.Recording.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingState clone() => RecordingState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingState copyWith(void Function(RecordingState) updates) => super.copyWith((message) => updates(message as RecordingState)) as RecordingState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingState create() => RecordingState._();
  RecordingState createEmptyInstance() => create();
  static $pb.PbList<RecordingState> createRepeated() => $pb.PbList<RecordingState>();
  @$core.pragma('dart2js:noInline')
  static RecordingState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingState>(create);
  static RecordingState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $12.Recording get recording => $_getN(1);
  @$pb.TagNumber(2)
  set recording($12.Recording v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecording() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecording() => $_clearField(2);
  @$pb.TagNumber(2)
  $12.Recording ensureRecording() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class ProjectState extends $pb.GeneratedMessage {
  factory ProjectState({
    $fixnum.Int64? id,
    $6.Project? project,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (project != null) {
      $result.project = project;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ProjectState._() : super();
  factory ProjectState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$6.Project>(2, _omitFieldNames ? '' : 'project', subBuilder: $6.Project.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectState clone() => ProjectState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectState copyWith(void Function(ProjectState) updates) => super.copyWith((message) => updates(message as ProjectState)) as ProjectState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectState create() => ProjectState._();
  ProjectState createEmptyInstance() => create();
  static $pb.PbList<ProjectState> createRepeated() => $pb.PbList<ProjectState>();
  @$core.pragma('dart2js:noInline')
  static ProjectState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectState>(create);
  static ProjectState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.Project get project => $_getN(1);
  @$pb.TagNumber(2)
  set project($6.Project v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Project ensureProject() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class WorkZoneState extends $pb.GeneratedMessage {
  factory WorkZoneState({
    $fixnum.Int64? id,
    $7.WorkZone? workZone,
    $core.Iterable<$8.RoadSubEvent>? roadSubEvents,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (roadSubEvents != null) {
      $result.roadSubEvents.addAll(roadSubEvents);
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  WorkZoneState._() : super();
  factory WorkZoneState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkZoneState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkZoneState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.WorkZone>(2, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..pc<$8.RoadSubEvent>(3, _omitFieldNames ? '' : 'roadSubEvents', $pb.PbFieldType.PM, subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkZoneState clone() => WorkZoneState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkZoneState copyWith(void Function(WorkZoneState) updates) => super.copyWith((message) => updates(message as WorkZoneState)) as WorkZoneState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkZoneState create() => WorkZoneState._();
  WorkZoneState createEmptyInstance() => create();
  static $pb.PbList<WorkZoneState> createRepeated() => $pb.PbList<WorkZoneState>();
  @$core.pragma('dart2js:noInline')
  static WorkZoneState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkZoneState>(create);
  static WorkZoneState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $7.WorkZone get workZone => $_getN(1);
  @$pb.TagNumber(2)
  set workZone($7.WorkZone v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWorkZone() => $_has(1);
  @$pb.TagNumber(2)
  void clearWorkZone() => $_clearField(2);
  @$pb.TagNumber(2)
  $7.WorkZone ensureWorkZone() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$8.RoadSubEvent> get roadSubEvents => $_getList(2);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
