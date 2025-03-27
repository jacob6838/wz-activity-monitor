//
//  Generated code. Do not modify.
//  source: datahub_to_conadmin.proto
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
import 'common.pb.dart' as $3;
import 'datahub_to_conadmin.pbenum.dart';
import 'field_device.pb.dart' as $6;
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'recording.pb.dart' as $10;
import 'road_section.pb.dart' as $8;

export 'datahub_to_conadmin.pbenum.dart';

class VehicleLocationUpdated extends $pb.GeneratedMessage {
  factory VehicleLocationUpdated({
    $fixnum.Int64? id,
    $core.String? licensePlate,
    VehicleLocationUpdated_VehicleOperationType? operationType,
    $3.PointGeometry? location,
    $core.double? velocityKph,
    $core.double? heading,
    $1.Timestamp? timestamp,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (licensePlate != null) {
      $result.licensePlate = licensePlate;
    }
    if (operationType != null) {
      $result.operationType = operationType;
    }
    if (location != null) {
      $result.location = location;
    }
    if (velocityKph != null) {
      $result.velocityKph = velocityKph;
    }
    if (heading != null) {
      $result.heading = heading;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  VehicleLocationUpdated._() : super();
  factory VehicleLocationUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VehicleLocationUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VehicleLocationUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'licensePlate')
    ..e<VehicleLocationUpdated_VehicleOperationType>(3, _omitFieldNames ? '' : 'operationType', $pb.PbFieldType.OE, defaultOrMaker: VehicleLocationUpdated_VehicleOperationType.VEHICLE_OPERATION_STRIPING, valueOf: VehicleLocationUpdated_VehicleOperationType.valueOf, enumValues: VehicleLocationUpdated_VehicleOperationType.values)
    ..aOM<$3.PointGeometry>(4, _omitFieldNames ? '' : 'location', subBuilder: $3.PointGeometry.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'velocityKph', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'heading', $pb.PbFieldType.OD)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'timestamp', subBuilder: $1.Timestamp.create)
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get licensePlate => $_getSZ(1);
  @$pb.TagNumber(2)
  set licensePlate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLicensePlate() => $_has(1);
  @$pb.TagNumber(2)
  void clearLicensePlate() => clearField(2);

  @$pb.TagNumber(3)
  VehicleLocationUpdated_VehicleOperationType get operationType => $_getN(2);
  @$pb.TagNumber(3)
  set operationType(VehicleLocationUpdated_VehicleOperationType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperationType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperationType() => clearField(3);

  @$pb.TagNumber(4)
  $3.PointGeometry get location => $_getN(3);
  @$pb.TagNumber(4)
  set location($3.PointGeometry v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  $3.PointGeometry ensureLocation() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get velocityKph => $_getN(4);
  @$pb.TagNumber(5)
  set velocityKph($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVelocityKph() => $_has(4);
  @$pb.TagNumber(5)
  void clearVelocityKph() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get heading => $_getN(5);
  @$pb.TagNumber(6)
  set heading($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeading() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeading() => clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get timestamp => $_getN(6);
  @$pb.TagNumber(7)
  set timestamp($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTimestamp() => $_has(6);
  @$pb.TagNumber(7)
  void clearTimestamp() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureTimestamp() => $_ensure(6);
}

class FieldDeviceCreateRequest extends $pb.GeneratedMessage {
  factory FieldDeviceCreateRequest({
    $6.FieldDevice? fieldDevice,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (fieldDevice != null) {
      $result.fieldDevice = fieldDevice;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  FieldDeviceCreateRequest._() : super();
  factory FieldDeviceCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$6.FieldDevice>(1, _omitFieldNames ? '' : 'fieldDevice', subBuilder: $6.FieldDevice.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceCreateRequest clone() => FieldDeviceCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceCreateRequest copyWith(void Function(FieldDeviceCreateRequest) updates) => super.copyWith((message) => updates(message as FieldDeviceCreateRequest)) as FieldDeviceCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceCreateRequest create() => FieldDeviceCreateRequest._();
  FieldDeviceCreateRequest createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceCreateRequest> createRepeated() => $pb.PbList<FieldDeviceCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceCreateRequest>(create);
  static FieldDeviceCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.FieldDevice get fieldDevice => $_getN(0);
  @$pb.TagNumber(1)
  set fieldDevice($6.FieldDevice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldDevice() => clearField(1);
  @$pb.TagNumber(1)
  $6.FieldDevice ensureFieldDevice() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get updatedTime => $_getN(1);
  @$pb.TagNumber(2)
  set updatedTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdatedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdatedTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureUpdatedTime() => $_ensure(1);
}

class FieldDeviceUpdateRequest extends $pb.GeneratedMessage {
  factory FieldDeviceUpdateRequest({
    $fixnum.Int64? id,
    $6.FieldDevice? fieldDevice,
    $1.Timestamp? updatedTime,
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
    return $result;
  }
  FieldDeviceUpdateRequest._() : super();
  factory FieldDeviceUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDeviceUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDeviceUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$6.FieldDevice>(2, _omitFieldNames ? '' : 'fieldDevice', subBuilder: $6.FieldDevice.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDeviceUpdateRequest clone() => FieldDeviceUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDeviceUpdateRequest copyWith(void Function(FieldDeviceUpdateRequest) updates) => super.copyWith((message) => updates(message as FieldDeviceUpdateRequest)) as FieldDeviceUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDeviceUpdateRequest create() => FieldDeviceUpdateRequest._();
  FieldDeviceUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<FieldDeviceUpdateRequest> createRepeated() => $pb.PbList<FieldDeviceUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static FieldDeviceUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDeviceUpdateRequest>(create);
  static FieldDeviceUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $6.FieldDevice get fieldDevice => $_getN(1);
  @$pb.TagNumber(2)
  set fieldDevice($6.FieldDevice v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldDevice() => clearField(2);
  @$pb.TagNumber(2)
  $6.FieldDevice ensureFieldDevice() => $_ensure(1);

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

class RoadSectionCreateRequest extends $pb.GeneratedMessage {
  factory RoadSectionCreateRequest({
    $8.RoadSection? proposedRoadSection,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
  }) {
    final $result = create();
    if (proposedRoadSection != null) {
      $result.proposedRoadSection = proposedRoadSection;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  RoadSectionCreateRequest._() : super();
  factory RoadSectionCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSectionCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSectionCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$8.RoadSection>(1, _omitFieldNames ? '' : 'proposedRoadSection', subBuilder: $8.RoadSection.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(3, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSectionCreateRequest clone() => RoadSectionCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSectionCreateRequest copyWith(void Function(RoadSectionCreateRequest) updates) => super.copyWith((message) => updates(message as RoadSectionCreateRequest)) as RoadSectionCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSectionCreateRequest create() => RoadSectionCreateRequest._();
  RoadSectionCreateRequest createEmptyInstance() => create();
  static $pb.PbList<RoadSectionCreateRequest> createRepeated() => $pb.PbList<RoadSectionCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static RoadSectionCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSectionCreateRequest>(create);
  static RoadSectionCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $8.RoadSection get proposedRoadSection => $_getN(0);
  @$pb.TagNumber(1)
  set proposedRoadSection($8.RoadSection v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposedRoadSection() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposedRoadSection() => clearField(1);
  @$pb.TagNumber(1)
  $8.RoadSection ensureProposedRoadSection() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get requestTime => $_getN(1);
  @$pb.TagNumber(2)
  set requestTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureRequestTime() => $_ensure(1);

  @$pb.TagNumber(3)
  DataHubUpdateSource get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(DataHubUpdateSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);
  @$pb.TagNumber(3)
  DataHubUpdateSource ensureSource() => $_ensure(2);
}

class RoadSectionUpdateRequest extends $pb.GeneratedMessage {
  factory RoadSectionUpdateRequest({
    $fixnum.Int64? id,
    $9.ActivityArea? proposedRoadSection,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (proposedRoadSection != null) {
      $result.proposedRoadSection = proposedRoadSection;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  RoadSectionUpdateRequest._() : super();
  factory RoadSectionUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoadSectionUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoadSectionUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.ActivityArea>(2, _omitFieldNames ? '' : 'proposedRoadSection', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(4, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoadSectionUpdateRequest clone() => RoadSectionUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoadSectionUpdateRequest copyWith(void Function(RoadSectionUpdateRequest) updates) => super.copyWith((message) => updates(message as RoadSectionUpdateRequest)) as RoadSectionUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoadSectionUpdateRequest create() => RoadSectionUpdateRequest._();
  RoadSectionUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<RoadSectionUpdateRequest> createRepeated() => $pb.PbList<RoadSectionUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static RoadSectionUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoadSectionUpdateRequest>(create);
  static RoadSectionUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $9.ActivityArea get proposedRoadSection => $_getN(1);
  @$pb.TagNumber(2)
  set proposedRoadSection($9.ActivityArea v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposedRoadSection() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposedRoadSection() => clearField(2);
  @$pb.TagNumber(2)
  $9.ActivityArea ensureProposedRoadSection() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get requestTime => $_getN(2);
  @$pb.TagNumber(3)
  set requestTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRequestTime() => $_ensure(2);

  @$pb.TagNumber(4)
  DataHubUpdateSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(DataHubUpdateSource v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => clearField(4);
  @$pb.TagNumber(4)
  DataHubUpdateSource ensureSource() => $_ensure(3);
}

class ActivityAreaCreateRequest extends $pb.GeneratedMessage {
  factory ActivityAreaCreateRequest({
    $9.ActivityArea? proposedActivityArea,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
  }) {
    final $result = create();
    if (proposedActivityArea != null) {
      $result.proposedActivityArea = proposedActivityArea;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  ActivityAreaCreateRequest._() : super();
  factory ActivityAreaCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityAreaCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityAreaCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$9.ActivityArea>(1, _omitFieldNames ? '' : 'proposedActivityArea', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(3, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityAreaCreateRequest clone() => ActivityAreaCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityAreaCreateRequest copyWith(void Function(ActivityAreaCreateRequest) updates) => super.copyWith((message) => updates(message as ActivityAreaCreateRequest)) as ActivityAreaCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityAreaCreateRequest create() => ActivityAreaCreateRequest._();
  ActivityAreaCreateRequest createEmptyInstance() => create();
  static $pb.PbList<ActivityAreaCreateRequest> createRepeated() => $pb.PbList<ActivityAreaCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static ActivityAreaCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityAreaCreateRequest>(create);
  static ActivityAreaCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.ActivityArea get proposedActivityArea => $_getN(0);
  @$pb.TagNumber(1)
  set proposedActivityArea($9.ActivityArea v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProposedActivityArea() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposedActivityArea() => clearField(1);
  @$pb.TagNumber(1)
  $9.ActivityArea ensureProposedActivityArea() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get requestTime => $_getN(1);
  @$pb.TagNumber(2)
  set requestTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureRequestTime() => $_ensure(1);

  @$pb.TagNumber(3)
  DataHubUpdateSource get source => $_getN(2);
  @$pb.TagNumber(3)
  set source(DataHubUpdateSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);
  @$pb.TagNumber(3)
  DataHubUpdateSource ensureSource() => $_ensure(2);
}

class ActivityAreaUpdateRequest extends $pb.GeneratedMessage {
  factory ActivityAreaUpdateRequest({
    $fixnum.Int64? id,
    $9.ActivityArea? proposedActivityArea,
    $1.Timestamp? requestTime,
    DataHubUpdateSource? source,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (proposedActivityArea != null) {
      $result.proposedActivityArea = proposedActivityArea;
    }
    if (requestTime != null) {
      $result.requestTime = requestTime;
    }
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  ActivityAreaUpdateRequest._() : super();
  factory ActivityAreaUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActivityAreaUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityAreaUpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$9.ActivityArea>(2, _omitFieldNames ? '' : 'proposedActivityArea', subBuilder: $9.ActivityArea.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'requestTime', subBuilder: $1.Timestamp.create)
    ..aOM<DataHubUpdateSource>(4, _omitFieldNames ? '' : 'source', subBuilder: DataHubUpdateSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActivityAreaUpdateRequest clone() => ActivityAreaUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActivityAreaUpdateRequest copyWith(void Function(ActivityAreaUpdateRequest) updates) => super.copyWith((message) => updates(message as ActivityAreaUpdateRequest)) as ActivityAreaUpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityAreaUpdateRequest create() => ActivityAreaUpdateRequest._();
  ActivityAreaUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<ActivityAreaUpdateRequest> createRepeated() => $pb.PbList<ActivityAreaUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static ActivityAreaUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityAreaUpdateRequest>(create);
  static ActivityAreaUpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $9.ActivityArea get proposedActivityArea => $_getN(1);
  @$pb.TagNumber(2)
  set proposedActivityArea($9.ActivityArea v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposedActivityArea() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposedActivityArea() => clearField(2);
  @$pb.TagNumber(2)
  $9.ActivityArea ensureProposedActivityArea() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get requestTime => $_getN(2);
  @$pb.TagNumber(3)
  set requestTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureRequestTime() => $_ensure(2);

  @$pb.TagNumber(4)
  DataHubUpdateSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(DataHubUpdateSource v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => clearField(4);
  @$pb.TagNumber(4)
  DataHubUpdateSource ensureSource() => $_ensure(3);
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get reportDate => $_getN(3);
  @$pb.TagNumber(4)
  set reportDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReportDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get contactName => $_getSZ(4);
  @$pb.TagNumber(5)
  set contactName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContactName() => $_has(4);
  @$pb.TagNumber(5)
  void clearContactName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contactPhone => $_getSZ(5);
  @$pb.TagNumber(6)
  set contactPhone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContactPhone() => $_has(5);
  @$pb.TagNumber(6)
  void clearContactPhone() => clearField(6);
}

class RecordingMarkingSummary extends $pb.GeneratedMessage {
  factory RecordingMarkingSummary({
    $core.int? pathIndex,
    $core.Iterable<$10.RecordingMarking>? markings,
  }) {
    final $result = create();
    if (pathIndex != null) {
      $result.pathIndex = pathIndex;
    }
    if (markings != null) {
      $result.markings.addAll(markings);
    }
    return $result;
  }
  RecordingMarkingSummary._() : super();
  factory RecordingMarkingSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecordingMarkingSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RecordingMarkingSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pathIndex', $pb.PbFieldType.OU3)
    ..pc<$10.RecordingMarking>(2, _omitFieldNames ? '' : 'markings', $pb.PbFieldType.PM, subBuilder: $10.RecordingMarking.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecordingMarkingSummary clone() => RecordingMarkingSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecordingMarkingSummary copyWith(void Function(RecordingMarkingSummary) updates) => super.copyWith((message) => updates(message as RecordingMarkingSummary)) as RecordingMarkingSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordingMarkingSummary create() => RecordingMarkingSummary._();
  RecordingMarkingSummary createEmptyInstance() => create();
  static $pb.PbList<RecordingMarkingSummary> createRepeated() => $pb.PbList<RecordingMarkingSummary>();
  @$core.pragma('dart2js:noInline')
  static RecordingMarkingSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecordingMarkingSummary>(create);
  static RecordingMarkingSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pathIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set pathIndex($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPathIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearPathIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$10.RecordingMarking> get markings => $_getList(1);
}

class RecordingSummary extends $pb.GeneratedMessage {
  factory RecordingSummary({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $1.Timestamp? reportDate,
    $core.double? lengthMeters,
    $core.double? positionAccuracyMeters,
    $3.LineStringGeometry? path,
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
    if (path != null) {
      $result.path = path;
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
    ..aOM<$3.LineStringGeometry>(7, _omitFieldNames ? '' : 'path', subBuilder: $3.LineStringGeometry.create)
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get reportDate => $_getN(3);
  @$pb.TagNumber(4)
  set reportDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureReportDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get lengthMeters => $_getN(4);
  @$pb.TagNumber(5)
  set lengthMeters($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLengthMeters() => $_has(4);
  @$pb.TagNumber(5)
  void clearLengthMeters() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get positionAccuracyMeters => $_getN(5);
  @$pb.TagNumber(6)
  set positionAccuracyMeters($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPositionAccuracyMeters() => $_has(5);
  @$pb.TagNumber(6)
  void clearPositionAccuracyMeters() => clearField(6);

  @$pb.TagNumber(7)
  $3.LineStringGeometry get path => $_getN(6);
  @$pb.TagNumber(7)
  set path($3.LineStringGeometry v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearPath() => clearField(7);
  @$pb.TagNumber(7)
  $3.LineStringGeometry ensurePath() => $_ensure(6);
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
  $core.List<FieldDeviceSummary> get fieldDeviceSummary => $_getList(0);
}

class FieldDeviceSummary extends $pb.GeneratedMessage {
  factory FieldDeviceSummary({
    $fixnum.Int64? id,
    $6.FieldDevice? device,
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
    ..aOM<$6.FieldDevice>(2, _omitFieldNames ? '' : 'device', subBuilder: $6.FieldDevice.create)
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
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $6.FieldDevice get device => $_getN(1);
  @$pb.TagNumber(2)
  set device($6.FieldDevice v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevice() => clearField(2);
  @$pb.TagNumber(2)
  $6.FieldDevice ensureDevice() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get updateDate => $_getN(2);
  @$pb.TagNumber(3)
  set updateDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateDate() => clearField(3);
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
  void clearSource() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ReportSummary get reportSummary => $_getN(0);
  @$pb.TagNumber(1)
  set reportSummary(ReportSummary v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReportSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearReportSummary() => clearField(1);
  @$pb.TagNumber(1)
  ReportSummary ensureReportSummary() => $_ensure(0);

  @$pb.TagNumber(2)
  RecordingSummary get recordingSummary => $_getN(1);
  @$pb.TagNumber(2)
  set recordingSummary(RecordingSummary v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecordingSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecordingSummary() => clearField(2);
  @$pb.TagNumber(2)
  RecordingSummary ensureRecordingSummary() => $_ensure(1);

  @$pb.TagNumber(3)
  FieldDeviceSummaryArray get fieldDeviceSummaries => $_getN(2);
  @$pb.TagNumber(3)
  set fieldDeviceSummaries(FieldDeviceSummaryArray v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldDeviceSummaries() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldDeviceSummaries() => clearField(3);
  @$pb.TagNumber(3)
  FieldDeviceSummaryArray ensureFieldDeviceSummaries() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
