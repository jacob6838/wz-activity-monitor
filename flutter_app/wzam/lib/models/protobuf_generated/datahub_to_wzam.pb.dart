//
//  Generated code. Do not modify.
//  source: datahub_to_wzam.proto
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
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'project.pb.dart' as $7;
import 'recording.pb.dart' as $10;
import 'report.pb.dart' as $11;
import 'road_section.pb.dart' as $8;

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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $11.Report get report => $_getN(1);
  @$pb.TagNumber(2)
  set report($11.Report v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReport() => $_has(1);
  @$pb.TagNumber(2)
  void clearReport() => clearField(2);
  @$pb.TagNumber(2)
  $11.Report ensureReport() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class RecordingState extends $pb.GeneratedMessage {
  factory RecordingState({
    $fixnum.Int64? id,
    $10.Recording? recording,
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
    ..aOM<$10.Recording>(2, _omitFieldNames ? '' : 'recording', subBuilder: $10.Recording.create)
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $10.Recording get recording => $_getN(1);
  @$pb.TagNumber(2)
  set recording($10.Recording v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecording() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecording() => clearField(2);
  @$pb.TagNumber(2)
  $10.Recording ensureRecording() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class ActivityAreaState extends $pb.GeneratedMessage {
  factory ActivityAreaState({
    $fixnum.Int64? id,
    $9.ActivityArea? activityArea,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (activityArea != null) {
      $result.activityArea = activityArea;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ActivityAreaState._() : super();
  factory ActivityAreaState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityAreaState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityAreaState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.ActivityArea>(2, _omitFieldNames ? '' : 'activityArea', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityAreaState clone() => ActivityAreaState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityAreaState copyWith(void Function(ActivityAreaState) updates) => super.copyWith((message) => updates(message as ActivityAreaState)) as ActivityAreaState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityAreaState create() => ActivityAreaState._();
  ActivityAreaState createEmptyInstance() => create();
  static $pb.PbList<ActivityAreaState> createRepeated() => $pb.PbList<ActivityAreaState>();
  @$core.pragma('dart2js:noInline')
  static ActivityAreaState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityAreaState>(create);
  static ActivityAreaState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $9.ActivityArea get activityArea => $_getN(1);
  @$pb.TagNumber(2)
  set activityArea($9.ActivityArea v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActivityArea() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityArea() => clearField(2);
  @$pb.TagNumber(2)
  $9.ActivityArea ensureActivityArea() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class ProjectState extends $pb.GeneratedMessage {
  factory ProjectState({
    $fixnum.Int64? id,
    $7.Project? project,
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
    ..aOM<$7.Project>(2, _omitFieldNames ? '' : 'project', subBuilder: $7.Project.create)
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $7.Project get project => $_getN(1);
  @$pb.TagNumber(2)
  set project($7.Project v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => clearField(2);
  @$pb.TagNumber(2)
  $7.Project ensureProject() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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

class RoadSectionState extends $pb.GeneratedMessage {
  factory RoadSectionState({
    $fixnum.Int64? id,
    $8.RoadSection? roadSection,
    $1.Timestamp? createdTime,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roadSection != null) {
      $result.roadSection = roadSection;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  RoadSectionState._() : super();
  factory RoadSectionState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSectionState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSectionState', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSection>(2, _omitFieldNames ? '' : 'roadSection', subBuilder: $8.RoadSection.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSectionState clone() => RoadSectionState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSectionState copyWith(void Function(RoadSectionState) updates) => super.copyWith((message) => updates(message as RoadSectionState)) as RoadSectionState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSectionState create() => RoadSectionState._();
  RoadSectionState createEmptyInstance() => create();
  static $pb.PbList<RoadSectionState> createRepeated() => $pb.PbList<RoadSectionState>();
  @$core.pragma('dart2js:noInline')
  static RoadSectionState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSectionState>(create);
  static RoadSectionState? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $8.RoadSection get roadSection => $_getN(1);
  @$pb.TagNumber(2)
  set roadSection($8.RoadSection v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSection() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSection() => clearField(2);
  @$pb.TagNumber(2)
  $8.RoadSection ensureRoadSection() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get createdTime => $_getN(2);
  @$pb.TagNumber(3)
  set createdTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedTime() => $_ensure(2);

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
