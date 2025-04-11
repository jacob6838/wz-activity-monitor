//
//  Generated code. Do not modify.
//  source: datahub_to_conadmin.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'field_device.pb.dart' as $10;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'road_sub_event.pb.dart' as $8;
import 'vehicle_location.pb.dart' as $9;
import 'work_zone.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UpdateVehicleLocation extends $pb.GeneratedMessage {
  factory UpdateVehicleLocation({
    $fixnum.Int64? id,
    $9.VehicleLocation? vehicleLocation,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (vehicleLocation != null) {
      $result.vehicleLocation = vehicleLocation;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  UpdateVehicleLocation._() : super();
  factory UpdateVehicleLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateVehicleLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateVehicleLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.VehicleLocation>(2, _omitFieldNames ? '' : 'vehicleLocation', subBuilder: $9.VehicleLocation.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateVehicleLocation clone() => UpdateVehicleLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateVehicleLocation copyWith(void Function(UpdateVehicleLocation) updates) => super.copyWith((message) => updates(message as UpdateVehicleLocation)) as UpdateVehicleLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateVehicleLocation create() => UpdateVehicleLocation._();
  UpdateVehicleLocation createEmptyInstance() => create();
  static $pb.PbList<UpdateVehicleLocation> createRepeated() => $pb.PbList<UpdateVehicleLocation>();
  @$core.pragma('dart2js:noInline')
  static UpdateVehicleLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateVehicleLocation>(create);
  static UpdateVehicleLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $9.VehicleLocation get vehicleLocation => $_getN(1);
  @$pb.TagNumber(2)
  set vehicleLocation($9.VehicleLocation v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVehicleLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearVehicleLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $9.VehicleLocation ensureVehicleLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get updatedTime => $_getN(2);
  @$pb.TagNumber(3)
  set updatedTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureUpdatedTime() => $_ensure(2);
}

class CreateFieldDevice extends $pb.GeneratedMessage {
  factory CreateFieldDevice({
    $10.FieldDevice? fieldDevice,
    $1.Timestamp? updatedTime,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (fieldDevice != null) {
      $result.fieldDevice = fieldDevice;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  CreateFieldDevice._() : super();
  factory CreateFieldDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateFieldDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateFieldDevice', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$10.FieldDevice>(1, _omitFieldNames ? '' : 'fieldDevice', subBuilder: $10.FieldDevice.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateFieldDevice clone() => CreateFieldDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateFieldDevice copyWith(void Function(CreateFieldDevice) updates) => super.copyWith((message) => updates(message as CreateFieldDevice)) as CreateFieldDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateFieldDevice create() => CreateFieldDevice._();
  CreateFieldDevice createEmptyInstance() => create();
  static $pb.PbList<CreateFieldDevice> createRepeated() => $pb.PbList<CreateFieldDevice>();
  @$core.pragma('dart2js:noInline')
  static CreateFieldDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateFieldDevice>(create);
  static CreateFieldDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $10.FieldDevice get fieldDevice => $_getN(0);
  @$pb.TagNumber(1)
  set fieldDevice($10.FieldDevice v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldDevice() => $_clearField(1);
  @$pb.TagNumber(1)
  $10.FieldDevice ensureFieldDevice() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get updatedTime => $_getN(1);
  @$pb.TagNumber(2)
  set updatedTime($1.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureUpdatedTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get requestId => $_getI64(2);
  @$pb.TagNumber(3)
  set requestId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => $_clearField(3);
}

class UpdateFieldDevice extends $pb.GeneratedMessage {
  factory UpdateFieldDevice({
    $fixnum.Int64? id,
    $10.FieldDevice? fieldDevice,
    $1.Timestamp? updatedTime,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fieldDevice != null) {
      $result.fieldDevice = fieldDevice;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  UpdateFieldDevice._() : super();
  factory UpdateFieldDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateFieldDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateFieldDevice', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$10.FieldDevice>(2, _omitFieldNames ? '' : 'fieldDevice', subBuilder: $10.FieldDevice.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateFieldDevice clone() => UpdateFieldDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateFieldDevice copyWith(void Function(UpdateFieldDevice) updates) => super.copyWith((message) => updates(message as UpdateFieldDevice)) as UpdateFieldDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateFieldDevice create() => UpdateFieldDevice._();
  UpdateFieldDevice createEmptyInstance() => create();
  static $pb.PbList<UpdateFieldDevice> createRepeated() => $pb.PbList<UpdateFieldDevice>();
  @$core.pragma('dart2js:noInline')
  static UpdateFieldDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateFieldDevice>(create);
  static UpdateFieldDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $10.FieldDevice get fieldDevice => $_getN(1);
  @$pb.TagNumber(2)
  set fieldDevice($10.FieldDevice v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  $10.FieldDevice ensureFieldDevice() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get updatedTime => $_getN(2);
  @$pb.TagNumber(3)
  set updatedTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureUpdatedTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get requestId => $_getI64(3);
  @$pb.TagNumber(4)
  set requestId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestId() => $_clearField(4);
}

class CreateWorkZone extends $pb.GeneratedMessage {
  factory CreateWorkZone({
    $7.WorkZone? workZone,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
    $core.Iterable<CreateRoadSection>? roadSubEventsToCreate,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    if (roadSubEventsToCreate != null) {
      $result.roadSubEventsToCreate.addAll(roadSubEventsToCreate);
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  CreateWorkZone._() : super();
  factory CreateWorkZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateWorkZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateWorkZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$7.WorkZone>(1, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(3, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..pc<CreateRoadSection>(4, _omitFieldNames ? '' : 'roadSubEventsToCreate', $pb.PbFieldType.PM, subBuilder: CreateRoadSection.create)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateWorkZone clone() => CreateWorkZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateWorkZone copyWith(void Function(CreateWorkZone) updates) => super.copyWith((message) => updates(message as CreateWorkZone)) as CreateWorkZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWorkZone create() => CreateWorkZone._();
  CreateWorkZone createEmptyInstance() => create();
  static $pb.PbList<CreateWorkZone> createRepeated() => $pb.PbList<CreateWorkZone>();
  @$core.pragma('dart2js:noInline')
  static CreateWorkZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateWorkZone>(create);
  static CreateWorkZone? _defaultInstance;

  @$pb.TagNumber(1)
  $7.WorkZone get workZone => $_getN(0);
  @$pb.TagNumber(1)
  set workZone($7.WorkZone v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWorkZone() => $_has(0);
  @$pb.TagNumber(1)
  void clearWorkZone() => $_clearField(1);
  @$pb.TagNumber(1)
  $7.WorkZone ensureWorkZone() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get requestTime => $_getN(1);
  @$pb.TagNumber(2)
  set requestTime($1.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureRequestTime() => $_ensure(1);

  @$pb.TagNumber(3)
  DataHubUpdateSource get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(DataHubUpdateSource v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);
  @$pb.TagNumber(3)
  DataHubUpdateSource ensureSource() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<CreateRoadSection> get roadSubEventsToCreate => $_getList(3);

  @$pb.TagNumber(7)
  $fixnum.Int64 get requestId => $_getI64(4);
  @$pb.TagNumber(7)
  set requestId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequestId() => $_has(4);
  @$pb.TagNumber(7)
  void clearRequestId() => $_clearField(7);
}

class UpdateWorkZone extends $pb.GeneratedMessage {
  factory UpdateWorkZone({
    $fixnum.Int64? id,
    $7.WorkZone? workZone,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
    $core.Iterable<CreateRoadSection>? createRoadSubEvents,
    $core.Iterable<UpdateRoadSection>? updateRoadSubEvents,
    $core.Iterable<RemoveRoadSection>? removeRoadSubEvents,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (workZone != null) {
      $result.workZone = workZone;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    if (createRoadSubEvents != null) {
      $result.createRoadSubEvents.addAll(createRoadSubEvents);
    }
    if (updateRoadSubEvents != null) {
      $result.updateRoadSubEvents.addAll(updateRoadSubEvents);
    }
    if (removeRoadSubEvents != null) {
      $result.removeRoadSubEvents.addAll(removeRoadSubEvents);
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  UpdateWorkZone._() : super();
  factory UpdateWorkZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWorkZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWorkZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.WorkZone>(2, _omitFieldNames ? '' : 'workZone', subBuilder: $7.WorkZone.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(4, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..pc<CreateRoadSection>(5, _omitFieldNames ? '' : 'createRoadSubEvents', $pb.PbFieldType.PM, subBuilder: CreateRoadSection.create)
    ..pc<UpdateRoadSection>(6, _omitFieldNames ? '' : 'updateRoadSubEvents', $pb.PbFieldType.PM, subBuilder: UpdateRoadSection.create)
    ..pc<RemoveRoadSection>(7, _omitFieldNames ? '' : 'removeRoadSubEvents', $pb.PbFieldType.PM, subBuilder: RemoveRoadSection.create)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWorkZone clone() => UpdateWorkZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWorkZone copyWith(void Function(UpdateWorkZone) updates) => super.copyWith((message) => updates(message as UpdateWorkZone)) as UpdateWorkZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWorkZone create() => UpdateWorkZone._();
  UpdateWorkZone createEmptyInstance() => create();
  static $pb.PbList<UpdateWorkZone> createRepeated() => $pb.PbList<UpdateWorkZone>();
  @$core.pragma('dart2js:noInline')
  static UpdateWorkZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWorkZone>(create);
  static UpdateWorkZone? _defaultInstance;

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
  $1.Timestamp get requestTime => $_getN(2);
  @$pb.TagNumber(3)
  set requestTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRequestTime() => $_ensure(2);

  @$pb.TagNumber(4)
  DataHubUpdateSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(DataHubUpdateSource v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);
  @$pb.TagNumber(4)
  DataHubUpdateSource ensureSource() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<CreateRoadSection> get createRoadSubEvents => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<UpdateRoadSection> get updateRoadSubEvents => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<RemoveRoadSection> get removeRoadSubEvents => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get requestId => $_getI64(7);
  @$pb.TagNumber(8)
  set requestId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestId() => $_clearField(8);
}

class CreateRoadSection extends $pb.GeneratedMessage {
  factory CreateRoadSection({
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  CreateRoadSection._() : super();
  factory CreateRoadSection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoadSection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRoadSection', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$8.RoadSubEvent>(1, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(3, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoadSection clone() => CreateRoadSection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoadSection copyWith(void Function(CreateRoadSection) updates) => super.copyWith((message) => updates(message as CreateRoadSection)) as CreateRoadSection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRoadSection create() => CreateRoadSection._();
  CreateRoadSection createEmptyInstance() => create();
  static $pb.PbList<CreateRoadSection> createRepeated() => $pb.PbList<CreateRoadSection>();
  @$core.pragma('dart2js:noInline')
  static CreateRoadSection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoadSection>(create);
  static CreateRoadSection? _defaultInstance;

  @$pb.TagNumber(1)
  $8.RoadSubEvent get roadSubEvent => $_getN(0);
  @$pb.TagNumber(1)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoadSubEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoadSubEvent() => $_clearField(1);
  @$pb.TagNumber(1)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get requestTime => $_getN(1);
  @$pb.TagNumber(2)
  set requestTime($1.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureRequestTime() => $_ensure(1);

  @$pb.TagNumber(3)
  DataHubUpdateSource get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(DataHubUpdateSource v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);
  @$pb.TagNumber(3)
  DataHubUpdateSource ensureSource() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get requestId => $_getI64(3);
  @$pb.TagNumber(4)
  set requestId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestId() => $_clearField(4);
}

class UpdateRoadSection extends $pb.GeneratedMessage {
  factory UpdateRoadSection({
    $fixnum.Int64? id,
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  UpdateRoadSection._() : super();
  factory UpdateRoadSection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoadSection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRoadSection', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSubEvent>(2, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(4, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoadSection clone() => UpdateRoadSection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoadSection copyWith(void Function(UpdateRoadSection) updates) => super.copyWith((message) => updates(message as UpdateRoadSection)) as UpdateRoadSection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRoadSection create() => UpdateRoadSection._();
  UpdateRoadSection createEmptyInstance() => create();
  static $pb.PbList<UpdateRoadSection> createRepeated() => $pb.PbList<UpdateRoadSection>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoadSection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoadSection>(create);
  static UpdateRoadSection? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $8.RoadSubEvent get roadSubEvent => $_getN(1);
  @$pb.TagNumber(2)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSubEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSubEvent() => $_clearField(2);
  @$pb.TagNumber(2)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get requestTime => $_getN(2);
  @$pb.TagNumber(3)
  set requestTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRequestTime() => $_ensure(2);

  @$pb.TagNumber(4)
  DataHubUpdateSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(DataHubUpdateSource v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);
  @$pb.TagNumber(4)
  DataHubUpdateSource ensureSource() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get requestId => $_getI64(4);
  @$pb.TagNumber(5)
  set requestId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestId() => $_clearField(5);
}

class RemoveRoadSection extends $pb.GeneratedMessage {
  factory RemoveRoadSection({
    $fixnum.Int64? id,
    $8.RoadSubEvent? roadSubEvent,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
    $fixnum.Int64? requestId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roadSubEvent != null) {
      $result.roadSubEvent = roadSubEvent;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    if (requestId != null) {
      $result.requestId = requestId;
    }
    return $result;
  }
  RemoveRoadSection._() : super();
  factory RemoveRoadSection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRoadSection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveRoadSection', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$8.RoadSubEvent>(2, _omitFieldNames ? '' : 'roadSubEvent', subBuilder: $8.RoadSubEvent.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(4, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRoadSection clone() => RemoveRoadSection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRoadSection copyWith(void Function(RemoveRoadSection) updates) => super.copyWith((message) => updates(message as RemoveRoadSection)) as RemoveRoadSection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveRoadSection create() => RemoveRoadSection._();
  RemoveRoadSection createEmptyInstance() => create();
  static $pb.PbList<RemoveRoadSection> createRepeated() => $pb.PbList<RemoveRoadSection>();
  @$core.pragma('dart2js:noInline')
  static RemoveRoadSection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRoadSection>(create);
  static RemoveRoadSection? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $8.RoadSubEvent get roadSubEvent => $_getN(1);
  @$pb.TagNumber(2)
  set roadSubEvent($8.RoadSubEvent v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSubEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSubEvent() => $_clearField(2);
  @$pb.TagNumber(2)
  $8.RoadSubEvent ensureRoadSubEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get requestTime => $_getN(2);
  @$pb.TagNumber(3)
  set requestTime($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRequestTime() => $_ensure(2);

  @$pb.TagNumber(4)
  DataHubUpdateSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(DataHubUpdateSource v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);
  @$pb.TagNumber(4)
  DataHubUpdateSource ensureSource() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get requestId => $_getI64(4);
  @$pb.TagNumber(5)
  set requestId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestId() => $_clearField(5);
}

/// Data Types
class ReportSummary extends $pb.GeneratedMessage {
  factory ReportSummary({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $1.Timestamp? reportDate,
    $core.String? contactName,
    $core.String? contactPhone,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (reportDate != null) {
      $result.reportDate = reportDate;
    }
    if (contactName != null) {
      $result.contactName = contactName;
    }
    if (contactPhone != null) {
      $result.contactPhone = contactPhone;
    }
    return $result;
  }
  ReportSummary._() : super();
  factory ReportSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReportSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'reportDate', subBuilder: $1.Timestamp.create)
    ..aOS(5, _omitFieldNames ? '' : 'contactName')
    ..aOS(6, _omitFieldNames ? '' : 'contactPhone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportSummary clone() => ReportSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportSummary copyWith(void Function(ReportSummary) updates) => super.copyWith((message) => updates(message as ReportSummary)) as ReportSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportSummary create() => ReportSummary._();
  ReportSummary createEmptyInstance() => create();
  static $pb.PbList<ReportSummary> createRepeated() => $pb.PbList<ReportSummary>();
  @$core.pragma('dart2js:noInline')
  static ReportSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportSummary>(create);
  static ReportSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get reportDate => $_getN(3);
  @$pb.TagNumber(4)
  set reportDate($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReportDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get contactName => $_getSZ(4);
  @$pb.TagNumber(5)
  set contactName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContactName() => $_has(4);
  @$pb.TagNumber(5)
  void clearContactName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get contactPhone => $_getSZ(5);
  @$pb.TagNumber(6)
  set contactPhone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContactPhone() => $_has(5);
  @$pb.TagNumber(6)
  void clearContactPhone() => $_clearField(6);
}

class RecordingSummary extends $pb.GeneratedMessage {
  factory RecordingSummary({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $1.Timestamp? reportDate,
    $core.double? lengthMeters,
    $core.double? positionAccuracyMeters,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (reportDate != null) {
      $result.reportDate = reportDate;
    }
    if (lengthMeters != null) {
      $result.lengthMeters = lengthMeters;
    }
    if (positionAccuracyMeters != null) {
      $result.positionAccuracyMeters = positionAccuracyMeters;
    }
    return $result;
  }
  RecordingSummary._() : super();
  factory RecordingSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'reportDate', subBuilder: $1.Timestamp.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'lengthMeters', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'positionAccuracyMeters', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingSummary clone() => RecordingSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingSummary copyWith(void Function(RecordingSummary) updates) => super.copyWith((message) => updates(message as RecordingSummary)) as RecordingSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingSummary create() => RecordingSummary._();
  RecordingSummary createEmptyInstance() => create();
  static $pb.PbList<RecordingSummary> createRepeated() => $pb.PbList<RecordingSummary>();
  @$core.pragma('dart2js:noInline')
  static RecordingSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingSummary>(create);
  static RecordingSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get reportDate => $_getN(3);
  @$pb.TagNumber(4)
  set reportDate($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReportDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get lengthMeters => $_getN(4);
  @$pb.TagNumber(5)
  set lengthMeters($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLengthMeters() => $_has(4);
  @$pb.TagNumber(5)
  void clearLengthMeters() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get positionAccuracyMeters => $_getN(5);
  @$pb.TagNumber(6)
  set positionAccuracyMeters($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPositionAccuracyMeters() => $_has(5);
  @$pb.TagNumber(6)
  void clearPositionAccuracyMeters() => $_clearField(6);
}

class FieldDeviceSummaryArray extends $pb.GeneratedMessage {
  factory FieldDeviceSummaryArray({
    $core.Iterable<FieldDeviceSummary>? fieldDeviceSummary,
  }) {
    final $result = create();
    if (fieldDeviceSummary != null) {
      $result.fieldDeviceSummary.addAll(fieldDeviceSummary);
    }
    return $result;
  }
  FieldDeviceSummaryArray._() : super();
  factory FieldDeviceSummaryArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceSummaryArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceSummaryArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pc<FieldDeviceSummary>(1, _omitFieldNames ? '' : 'fieldDeviceSummary', $pb.PbFieldType.PM, subBuilder: FieldDeviceSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceSummaryArray clone() => FieldDeviceSummaryArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceSummaryArray copyWith(void Function(FieldDeviceSummaryArray) updates) => super.copyWith((message) => updates(message as FieldDeviceSummaryArray)) as FieldDeviceSummaryArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceSummaryArray create() => FieldDeviceSummaryArray._();
  FieldDeviceSummaryArray createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceSummaryArray> createRepeated() => $pb.PbList<FieldDeviceSummaryArray>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceSummaryArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceSummaryArray>(create);
  static FieldDeviceSummaryArray? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<FieldDeviceSummary> get fieldDeviceSummary => $_getList(0);
}

class FieldDeviceSummary extends $pb.GeneratedMessage {
  factory FieldDeviceSummary({
    $fixnum.Int64? id,
    $10.FieldDevice? device,
    $1.Timestamp? updateDate,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (device != null) {
      $result.device = device;
    }
    if (updateDate != null) {
      $result.updateDate = updateDate;
    }
    return $result;
  }
  FieldDeviceSummary._() : super();
  factory FieldDeviceSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$10.FieldDevice>(2, _omitFieldNames ? '' : 'device', subBuilder: $10.FieldDevice.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updateDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceSummary clone() => FieldDeviceSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceSummary copyWith(void Function(FieldDeviceSummary) updates) => super.copyWith((message) => updates(message as FieldDeviceSummary)) as FieldDeviceSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceSummary create() => FieldDeviceSummary._();
  FieldDeviceSummary createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceSummary> createRepeated() => $pb.PbList<FieldDeviceSummary>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceSummary>(create);
  static FieldDeviceSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $10.FieldDevice get device => $_getN(1);
  @$pb.TagNumber(2)
  set device($10.FieldDevice v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  $10.FieldDevice ensureDevice() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get updateDate => $_getN(2);
  @$pb.TagNumber(3)
  set updateDate($1.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureUpdateDate() => $_ensure(2);
}

enum DataHubUpdateSource_Source {
  reportSummary, 
  recordingSummary, 
  fieldDeviceSummaries, 
  notSet
}

class DataHubUpdateSource extends $pb.GeneratedMessage {
  factory DataHubUpdateSource({
    ReportSummary? reportSummary,
    RecordingSummary? recordingSummary,
    FieldDeviceSummaryArray? fieldDeviceSummaries,
  }) {
    final $result = create();
    if (reportSummary != null) {
      $result.reportSummary = reportSummary;
    }
    if (recordingSummary != null) {
      $result.recordingSummary = recordingSummary;
    }
    if (fieldDeviceSummaries != null) {
      $result.fieldDeviceSummaries = fieldDeviceSummaries;
    }
    return $result;
  }
  DataHubUpdateSource._() : super();
  factory DataHubUpdateSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataHubUpdateSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DataHubUpdateSource_Source> _DataHubUpdateSource_SourceByTag = {
    1 : DataHubUpdateSource_Source.reportSummary,
    2 : DataHubUpdateSource_Source.recordingSummary,
    3 : DataHubUpdateSource_Source.fieldDeviceSummaries,
    0 : DataHubUpdateSource_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataHubUpdateSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ReportSummary>(1, _omitFieldNames ? '' : 'reportSummary', subBuilder: ReportSummary.create)
    ..aOM<RecordingSummary>(2, _omitFieldNames ? '' : 'recordingSummary', subBuilder: RecordingSummary.create)
    ..aOM<FieldDeviceSummaryArray>(3, _omitFieldNames ? '' : 'fieldDeviceSummaries', subBuilder: FieldDeviceSummaryArray.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataHubUpdateSource clone() => DataHubUpdateSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataHubUpdateSource copyWith(void Function(DataHubUpdateSource) updates) => super.copyWith((message) => updates(message as DataHubUpdateSource)) as DataHubUpdateSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataHubUpdateSource create() => DataHubUpdateSource._();
  DataHubUpdateSource createEmptyInstance() => create();
  static $pb.PbList<DataHubUpdateSource> createRepeated() => $pb.PbList<DataHubUpdateSource>();
  @$core.pragma('dart2js:noInline')
  static DataHubUpdateSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataHubUpdateSource>(create);
  static DataHubUpdateSource? _defaultInstance;

  DataHubUpdateSource_Source whichSource() => _DataHubUpdateSource_SourceByTag[$_whichOneof(0)]!;
  void clearSource() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ReportSummary get reportSummary => $_getN(0);
  @$pb.TagNumber(1)
  set reportSummary(ReportSummary v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReportSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearReportSummary() => $_clearField(1);
  @$pb.TagNumber(1)
  ReportSummary ensureReportSummary() => $_ensure(0);

  @$pb.TagNumber(2)
  RecordingSummary get recordingSummary => $_getN(1);
  @$pb.TagNumber(2)
  set recordingSummary(RecordingSummary v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecordingSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecordingSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  RecordingSummary ensureRecordingSummary() => $_ensure(1);

  @$pb.TagNumber(3)
  FieldDeviceSummaryArray get fieldDeviceSummaries => $_getN(2);
  @$pb.TagNumber(3)
  set fieldDeviceSummaries(FieldDeviceSummaryArray v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldDeviceSummaries() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldDeviceSummaries() => $_clearField(3);
  @$pb.TagNumber(3)
  FieldDeviceSummaryArray ensureFieldDeviceSummaries() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
