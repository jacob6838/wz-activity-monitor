//
//  Generated code. Do not modify.
//  source: field_device.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import 'field_device.pbenum.dart';
import 'google/protobuf/timestamp.pb.dart' as $1;
import 'wzdx.pbenum.dart' as $2;

export 'field_device.pbenum.dart';

class FieldDevice_FieldDeviceCoreDetails extends $pb.GeneratedMessage {
  factory FieldDevice_FieldDeviceCoreDetails({
    FieldDevice_FieldDeviceStatus? deviceStatus,
    $core.bool? hasAutomaticLocation,
    $2.RoadwayDirection? roadDirection,
    $core.Iterable<$core.String>? roadNames,
    $core.String? name,
    $core.String? description,
    $core.Iterable<$core.String>? statusMessages,
    $core.bool? isMoving,
    $core.int? milepost,
    $core.String? make,
    $core.String? model,
    $core.String? serialNumber,
    $core.String? firmwareVersion,
    $core.double? velocityKph,
  }) {
    final $result = create();
    if (deviceStatus != null) {
      $result.deviceStatus = deviceStatus;
    }
    if (hasAutomaticLocation != null) {
      $result.hasAutomaticLocation = hasAutomaticLocation;
    }
    if (roadDirection != null) {
      $result.roadDirection = roadDirection;
    }
    if (roadNames != null) {
      $result.roadNames.addAll(roadNames);
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (statusMessages != null) {
      $result.statusMessages.addAll(statusMessages);
    }
    if (isMoving != null) {
      $result.isMoving = isMoving;
    }
    if (milepost != null) {
      $result.milepost = milepost;
    }
    if (make != null) {
      $result.make = make;
    }
    if (model != null) {
      $result.model = model;
    }
    if (serialNumber != null) {
      $result.serialNumber = serialNumber;
    }
    if (firmwareVersion != null) {
      $result.firmwareVersion = firmwareVersion;
    }
    if (velocityKph != null) {
      $result.velocityKph = velocityKph;
    }
    return $result;
  }
  FieldDevice_FieldDeviceCoreDetails._() : super();
  factory FieldDevice_FieldDeviceCoreDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_FieldDeviceCoreDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.FieldDeviceCoreDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..e<FieldDevice_FieldDeviceStatus>(1, _omitFieldNames ? '' : 'deviceStatus', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_FieldDeviceStatus.FIELD_DEVICE_STATUS_OK, valueOf: FieldDevice_FieldDeviceStatus.valueOf, enumValues: FieldDevice_FieldDeviceStatus.values)
    ..aOB(2, _omitFieldNames ? '' : 'hasAutomaticLocation')
    ..e<$2.RoadwayDirection>(3, _omitFieldNames ? '' : 'roadDirection', $pb.PbFieldType.OE, defaultOrMaker: $2.RoadwayDirection.ROADWAY_DIRECTION_NORTHBOUND, valueOf: $2.RoadwayDirection.valueOf, enumValues: $2.RoadwayDirection.values)
    ..pPS(4, _omitFieldNames ? '' : 'roadNames')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..pPS(7, _omitFieldNames ? '' : 'statusMessages')
    ..aOB(8, _omitFieldNames ? '' : 'isMoving')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'milepost', $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'make')
    ..aOS(14, _omitFieldNames ? '' : 'model')
    ..aOS(15, _omitFieldNames ? '' : 'serialNumber')
    ..aOS(16, _omitFieldNames ? '' : 'firmwareVersion')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'velocityKph', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_FieldDeviceCoreDetails clone() => FieldDevice_FieldDeviceCoreDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_FieldDeviceCoreDetails copyWith(void Function(FieldDevice_FieldDeviceCoreDetails) updates) => super.copyWith((message) => updates(message as FieldDevice_FieldDeviceCoreDetails)) as FieldDevice_FieldDeviceCoreDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_FieldDeviceCoreDetails create() => FieldDevice_FieldDeviceCoreDetails._();
  FieldDevice_FieldDeviceCoreDetails createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_FieldDeviceCoreDetails> createRepeated() => $pb.PbList<FieldDevice_FieldDeviceCoreDetails>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_FieldDeviceCoreDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_FieldDeviceCoreDetails>(create);
  static FieldDevice_FieldDeviceCoreDetails? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceStatus get deviceStatus => $_getN(0);
  @$pb.TagNumber(1)
  set deviceStatus(FieldDevice_FieldDeviceStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasAutomaticLocation => $_getBF(1);
  @$pb.TagNumber(2)
  set hasAutomaticLocation($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasAutomaticLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasAutomaticLocation() => clearField(2);

  @$pb.TagNumber(3)
  $2.RoadwayDirection get roadDirection => $_getN(2);
  @$pb.TagNumber(3)
  set roadDirection($2.RoadwayDirection v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadDirection() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadDirection() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get roadNames => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get statusMessages => $_getList(6);

  @$pb.TagNumber(8)
  $core.bool get isMoving => $_getBF(7);
  @$pb.TagNumber(8)
  set isMoving($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsMoving() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsMoving() => clearField(8);

  @$pb.TagNumber(12)
  $core.int get milepost => $_getIZ(8);
  @$pb.TagNumber(12)
  set milepost($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasMilepost() => $_has(8);
  @$pb.TagNumber(12)
  void clearMilepost() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get make => $_getSZ(9);
  @$pb.TagNumber(13)
  set make($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasMake() => $_has(9);
  @$pb.TagNumber(13)
  void clearMake() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get model => $_getSZ(10);
  @$pb.TagNumber(14)
  set model($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasModel() => $_has(10);
  @$pb.TagNumber(14)
  void clearModel() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get serialNumber => $_getSZ(11);
  @$pb.TagNumber(15)
  set serialNumber($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(15)
  $core.bool hasSerialNumber() => $_has(11);
  @$pb.TagNumber(15)
  void clearSerialNumber() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get firmwareVersion => $_getSZ(12);
  @$pb.TagNumber(16)
  set firmwareVersion($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(16)
  $core.bool hasFirmwareVersion() => $_has(12);
  @$pb.TagNumber(16)
  void clearFirmwareVersion() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get velocityKph => $_getN(13);
  @$pb.TagNumber(17)
  set velocityKph($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(17)
  $core.bool hasVelocityKph() => $_has(13);
  @$pb.TagNumber(17)
  void clearVelocityKph() => clearField(17);
}

class FieldDevice_ArrowBoard extends $pb.GeneratedMessage {
  factory FieldDevice_ArrowBoard({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    FieldDevice_ArrowBoard_ArrowBoardPattern? pattern,
    $core.bool? isInTransportPosition,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (pattern != null) {
      $result.pattern = pattern;
    }
    if (isInTransportPosition != null) {
      $result.isInTransportPosition = isInTransportPosition;
    }
    return $result;
  }
  FieldDevice_ArrowBoard._() : super();
  factory FieldDevice_ArrowBoard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_ArrowBoard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.ArrowBoard', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..e<FieldDevice_ArrowBoard_ArrowBoardPattern>(2, _omitFieldNames ? '' : 'pattern', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_ArrowBoard_ArrowBoardPattern.ARROW_BOARD_PATTERN_BLANK, valueOf: FieldDevice_ArrowBoard_ArrowBoardPattern.valueOf, enumValues: FieldDevice_ArrowBoard_ArrowBoardPattern.values)
    ..aOB(3, _omitFieldNames ? '' : 'isInTransportPosition')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_ArrowBoard clone() => FieldDevice_ArrowBoard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_ArrowBoard copyWith(void Function(FieldDevice_ArrowBoard) updates) => super.copyWith((message) => updates(message as FieldDevice_ArrowBoard)) as FieldDevice_ArrowBoard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_ArrowBoard create() => FieldDevice_ArrowBoard._();
  FieldDevice_ArrowBoard createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_ArrowBoard> createRepeated() => $pb.PbList<FieldDevice_ArrowBoard>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_ArrowBoard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_ArrowBoard>(create);
  static FieldDevice_ArrowBoard? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  FieldDevice_ArrowBoard_ArrowBoardPattern get pattern => $_getN(1);
  @$pb.TagNumber(2)
  set pattern(FieldDevice_ArrowBoard_ArrowBoardPattern v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearPattern() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isInTransportPosition => $_getBF(2);
  @$pb.TagNumber(3)
  set isInTransportPosition($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsInTransportPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsInTransportPosition() => clearField(3);
}

class FieldDevice_Camera extends $pb.GeneratedMessage {
  factory FieldDevice_Camera({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    $core.String? imageUrl,
    $1.Timestamp? imageTimestamp,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (imageTimestamp != null) {
      $result.imageTimestamp = imageTimestamp;
    }
    return $result;
  }
  FieldDevice_Camera._() : super();
  factory FieldDevice_Camera.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_Camera.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.Camera', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..aOS(2, _omitFieldNames ? '' : 'imageUrl')
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'imageTimestamp', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_Camera clone() => FieldDevice_Camera()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_Camera copyWith(void Function(FieldDevice_Camera) updates) => super.copyWith((message) => updates(message as FieldDevice_Camera)) as FieldDevice_Camera;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_Camera create() => FieldDevice_Camera._();
  FieldDevice_Camera createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_Camera> createRepeated() => $pb.PbList<FieldDevice_Camera>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_Camera getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_Camera>(create);
  static FieldDevice_Camera? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get imageUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImageUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageUrl() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get imageTimestamp => $_getN(2);
  @$pb.TagNumber(3)
  set imageTimestamp($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasImageTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureImageTimestamp() => $_ensure(2);
}

class FieldDevice_DynamicMessageSign extends $pb.GeneratedMessage {
  factory FieldDevice_DynamicMessageSign({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    $core.String? messageMultiString,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (messageMultiString != null) {
      $result.messageMultiString = messageMultiString;
    }
    return $result;
  }
  FieldDevice_DynamicMessageSign._() : super();
  factory FieldDevice_DynamicMessageSign.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_DynamicMessageSign.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.DynamicMessageSign', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..aOS(2, _omitFieldNames ? '' : 'messageMultiString')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_DynamicMessageSign clone() => FieldDevice_DynamicMessageSign()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_DynamicMessageSign copyWith(void Function(FieldDevice_DynamicMessageSign) updates) => super.copyWith((message) => updates(message as FieldDevice_DynamicMessageSign)) as FieldDevice_DynamicMessageSign;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_DynamicMessageSign create() => FieldDevice_DynamicMessageSign._();
  FieldDevice_DynamicMessageSign createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_DynamicMessageSign> createRepeated() => $pb.PbList<FieldDevice_DynamicMessageSign>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_DynamicMessageSign getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_DynamicMessageSign>(create);
  static FieldDevice_DynamicMessageSign? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  /// The MULTI (Mark-Up Language for Transportation Information, see NTCIP 1203 v03) formatted string describing the message currently posted to the sign.
  @$pb.TagNumber(2)
  $core.String get messageMultiString => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageMultiString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageMultiString() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageMultiString() => clearField(2);
}

class FieldDevice_FlashingBeacon extends $pb.GeneratedMessage {
  factory FieldDevice_FlashingBeacon({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    FieldDevice_FlashingBeacon_FlashingBeaconFunction? function,
    $core.bool? isFlashing,
    $core.String? signText,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (function != null) {
      $result.function = function;
    }
    if (isFlashing != null) {
      $result.isFlashing = isFlashing;
    }
    if (signText != null) {
      $result.signText = signText;
    }
    return $result;
  }
  FieldDevice_FlashingBeacon._() : super();
  factory FieldDevice_FlashingBeacon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_FlashingBeacon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.FlashingBeacon', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..e<FieldDevice_FlashingBeacon_FlashingBeaconFunction>(2, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_FlashingBeacon_FlashingBeaconFunction.FLASHING_BEACON_FUNCTION_VEHICLE_ENTERING, valueOf: FieldDevice_FlashingBeacon_FlashingBeaconFunction.valueOf, enumValues: FieldDevice_FlashingBeacon_FlashingBeaconFunction.values)
    ..aOB(3, _omitFieldNames ? '' : 'isFlashing')
    ..aOS(4, _omitFieldNames ? '' : 'signText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_FlashingBeacon clone() => FieldDevice_FlashingBeacon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_FlashingBeacon copyWith(void Function(FieldDevice_FlashingBeacon) updates) => super.copyWith((message) => updates(message as FieldDevice_FlashingBeacon)) as FieldDevice_FlashingBeacon;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_FlashingBeacon create() => FieldDevice_FlashingBeacon._();
  FieldDevice_FlashingBeacon createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_FlashingBeacon> createRepeated() => $pb.PbList<FieldDevice_FlashingBeacon>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_FlashingBeacon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_FlashingBeacon>(create);
  static FieldDevice_FlashingBeacon? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  FieldDevice_FlashingBeacon_FlashingBeaconFunction get function => $_getN(1);
  @$pb.TagNumber(2)
  set function(FieldDevice_FlashingBeacon_FlashingBeaconFunction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearFunction() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isFlashing => $_getBF(2);
  @$pb.TagNumber(3)
  set isFlashing($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsFlashing() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsFlashing() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get signText => $_getSZ(3);
  @$pb.TagNumber(4)
  set signText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignText() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignText() => clearField(4);
}

class FieldDevice_HybridSign extends $pb.GeneratedMessage {
  factory FieldDevice_HybridSign({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    FieldDevice_HybridSign_HybridSignDynamicMessageFunction? dynamicMessageFunction,
    $core.String? dynamicMessageText,
    $core.String? staticSignText,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (dynamicMessageFunction != null) {
      $result.dynamicMessageFunction = dynamicMessageFunction;
    }
    if (dynamicMessageText != null) {
      $result.dynamicMessageText = dynamicMessageText;
    }
    if (staticSignText != null) {
      $result.staticSignText = staticSignText;
    }
    return $result;
  }
  FieldDevice_HybridSign._() : super();
  factory FieldDevice_HybridSign.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_HybridSign.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.HybridSign', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..e<FieldDevice_HybridSign_HybridSignDynamicMessageFunction>(2, _omitFieldNames ? '' : 'dynamicMessageFunction', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_HybridSign_HybridSignDynamicMessageFunction.HYBRID_SIGN_DYNAMIC_MESSAGE_FUNCTION_SPEED_LIMIT, valueOf: FieldDevice_HybridSign_HybridSignDynamicMessageFunction.valueOf, enumValues: FieldDevice_HybridSign_HybridSignDynamicMessageFunction.values)
    ..aOS(3, _omitFieldNames ? '' : 'dynamicMessageText')
    ..aOS(4, _omitFieldNames ? '' : 'staticSignText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_HybridSign clone() => FieldDevice_HybridSign()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_HybridSign copyWith(void Function(FieldDevice_HybridSign) updates) => super.copyWith((message) => updates(message as FieldDevice_HybridSign)) as FieldDevice_HybridSign;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_HybridSign create() => FieldDevice_HybridSign._();
  FieldDevice_HybridSign createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_HybridSign> createRepeated() => $pb.PbList<FieldDevice_HybridSign>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_HybridSign getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_HybridSign>(create);
  static FieldDevice_HybridSign? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  FieldDevice_HybridSign_HybridSignDynamicMessageFunction get dynamicMessageFunction => $_getN(1);
  @$pb.TagNumber(2)
  set dynamicMessageFunction(FieldDevice_HybridSign_HybridSignDynamicMessageFunction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDynamicMessageFunction() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynamicMessageFunction() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dynamicMessageText => $_getSZ(2);
  @$pb.TagNumber(3)
  set dynamicMessageText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDynamicMessageText() => $_has(2);
  @$pb.TagNumber(3)
  void clearDynamicMessageText() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get staticSignText => $_getSZ(3);
  @$pb.TagNumber(4)
  set staticSignText($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStaticSignText() => $_has(3);
  @$pb.TagNumber(4)
  void clearStaticSignText() => clearField(4);
}

enum FieldDevice_LocationMarker_MarkedLocation_EventId {
  roadSectionId, 
  activityAreaId, 
  notSet
}

class FieldDevice_LocationMarker_MarkedLocation extends $pb.GeneratedMessage {
  factory FieldDevice_LocationMarker_MarkedLocation({
    FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType? type,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? activityAreaId,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (activityAreaId != null) {
      $result.activityAreaId = activityAreaId;
    }
    return $result;
  }
  FieldDevice_LocationMarker_MarkedLocation._() : super();
  factory FieldDevice_LocationMarker_MarkedLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_LocationMarker_MarkedLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FieldDevice_LocationMarker_MarkedLocation_EventId> _FieldDevice_LocationMarker_MarkedLocation_EventIdByTag = {
    2 : FieldDevice_LocationMarker_MarkedLocation_EventId.roadSectionId,
    3 : FieldDevice_LocationMarker_MarkedLocation_EventId.activityAreaId,
    0 : FieldDevice_LocationMarker_MarkedLocation_EventId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.LocationMarker.MarkedLocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType.MARKED_LOCATION_TYPE_AFAD, valueOf: FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType.valueOf, enumValues: FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType.values)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'activityAreaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_LocationMarker_MarkedLocation clone() => FieldDevice_LocationMarker_MarkedLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_LocationMarker_MarkedLocation copyWith(void Function(FieldDevice_LocationMarker_MarkedLocation) updates) => super.copyWith((message) => updates(message as FieldDevice_LocationMarker_MarkedLocation)) as FieldDevice_LocationMarker_MarkedLocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_LocationMarker_MarkedLocation create() => FieldDevice_LocationMarker_MarkedLocation._();
  FieldDevice_LocationMarker_MarkedLocation createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_LocationMarker_MarkedLocation> createRepeated() => $pb.PbList<FieldDevice_LocationMarker_MarkedLocation>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_LocationMarker_MarkedLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_LocationMarker_MarkedLocation>(create);
  static FieldDevice_LocationMarker_MarkedLocation? _defaultInstance;

  FieldDevice_LocationMarker_MarkedLocation_EventId whichEventId() => _FieldDevice_LocationMarker_MarkedLocation_EventIdByTag[$_whichOneof(0)]!;
  void clearEventId() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(FieldDevice_LocationMarker_MarkedLocation_MarkedLocationType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roadSectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSectionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get activityAreaId => $_getI64(2);
  @$pb.TagNumber(3)
  set activityAreaId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityAreaId() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityAreaId() => clearField(3);
}

class FieldDevice_LocationMarker extends $pb.GeneratedMessage {
  factory FieldDevice_LocationMarker({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    $core.Iterable<FieldDevice_LocationMarker_MarkedLocation>? markedLocations,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (markedLocations != null) {
      $result.markedLocations.addAll(markedLocations);
    }
    return $result;
  }
  FieldDevice_LocationMarker._() : super();
  factory FieldDevice_LocationMarker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_LocationMarker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.LocationMarker', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..pc<FieldDevice_LocationMarker_MarkedLocation>(2, _omitFieldNames ? '' : 'markedLocations', $pb.PbFieldType.PM, subBuilder: FieldDevice_LocationMarker_MarkedLocation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_LocationMarker clone() => FieldDevice_LocationMarker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_LocationMarker copyWith(void Function(FieldDevice_LocationMarker) updates) => super.copyWith((message) => updates(message as FieldDevice_LocationMarker)) as FieldDevice_LocationMarker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_LocationMarker create() => FieldDevice_LocationMarker._();
  FieldDevice_LocationMarker createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_LocationMarker> createRepeated() => $pb.PbList<FieldDevice_LocationMarker>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_LocationMarker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_LocationMarker>(create);
  static FieldDevice_LocationMarker? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<FieldDevice_LocationMarker_MarkedLocation> get markedLocations => $_getList(1);
}

enum FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId {
  roadSectionId, 
  activityAreaId, 
  notSet
}

class FieldDevice_TrafficSensor_TrafficSensorLaneData extends $pb.GeneratedMessage {
  factory FieldDevice_TrafficSensor_TrafficSensorLaneData({
    $core.int? laneOrder,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? activityAreaId,
    $core.double? averageSpeedKph,
    $core.double? volumeKph,
    $core.double? occupancyPercent,
  }) {
    final $result = create();
    if (laneOrder != null) {
      $result.laneOrder = laneOrder;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (activityAreaId != null) {
      $result.activityAreaId = activityAreaId;
    }
    if (averageSpeedKph != null) {
      $result.averageSpeedKph = averageSpeedKph;
    }
    if (volumeKph != null) {
      $result.volumeKph = volumeKph;
    }
    if (occupancyPercent != null) {
      $result.occupancyPercent = occupancyPercent;
    }
    return $result;
  }
  FieldDevice_TrafficSensor_TrafficSensorLaneData._() : super();
  factory FieldDevice_TrafficSensor_TrafficSensorLaneData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_TrafficSensor_TrafficSensorLaneData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId> _FieldDevice_TrafficSensor_TrafficSensorLaneData_EventIdByTag = {
    2 : FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId.roadSectionId,
    3 : FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId.activityAreaId,
    0 : FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.TrafficSensor.TrafficSensorLaneData', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'laneOrder', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'activityAreaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'averageSpeedKph', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'volumeKph', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'occupancyPercent', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSensor_TrafficSensorLaneData clone() => FieldDevice_TrafficSensor_TrafficSensorLaneData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSensor_TrafficSensorLaneData copyWith(void Function(FieldDevice_TrafficSensor_TrafficSensorLaneData) updates) => super.copyWith((message) => updates(message as FieldDevice_TrafficSensor_TrafficSensorLaneData)) as FieldDevice_TrafficSensor_TrafficSensorLaneData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSensor_TrafficSensorLaneData create() => FieldDevice_TrafficSensor_TrafficSensorLaneData._();
  FieldDevice_TrafficSensor_TrafficSensorLaneData createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_TrafficSensor_TrafficSensorLaneData> createRepeated() => $pb.PbList<FieldDevice_TrafficSensor_TrafficSensorLaneData>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSensor_TrafficSensorLaneData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_TrafficSensor_TrafficSensorLaneData>(create);
  static FieldDevice_TrafficSensor_TrafficSensorLaneData? _defaultInstance;

  FieldDevice_TrafficSensor_TrafficSensorLaneData_EventId whichEventId() => _FieldDevice_TrafficSensor_TrafficSensorLaneData_EventIdByTag[$_whichOneof(0)]!;
  void clearEventId() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get laneOrder => $_getIZ(0);
  @$pb.TagNumber(1)
  set laneOrder($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLaneOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearLaneOrder() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roadSectionId => $_getI64(1);
  @$pb.TagNumber(2)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoadSectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoadSectionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get activityAreaId => $_getI64(2);
  @$pb.TagNumber(3)
  set activityAreaId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActivityAreaId() => $_has(2);
  @$pb.TagNumber(3)
  void clearActivityAreaId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get averageSpeedKph => $_getN(3);
  @$pb.TagNumber(4)
  set averageSpeedKph($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAverageSpeedKph() => $_has(3);
  @$pb.TagNumber(4)
  void clearAverageSpeedKph() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get volumeKph => $_getN(4);
  @$pb.TagNumber(5)
  set volumeKph($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolumeKph() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolumeKph() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get occupancyPercent => $_getN(5);
  @$pb.TagNumber(6)
  set occupancyPercent($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOccupancyPercent() => $_has(5);
  @$pb.TagNumber(6)
  void clearOccupancyPercent() => clearField(6);
}

class FieldDevice_TrafficSensor extends $pb.GeneratedMessage {
  factory FieldDevice_TrafficSensor({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    $1.Timestamp? collectionIntervalStartDate,
    $1.Timestamp? collectionIntervalEndDate,
    $core.double? averageSpeedKph,
    $core.double? volumeKph,
    $core.double? occupancyPercent,
    $core.Iterable<FieldDevice_TrafficSensor_TrafficSensorLaneData>? laneData,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (collectionIntervalStartDate != null) {
      $result.collectionIntervalStartDate = collectionIntervalStartDate;
    }
    if (collectionIntervalEndDate != null) {
      $result.collectionIntervalEndDate = collectionIntervalEndDate;
    }
    if (averageSpeedKph != null) {
      $result.averageSpeedKph = averageSpeedKph;
    }
    if (volumeKph != null) {
      $result.volumeKph = volumeKph;
    }
    if (occupancyPercent != null) {
      $result.occupancyPercent = occupancyPercent;
    }
    if (laneData != null) {
      $result.laneData.addAll(laneData);
    }
    return $result;
  }
  FieldDevice_TrafficSensor._() : super();
  factory FieldDevice_TrafficSensor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_TrafficSensor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.TrafficSensor', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'collectionIntervalStartDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'collectionIntervalEndDate', subBuilder: $1.Timestamp.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'averageSpeedKph', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'volumeKph', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'occupancyPercent', $pb.PbFieldType.OD)
    ..pc<FieldDevice_TrafficSensor_TrafficSensorLaneData>(7, _omitFieldNames ? '' : 'laneData', $pb.PbFieldType.PM, subBuilder: FieldDevice_TrafficSensor_TrafficSensorLaneData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSensor clone() => FieldDevice_TrafficSensor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSensor copyWith(void Function(FieldDevice_TrafficSensor) updates) => super.copyWith((message) => updates(message as FieldDevice_TrafficSensor)) as FieldDevice_TrafficSensor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSensor create() => FieldDevice_TrafficSensor._();
  FieldDevice_TrafficSensor createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_TrafficSensor> createRepeated() => $pb.PbList<FieldDevice_TrafficSensor>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSensor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_TrafficSensor>(create);
  static FieldDevice_TrafficSensor? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get collectionIntervalStartDate => $_getN(1);
  @$pb.TagNumber(2)
  set collectionIntervalStartDate($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionIntervalStartDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionIntervalStartDate() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureCollectionIntervalStartDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get collectionIntervalEndDate => $_getN(2);
  @$pb.TagNumber(3)
  set collectionIntervalEndDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCollectionIntervalEndDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCollectionIntervalEndDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCollectionIntervalEndDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get averageSpeedKph => $_getN(3);
  @$pb.TagNumber(4)
  set averageSpeedKph($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAverageSpeedKph() => $_has(3);
  @$pb.TagNumber(4)
  void clearAverageSpeedKph() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get volumeKph => $_getN(4);
  @$pb.TagNumber(5)
  set volumeKph($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVolumeKph() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolumeKph() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get occupancyPercent => $_getN(5);
  @$pb.TagNumber(6)
  set occupancyPercent($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOccupancyPercent() => $_has(5);
  @$pb.TagNumber(6)
  void clearOccupancyPercent() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<FieldDevice_TrafficSensor_TrafficSensorLaneData> get laneData => $_getList(6);
}

class FieldDevice_TrafficSignal extends $pb.GeneratedMessage {
  factory FieldDevice_TrafficSignal({
    FieldDevice_FieldDeviceCoreDetails? coreDetails,
    FieldDevice_TrafficSignal_TrafficSignalMode? mode,
  }) {
    final $result = create();
    if (coreDetails != null) {
      $result.coreDetails = coreDetails;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  FieldDevice_TrafficSignal._() : super();
  factory FieldDevice_TrafficSignal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice_TrafficSignal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice.TrafficSignal', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<FieldDevice_FieldDeviceCoreDetails>(1, _omitFieldNames ? '' : 'coreDetails', subBuilder: FieldDevice_FieldDeviceCoreDetails.create)
    ..e<FieldDevice_TrafficSignal_TrafficSignalMode>(2, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: FieldDevice_TrafficSignal_TrafficSignalMode.TRAFFIC_SIGNAL_MODE_BLANK, valueOf: FieldDevice_TrafficSignal_TrafficSignalMode.valueOf, enumValues: FieldDevice_TrafficSignal_TrafficSignalMode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSignal clone() => FieldDevice_TrafficSignal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice_TrafficSignal copyWith(void Function(FieldDevice_TrafficSignal) updates) => super.copyWith((message) => updates(message as FieldDevice_TrafficSignal)) as FieldDevice_TrafficSignal;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSignal create() => FieldDevice_TrafficSignal._();
  FieldDevice_TrafficSignal createEmptyInstance() => create();
  static $pb.PbList<FieldDevice_TrafficSignal> createRepeated() => $pb.PbList<FieldDevice_TrafficSignal>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice_TrafficSignal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice_TrafficSignal>(create);
  static FieldDevice_TrafficSignal? _defaultInstance;

  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails get coreDetails => $_getN(0);
  @$pb.TagNumber(1)
  set coreDetails(FieldDevice_FieldDeviceCoreDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoreDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoreDetails() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_FieldDeviceCoreDetails ensureCoreDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  FieldDevice_TrafficSignal_TrafficSignalMode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(FieldDevice_TrafficSignal_TrafficSignalMode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => clearField(2);
}

enum FieldDevice_Device {
  arrowBoard, 
  camera, 
  dynamicMessageSign, 
  flashingBeacon, 
  hybridSign, 
  locationMarker, 
  trafficSensor, 
  trafficSignal, 
  notSet
}

class FieldDevice extends $pb.GeneratedMessage {
  factory FieldDevice({
    FieldDevice_ArrowBoard? arrowBoard,
    FieldDevice_Camera? camera,
    FieldDevice_DynamicMessageSign? dynamicMessageSign,
    FieldDevice_FlashingBeacon? flashingBeacon,
    FieldDevice_HybridSign? hybridSign,
    FieldDevice_LocationMarker? locationMarker,
    FieldDevice_TrafficSensor? trafficSensor,
    FieldDevice_TrafficSignal? trafficSignal,
    $fixnum.Int64? projectId,
    $fixnum.Int64? roadSectionId,
    $fixnum.Int64? activityAreaId,
    $core.Iterable<$3.PointGeometry>? geometry,
    $core.Iterable<$3.BoundingBox>? bbox,
  }) {
    final $result = create();
    if (arrowBoard != null) {
      $result.arrowBoard = arrowBoard;
    }
    if (camera != null) {
      $result.camera = camera;
    }
    if (dynamicMessageSign != null) {
      $result.dynamicMessageSign = dynamicMessageSign;
    }
    if (flashingBeacon != null) {
      $result.flashingBeacon = flashingBeacon;
    }
    if (hybridSign != null) {
      $result.hybridSign = hybridSign;
    }
    if (locationMarker != null) {
      $result.locationMarker = locationMarker;
    }
    if (trafficSensor != null) {
      $result.trafficSensor = trafficSensor;
    }
    if (trafficSignal != null) {
      $result.trafficSignal = trafficSignal;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (roadSectionId != null) {
      $result.roadSectionId = roadSectionId;
    }
    if (activityAreaId != null) {
      $result.activityAreaId = activityAreaId;
    }
    if (geometry != null) {
      $result.geometry.addAll(geometry);
    }
    if (bbox != null) {
      $result.bbox.addAll(bbox);
    }
    return $result;
  }
  FieldDevice._() : super();
  factory FieldDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FieldDevice_Device> _FieldDevice_DeviceByTag = {
    1 : FieldDevice_Device.arrowBoard,
    2 : FieldDevice_Device.camera,
    3 : FieldDevice_Device.dynamicMessageSign,
    4 : FieldDevice_Device.flashingBeacon,
    5 : FieldDevice_Device.hybridSign,
    6 : FieldDevice_Device.locationMarker,
    7 : FieldDevice_Device.trafficSensor,
    8 : FieldDevice_Device.trafficSignal,
    0 : FieldDevice_Device.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldDevice', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<FieldDevice_ArrowBoard>(1, _omitFieldNames ? '' : 'arrowBoard', subBuilder: FieldDevice_ArrowBoard.create)
    ..aOM<FieldDevice_Camera>(2, _omitFieldNames ? '' : 'camera', subBuilder: FieldDevice_Camera.create)
    ..aOM<FieldDevice_DynamicMessageSign>(3, _omitFieldNames ? '' : 'dynamicMessageSign', subBuilder: FieldDevice_DynamicMessageSign.create)
    ..aOM<FieldDevice_FlashingBeacon>(4, _omitFieldNames ? '' : 'flashingBeacon', subBuilder: FieldDevice_FlashingBeacon.create)
    ..aOM<FieldDevice_HybridSign>(5, _omitFieldNames ? '' : 'hybridSign', subBuilder: FieldDevice_HybridSign.create)
    ..aOM<FieldDevice_LocationMarker>(6, _omitFieldNames ? '' : 'locationMarker', subBuilder: FieldDevice_LocationMarker.create)
    ..aOM<FieldDevice_TrafficSensor>(7, _omitFieldNames ? '' : 'trafficSensor', subBuilder: FieldDevice_TrafficSensor.create)
    ..aOM<FieldDevice_TrafficSignal>(8, _omitFieldNames ? '' : 'trafficSignal', subBuilder: FieldDevice_TrafficSignal.create)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'projectId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, _omitFieldNames ? '' : 'roadSectionId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, _omitFieldNames ? '' : 'activityAreaId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$3.PointGeometry>(12, _omitFieldNames ? '' : 'geometry', $pb.PbFieldType.PM, subBuilder: $3.PointGeometry.create)
    ..pc<$3.BoundingBox>(13, _omitFieldNames ? '' : 'bbox', $pb.PbFieldType.PM, subBuilder: $3.BoundingBox.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldDevice clone() => FieldDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldDevice copyWith(void Function(FieldDevice) updates) => super.copyWith((message) => updates(message as FieldDevice)) as FieldDevice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldDevice create() => FieldDevice._();
  FieldDevice createEmptyInstance() => create();
  static $pb.PbList<FieldDevice> createRepeated() => $pb.PbList<FieldDevice>();
  @$core.pragma('dart2js:noInline')
  static FieldDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldDevice>(create);
  static FieldDevice? _defaultInstance;

  FieldDevice_Device whichDevice() => _FieldDevice_DeviceByTag[$_whichOneof(0)]!;
  void clearDevice() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FieldDevice_ArrowBoard get arrowBoard => $_getN(0);
  @$pb.TagNumber(1)
  set arrowBoard(FieldDevice_ArrowBoard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArrowBoard() => $_has(0);
  @$pb.TagNumber(1)
  void clearArrowBoard() => clearField(1);
  @$pb.TagNumber(1)
  FieldDevice_ArrowBoard ensureArrowBoard() => $_ensure(0);

  @$pb.TagNumber(2)
  FieldDevice_Camera get camera => $_getN(1);
  @$pb.TagNumber(2)
  set camera(FieldDevice_Camera v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCamera() => $_has(1);
  @$pb.TagNumber(2)
  void clearCamera() => clearField(2);
  @$pb.TagNumber(2)
  FieldDevice_Camera ensureCamera() => $_ensure(1);

  @$pb.TagNumber(3)
  FieldDevice_DynamicMessageSign get dynamicMessageSign => $_getN(2);
  @$pb.TagNumber(3)
  set dynamicMessageSign(FieldDevice_DynamicMessageSign v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDynamicMessageSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearDynamicMessageSign() => clearField(3);
  @$pb.TagNumber(3)
  FieldDevice_DynamicMessageSign ensureDynamicMessageSign() => $_ensure(2);

  @$pb.TagNumber(4)
  FieldDevice_FlashingBeacon get flashingBeacon => $_getN(3);
  @$pb.TagNumber(4)
  set flashingBeacon(FieldDevice_FlashingBeacon v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFlashingBeacon() => $_has(3);
  @$pb.TagNumber(4)
  void clearFlashingBeacon() => clearField(4);
  @$pb.TagNumber(4)
  FieldDevice_FlashingBeacon ensureFlashingBeacon() => $_ensure(3);

  @$pb.TagNumber(5)
  FieldDevice_HybridSign get hybridSign => $_getN(4);
  @$pb.TagNumber(5)
  set hybridSign(FieldDevice_HybridSign v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHybridSign() => $_has(4);
  @$pb.TagNumber(5)
  void clearHybridSign() => clearField(5);
  @$pb.TagNumber(5)
  FieldDevice_HybridSign ensureHybridSign() => $_ensure(4);

  @$pb.TagNumber(6)
  FieldDevice_LocationMarker get locationMarker => $_getN(5);
  @$pb.TagNumber(6)
  set locationMarker(FieldDevice_LocationMarker v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocationMarker() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocationMarker() => clearField(6);
  @$pb.TagNumber(6)
  FieldDevice_LocationMarker ensureLocationMarker() => $_ensure(5);

  @$pb.TagNumber(7)
  FieldDevice_TrafficSensor get trafficSensor => $_getN(6);
  @$pb.TagNumber(7)
  set trafficSensor(FieldDevice_TrafficSensor v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTrafficSensor() => $_has(6);
  @$pb.TagNumber(7)
  void clearTrafficSensor() => clearField(7);
  @$pb.TagNumber(7)
  FieldDevice_TrafficSensor ensureTrafficSensor() => $_ensure(6);

  @$pb.TagNumber(8)
  FieldDevice_TrafficSignal get trafficSignal => $_getN(7);
  @$pb.TagNumber(8)
  set trafficSignal(FieldDevice_TrafficSignal v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasTrafficSignal() => $_has(7);
  @$pb.TagNumber(8)
  void clearTrafficSignal() => clearField(8);
  @$pb.TagNumber(8)
  FieldDevice_TrafficSignal ensureTrafficSignal() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get projectId => $_getI64(8);
  @$pb.TagNumber(9)
  set projectId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasProjectId() => $_has(8);
  @$pb.TagNumber(9)
  void clearProjectId() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get roadSectionId => $_getI64(9);
  @$pb.TagNumber(10)
  set roadSectionId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoadSectionId() => $_has(9);
  @$pb.TagNumber(10)
  void clearRoadSectionId() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get activityAreaId => $_getI64(10);
  @$pb.TagNumber(11)
  set activityAreaId($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasActivityAreaId() => $_has(10);
  @$pb.TagNumber(11)
  void clearActivityAreaId() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$3.PointGeometry> get geometry => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$3.BoundingBox> get bbox => $_getList(12);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
