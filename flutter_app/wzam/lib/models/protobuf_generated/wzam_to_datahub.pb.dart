//
//  Generated code. Do not modify.
//  source: wzam_to_datahub.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;
import 'recording.pb.dart' as $10;
import 'report.pb.dart' as $11;

class ReportCreated extends $pb.GeneratedMessage {
  factory ReportCreated({
    $11.Report? report,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (report != null) {
      $result.report = report;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  ReportCreated._() : super();
  factory ReportCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$11.Report>(1, _omitFieldNames ? '' : 'report', subBuilder: $11.Report.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportCreated clone() => ReportCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportCreated copyWith(void Function(ReportCreated) updates) => super.copyWith((message) => updates(message as ReportCreated)) as ReportCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportCreated create() => ReportCreated._();
  ReportCreated createEmptyInstance() => create();
  static $pb.PbList<ReportCreated> createRepeated() => $pb.PbList<ReportCreated>();
  @$core.pragma('dart2js:noInline')
  static ReportCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportCreated>(create);
  static ReportCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $11.Report get report => $_getN(0);
  @$pb.TagNumber(1)
  set report($11.Report v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearReport() => clearField(1);
  @$pb.TagNumber(1)
  $11.Report ensureReport() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get createdTime => $_getN(1);
  @$pb.TagNumber(2)
  set createdTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureCreatedTime() => $_ensure(1);
}

class ReportUpdated extends $pb.GeneratedMessage {
  factory ReportUpdated({
    $fixnum.Int64? id,
    $11.Report? report,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (report != null) {
      $result.report = report;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  ReportUpdated._() : super();
  factory ReportUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$11.Report>(2, _omitFieldNames ? '' : 'report', subBuilder: $11.Report.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportUpdated clone() => ReportUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportUpdated copyWith(void Function(ReportUpdated) updates) => super.copyWith((message) => updates(message as ReportUpdated)) as ReportUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportUpdated create() => ReportUpdated._();
  ReportUpdated createEmptyInstance() => create();
  static $pb.PbList<ReportUpdated> createRepeated() => $pb.PbList<ReportUpdated>();
  @$core.pragma('dart2js:noInline')
  static ReportUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportUpdated>(create);
  static ReportUpdated? _defaultInstance;

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
  $1.Timestamp get updatedTime => $_getN(2);
  @$pb.TagNumber(3)
  set updatedTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureUpdatedTime() => $_ensure(2);
}

class RecordingCreated extends $pb.GeneratedMessage {
  factory RecordingCreated({
    $10.Recording? recording,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (recording != null) {
      $result.recording = recording;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  RecordingCreated._() : super();
  factory RecordingCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$10.Recording>(1, _omitFieldNames ? '' : 'recording', subBuilder: $10.Recording.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingCreated clone() => RecordingCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingCreated copyWith(void Function(RecordingCreated) updates) => super.copyWith((message) => updates(message as RecordingCreated)) as RecordingCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingCreated create() => RecordingCreated._();
  RecordingCreated createEmptyInstance() => create();
  static $pb.PbList<RecordingCreated> createRepeated() => $pb.PbList<RecordingCreated>();
  @$core.pragma('dart2js:noInline')
  static RecordingCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingCreated>(create);
  static RecordingCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $10.Recording get recording => $_getN(0);
  @$pb.TagNumber(1)
  set recording($10.Recording v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecording() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecording() => clearField(1);
  @$pb.TagNumber(1)
  $10.Recording ensureRecording() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get createdTime => $_getN(1);
  @$pb.TagNumber(2)
  set createdTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureCreatedTime() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
