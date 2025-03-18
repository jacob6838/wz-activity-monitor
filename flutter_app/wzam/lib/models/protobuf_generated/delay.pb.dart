//
//  Generated code. Do not modify.
//  source: delay.proto
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
import 'wzdx.pb.dart' as $2;

class Delay extends $pb.GeneratedMessage {
  factory Delay({
    $fixnum.Int64? projectId,
    $fixnum.Int64? roadSectionId,
    $core.Iterable<$2.Lane>? lanes,
    $core.double? reducedSpeedLimitKph,
    $core.Iterable<$2.Restriction>? restrictions,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (lanes != null) {
      $result.lanes.addAll(lanes);
    }
    if (reducedSpeedLimitKph != null) {
      $result.reducedSpeedLimitKph = reducedSpeedLimitKph;
    }
    if (restrictions != null) {
      $result.restrictions.addAll(restrictions);
    }
    return $result;
  }
  Delay._() : super();
  factory Delay.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delay.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Delay', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$2.Lane>(3, _omitFieldNames ? '' : 'lanes', $pb.PbFieldType.PM, subBuilder: $2.Lane.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'reducedSpeedLimitKph', $pb.PbFieldType.OF)
    ..pc<$2.Restriction>(5, _omitFieldNames ? '' : 'restrictions', $pb.PbFieldType.PM, subBuilder: $2.Restriction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Delay clone() => Delay()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Delay copyWith(void Function(Delay) updates) => super.copyWith((message) => updates(message as Delay)) as Delay;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Delay create() => Delay._();
  Delay createEmptyInstance() => create();
  static $pb.PbList<Delay> createRepeated() => $pb.PbList<Delay>();
  @$core.pragma('dart2js:noInline')
  static Delay getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delay>(create);
  static Delay? _defaultInstance;

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
  $core.List<$2.Lane> get lanes => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get reducedSpeedLimitKph => $_getN(3);
  @$pb.TagNumber(4)
  set reducedSpeedLimitKph($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReducedSpeedLimitKph() => $_has(3);
  @$pb.TagNumber(4)
  void clearReducedSpeedLimitKph() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$2.Restriction> get restrictions => $_getList(4);
}

class DelayCreated extends $pb.GeneratedMessage {
  factory DelayCreated({
    $fixnum.Int64? id,
    Delay? delay,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (delay != null) {
      $result.delay = delay;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  DelayCreated._() : super();
  factory DelayCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelayCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelayCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Delay>(2, _omitFieldNames ? '' : 'delay', subBuilder: Delay.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelayCreated clone() => DelayCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelayCreated copyWith(void Function(DelayCreated) updates) => super.copyWith((message) => updates(message as DelayCreated)) as DelayCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelayCreated create() => DelayCreated._();
  DelayCreated createEmptyInstance() => create();
  static $pb.PbList<DelayCreated> createRepeated() => $pb.PbList<DelayCreated>();
  @$core.pragma('dart2js:noInline')
  static DelayCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelayCreated>(create);
  static DelayCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Delay get delay => $_getN(1);
  @$pb.TagNumber(2)
  set delay(Delay v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDelay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelay() => clearField(2);
  @$pb.TagNumber(2)
  Delay ensureDelay() => $_ensure(1);

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
}

class DelayUpdated extends $pb.GeneratedMessage {
  factory DelayUpdated({
    $fixnum.Int64? id,
    Delay? delay,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (delay != null) {
      $result.delay = delay;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  DelayUpdated._() : super();
  factory DelayUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelayUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelayUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Delay>(2, _omitFieldNames ? '' : 'delay', subBuilder: Delay.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelayUpdated clone() => DelayUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelayUpdated copyWith(void Function(DelayUpdated) updates) => super.copyWith((message) => updates(message as DelayUpdated)) as DelayUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelayUpdated create() => DelayUpdated._();
  DelayUpdated createEmptyInstance() => create();
  static $pb.PbList<DelayUpdated> createRepeated() => $pb.PbList<DelayUpdated>();
  @$core.pragma('dart2js:noInline')
  static DelayUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelayUpdated>(create);
  static DelayUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Delay get delay => $_getN(1);
  @$pb.TagNumber(2)
  set delay(Delay v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDelay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelay() => clearField(2);
  @$pb.TagNumber(2)
  Delay ensureDelay() => $_ensure(1);

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
