//
//  Generated code. Do not modify.
//  source: wzdx.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;
import 'wzdx.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wzdx.pbenum.dart';

class Restriction extends $pb.GeneratedMessage {
  factory Restriction({
    RestrictionType? type,
    $core.double? value,
    UnitOfMeasurement? unit,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    return $result;
  }
  Restriction._() : super();
  factory Restriction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Restriction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Restriction', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..e<RestrictionType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: RestrictionType.RESTRICTION_TYPE_LOCAL_ACCESS_ONLY, valueOf: RestrictionType.valueOf, enumValues: RestrictionType.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..e<UnitOfMeasurement>(3, _omitFieldNames ? '' : 'unit', $pb.PbFieldType.OE, defaultOrMaker: UnitOfMeasurement.UNIT_OF_MEASUREMENT_FEET, valueOf: UnitOfMeasurement.valueOf, enumValues: UnitOfMeasurement.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Restriction clone() => Restriction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Restriction copyWith(void Function(Restriction) updates) => super.copyWith((message) => updates(message as Restriction)) as Restriction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Restriction create() => Restriction._();
  Restriction createEmptyInstance() => create();
  static $pb.PbList<Restriction> createRepeated() => $pb.PbList<Restriction>();
  @$core.pragma('dart2js:noInline')
  static Restriction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Restriction>(create);
  static Restriction? _defaultInstance;

  @$pb.TagNumber(1)
  RestrictionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RestrictionType v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  @$pb.TagNumber(3)
  UnitOfMeasurement get unit => $_getN(2);
  @$pb.TagNumber(3)
  set unit(UnitOfMeasurement v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => $_clearField(3);
}

class Lane extends $pb.GeneratedMessage {
  factory Lane({
    $core.int? laneOrder,
    LaneType? type,
    LaneStatus? status,
    $core.Iterable<Restriction>? restrictions,
  }) {
    final $result = create();
    if (laneOrder != null) {
      $result.laneOrder = laneOrder;
    }
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (restrictions != null) {
      $result.restrictions.addAll(restrictions);
    }
    return $result;
  }
  Lane._() : super();
  factory Lane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Lane', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'laneOrder', $pb.PbFieldType.OU3)
    ..e<LaneType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: LaneType.LANE_TYPE_GENERAL, valueOf: LaneType.valueOf, enumValues: LaneType.values)
    ..e<LaneStatus>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: LaneStatus.LANE_STATUS_OPEN, valueOf: LaneStatus.valueOf, enumValues: LaneStatus.values)
    ..pc<Restriction>(4, _omitFieldNames ? '' : 'restrictions', $pb.PbFieldType.PM, subBuilder: Restriction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lane clone() => Lane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lane copyWith(void Function(Lane) updates) => super.copyWith((message) => updates(message as Lane)) as Lane;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lane create() => Lane._();
  Lane createEmptyInstance() => create();
  static $pb.PbList<Lane> createRepeated() => $pb.PbList<Lane>();
  @$core.pragma('dart2js:noInline')
  static Lane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lane>(create);
  static Lane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get laneOrder => $_getIZ(0);
  @$pb.TagNumber(1)
  set laneOrder($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLaneOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearLaneOrder() => $_clearField(1);

  @$pb.TagNumber(2)
  LaneType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(LaneType v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  LaneStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(LaneStatus v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<Restriction> get restrictions => $_getList(3);
}

class TypeOfWork extends $pb.GeneratedMessage {
  factory TypeOfWork({
    WorkTypeName? typeName,
    $core.bool? isArchitecturalChange,
  }) {
    final $result = create();
    if (typeName != null) {
      $result.typeName = typeName;
    }
    if (isArchitecturalChange != null) {
      $result.isArchitecturalChange = isArchitecturalChange;
    }
    return $result;
  }
  TypeOfWork._() : super();
  factory TypeOfWork.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeOfWork.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TypeOfWork', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..e<WorkTypeName>(1, _omitFieldNames ? '' : 'typeName', $pb.PbFieldType.OE, defaultOrMaker: WorkTypeName.WORK_TYPE_NAME_MAINTENANCE, valueOf: WorkTypeName.valueOf, enumValues: WorkTypeName.values)
    ..aOB(2, _omitFieldNames ? '' : 'isArchitecturalChange')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeOfWork clone() => TypeOfWork()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeOfWork copyWith(void Function(TypeOfWork) updates) => super.copyWith((message) => updates(message as TypeOfWork)) as TypeOfWork;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeOfWork create() => TypeOfWork._();
  TypeOfWork createEmptyInstance() => create();
  static $pb.PbList<TypeOfWork> createRepeated() => $pb.PbList<TypeOfWork>();
  @$core.pragma('dart2js:noInline')
  static TypeOfWork getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeOfWork>(create);
  static TypeOfWork? _defaultInstance;

  @$pb.TagNumber(1)
  WorkTypeName get typeName => $_getN(0);
  @$pb.TagNumber(1)
  set typeName(WorkTypeName v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isArchitecturalChange => $_getBF(1);
  @$pb.TagNumber(2)
  set isArchitecturalChange($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsArchitecturalChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsArchitecturalChange() => $_clearField(2);
}

class WorkerPresence extends $pb.GeneratedMessage {
  factory WorkerPresence({
    $core.bool? areWorkersPresent,
    WorkerPresenceDefinition? definition,
    WorkerPresenceMethod? method,
    $1.Timestamp? workerPresenceLastConfirmedDate,
    WorkerPresenceConfidence? confidence,
  }) {
    final $result = create();
    if (areWorkersPresent != null) {
      $result.areWorkersPresent = areWorkersPresent;
    }
    if (definition != null) {
      $result.definition = definition;
    }
    if (method != null) {
      $result.method = method;
    }
    if (workerPresenceLastConfirmedDate != null) {
      $result.workerPresenceLastConfirmedDate = workerPresenceLastConfirmedDate;
    }
    if (confidence != null) {
      $result.confidence = confidence;
    }
    return $result;
  }
  WorkerPresence._() : super();
  factory WorkerPresence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WorkerPresence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WorkerPresence', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'areWorkersPresent')
    ..e<WorkerPresenceDefinition>(2, _omitFieldNames ? '' : 'definition', $pb.PbFieldType.OE, defaultOrMaker: WorkerPresenceDefinition.WORKER_PRESENCE_DEFINITION_WORKERS_IN_WORK_ZONE_WORKING, valueOf: WorkerPresenceDefinition.valueOf, enumValues: WorkerPresenceDefinition.values)
    ..e<WorkerPresenceMethod>(3, _omitFieldNames ? '' : 'method', $pb.PbFieldType.OE, defaultOrMaker: WorkerPresenceMethod.WORKER_PRESENCE_METHOD_CAMERA_MONITORING, valueOf: WorkerPresenceMethod.valueOf, enumValues: WorkerPresenceMethod.values)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'workerPresenceLastConfirmedDate', subBuilder: $1.Timestamp.create)
    ..e<WorkerPresenceConfidence>(5, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OE, defaultOrMaker: WorkerPresenceConfidence.WORKER_PRESENCE_CONFIDENCE_LOW, valueOf: WorkerPresenceConfidence.valueOf, enumValues: WorkerPresenceConfidence.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WorkerPresence clone() => WorkerPresence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WorkerPresence copyWith(void Function(WorkerPresence) updates) => super.copyWith((message) => updates(message as WorkerPresence)) as WorkerPresence;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WorkerPresence create() => WorkerPresence._();
  WorkerPresence createEmptyInstance() => create();
  static $pb.PbList<WorkerPresence> createRepeated() => $pb.PbList<WorkerPresence>();
  @$core.pragma('dart2js:noInline')
  static WorkerPresence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WorkerPresence>(create);
  static WorkerPresence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get areWorkersPresent => $_getBF(0);
  @$pb.TagNumber(1)
  set areWorkersPresent($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAreWorkersPresent() => $_has(0);
  @$pb.TagNumber(1)
  void clearAreWorkersPresent() => $_clearField(1);

  @$pb.TagNumber(2)
  WorkerPresenceDefinition get definition => $_getN(1);
  @$pb.TagNumber(2)
  set definition(WorkerPresenceDefinition v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDefinition() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefinition() => $_clearField(2);

  @$pb.TagNumber(3)
  WorkerPresenceMethod get method => $_getN(2);
  @$pb.TagNumber(3)
  set method(WorkerPresenceMethod v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethod() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get workerPresenceLastConfirmedDate => $_getN(3);
  @$pb.TagNumber(4)
  set workerPresenceLastConfirmedDate($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasWorkerPresenceLastConfirmedDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearWorkerPresenceLastConfirmedDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureWorkerPresenceLastConfirmedDate() => $_ensure(3);

  @$pb.TagNumber(5)
  WorkerPresenceConfidence get confidence => $_getN(4);
  @$pb.TagNumber(5)
  set confidence(WorkerPresenceConfidence v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasConfidence() => $_has(4);
  @$pb.TagNumber(5)
  void clearConfidence() => $_clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
