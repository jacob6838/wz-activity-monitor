//
//  Generated code. Do not modify.
//  source: curb_zones.proto
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
import 'curb_zones.pbenum.dart';

export 'curb_zones.pbenum.dart';

class CurbZone extends $pb.GeneratedMessage {
  factory CurbZone({
    $core.String? curbZoneId,
    $3.PolygonGeometry? geometry,
    $core.Iterable<$core.String>? curbPolicyIds,
    $core.Iterable<PreviousPolicy>? prevPolicies,
    $fixnum.Int64? publishedDate,
    $fixnum.Int64? lastUpdatedDate,
    $core.Iterable<$core.String>? prevCurbZoneIds,
    $fixnum.Int64? startDate,
    $fixnum.Int64? endDate,
    $core.Iterable<LocationReference>? locationReferences,
    $core.String? name,
    $core.String? userZoneId,
    $core.String? streetName,
    $core.String? crossStreetStartName,
    $core.String? crossStreetEndName,
    $core.int? length,
    $core.Iterable<$core.int>? availableSpaceLengths,
    $fixnum.Int64? availabilityTime,
    $core.int? width,
    $core.String? parkingAngle,
    $core.int? numSpaces,
    $core.String? streetSide,
    $core.bool? median,
    $core.bool? entireRoadway,
    $core.Iterable<$core.String>? curbAreaIds,
    $core.Iterable<$core.String>? curbSpaceIds,
  }) {
    final $result = create();
    if (curbZoneId != null) {
      $result.curbZoneId = curbZoneId;
    }
    if (geometry != null) {
      $result.geometry = geometry;
    }
    if (curbPolicyIds != null) {
      $result.curbPolicyIds.addAll(curbPolicyIds);
    }
    if (prevPolicies != null) {
      $result.prevPolicies.addAll(prevPolicies);
    }
    if (publishedDate != null) {
      $result.publishedDate = publishedDate;
    }
    if (lastUpdatedDate != null) {
      $result.lastUpdatedDate = lastUpdatedDate;
    }
    if (prevCurbZoneIds != null) {
      $result.prevCurbZoneIds.addAll(prevCurbZoneIds);
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    if (locationReferences != null) {
      $result.locationReferences.addAll(locationReferences);
    }
    if (name != null) {
      $result.name = name;
    }
    if (userZoneId != null) {
      $result.userZoneId = userZoneId;
    }
    if (streetName != null) {
      $result.streetName = streetName;
    }
    if (crossStreetStartName != null) {
      $result.crossStreetStartName = crossStreetStartName;
    }
    if (crossStreetEndName != null) {
      $result.crossStreetEndName = crossStreetEndName;
    }
    if (length != null) {
      $result.length = length;
    }
    if (availableSpaceLengths != null) {
      $result.availableSpaceLengths.addAll(availableSpaceLengths);
    }
    if (availabilityTime != null) {
      $result.availabilityTime = availabilityTime;
    }
    if (width != null) {
      $result.width = width;
    }
    if (parkingAngle != null) {
      $result.parkingAngle = parkingAngle;
    }
    if (numSpaces != null) {
      $result.numSpaces = numSpaces;
    }
    if (streetSide != null) {
      $result.streetSide = streetSide;
    }
    if (median != null) {
      $result.median = median;
    }
    if (entireRoadway != null) {
      $result.entireRoadway = entireRoadway;
    }
    if (curbAreaIds != null) {
      $result.curbAreaIds.addAll(curbAreaIds);
    }
    if (curbSpaceIds != null) {
      $result.curbSpaceIds.addAll(curbSpaceIds);
    }
    return $result;
  }
  CurbZone._() : super();
  factory CurbZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurbZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurbZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'curbZoneId')
    ..aOM<$3.PolygonGeometry>(2, _omitFieldNames ? '' : 'geometry', subBuilder: $3.PolygonGeometry.create)
    ..pPS(3, _omitFieldNames ? '' : 'curbPolicyIds')
    ..pc<PreviousPolicy>(4, _omitFieldNames ? '' : 'prevPolicies', $pb.PbFieldType.PM, subBuilder: PreviousPolicy.create)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'publishedDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'lastUpdatedDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(7, _omitFieldNames ? '' : 'prevCurbZoneIds')
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'startDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'endDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<LocationReference>(10, _omitFieldNames ? '' : 'locationReferences', $pb.PbFieldType.PM, subBuilder: LocationReference.create)
    ..aOS(11, _omitFieldNames ? '' : 'name')
    ..aOS(12, _omitFieldNames ? '' : 'userZoneId')
    ..aOS(13, _omitFieldNames ? '' : 'streetName')
    ..aOS(14, _omitFieldNames ? '' : 'crossStreetStartName')
    ..aOS(15, _omitFieldNames ? '' : 'crossStreetEndName')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'length', $pb.PbFieldType.O3)
    ..p<$core.int>(17, _omitFieldNames ? '' : 'availableSpaceLengths', $pb.PbFieldType.K3)
    ..a<$fixnum.Int64>(18, _omitFieldNames ? '' : 'availabilityTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..aOS(20, _omitFieldNames ? '' : 'parkingAngle')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'numSpaces', $pb.PbFieldType.O3)
    ..aOS(22, _omitFieldNames ? '' : 'streetSide')
    ..aOB(23, _omitFieldNames ? '' : 'median')
    ..aOB(24, _omitFieldNames ? '' : 'entireRoadway')
    ..pPS(25, _omitFieldNames ? '' : 'curbAreaIds')
    ..pPS(26, _omitFieldNames ? '' : 'curbSpaceIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurbZone clone() => CurbZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurbZone copyWith(void Function(CurbZone) updates) => super.copyWith((message) => updates(message as CurbZone)) as CurbZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurbZone create() => CurbZone._();
  CurbZone createEmptyInstance() => create();
  static $pb.PbList<CurbZone> createRepeated() => $pb.PbList<CurbZone>();
  @$core.pragma('dart2js:noInline')
  static CurbZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurbZone>(create);
  static CurbZone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get curbZoneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set curbZoneId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurbZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurbZoneId() => clearField(1);

  @$pb.TagNumber(2)
  $3.PolygonGeometry get geometry => $_getN(1);
  @$pb.TagNumber(2)
  set geometry($3.PolygonGeometry v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeometry() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeometry() => clearField(2);
  @$pb.TagNumber(2)
  $3.PolygonGeometry ensureGeometry() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get curbPolicyIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<PreviousPolicy> get prevPolicies => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get publishedDate => $_getI64(4);
  @$pb.TagNumber(5)
  set publishedDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublishedDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublishedDate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lastUpdatedDate => $_getI64(5);
  @$pb.TagNumber(6)
  set lastUpdatedDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastUpdatedDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastUpdatedDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get prevCurbZoneIds => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get startDate => $_getI64(7);
  @$pb.TagNumber(8)
  set startDate($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartDate() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get endDate => $_getI64(8);
  @$pb.TagNumber(9)
  set endDate($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasEndDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearEndDate() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<LocationReference> get locationReferences => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get name => $_getSZ(10);
  @$pb.TagNumber(11)
  set name($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasName() => $_has(10);
  @$pb.TagNumber(11)
  void clearName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get userZoneId => $_getSZ(11);
  @$pb.TagNumber(12)
  set userZoneId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUserZoneId() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserZoneId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get streetName => $_getSZ(12);
  @$pb.TagNumber(13)
  set streetName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasStreetName() => $_has(12);
  @$pb.TagNumber(13)
  void clearStreetName() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get crossStreetStartName => $_getSZ(13);
  @$pb.TagNumber(14)
  set crossStreetStartName($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCrossStreetStartName() => $_has(13);
  @$pb.TagNumber(14)
  void clearCrossStreetStartName() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get crossStreetEndName => $_getSZ(14);
  @$pb.TagNumber(15)
  set crossStreetEndName($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCrossStreetEndName() => $_has(14);
  @$pb.TagNumber(15)
  void clearCrossStreetEndName() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get length => $_getIZ(15);
  @$pb.TagNumber(16)
  set length($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLength() => $_has(15);
  @$pb.TagNumber(16)
  void clearLength() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get availableSpaceLengths => $_getList(16);

  @$pb.TagNumber(18)
  $fixnum.Int64 get availabilityTime => $_getI64(17);
  @$pb.TagNumber(18)
  set availabilityTime($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAvailabilityTime() => $_has(17);
  @$pb.TagNumber(18)
  void clearAvailabilityTime() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get width => $_getIZ(18);
  @$pb.TagNumber(19)
  set width($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasWidth() => $_has(18);
  @$pb.TagNumber(19)
  void clearWidth() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get parkingAngle => $_getSZ(19);
  @$pb.TagNumber(20)
  set parkingAngle($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasParkingAngle() => $_has(19);
  @$pb.TagNumber(20)
  void clearParkingAngle() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get numSpaces => $_getIZ(20);
  @$pb.TagNumber(21)
  set numSpaces($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasNumSpaces() => $_has(20);
  @$pb.TagNumber(21)
  void clearNumSpaces() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get streetSide => $_getSZ(21);
  @$pb.TagNumber(22)
  set streetSide($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasStreetSide() => $_has(21);
  @$pb.TagNumber(22)
  void clearStreetSide() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get median => $_getBF(22);
  @$pb.TagNumber(23)
  set median($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasMedian() => $_has(22);
  @$pb.TagNumber(23)
  void clearMedian() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get entireRoadway => $_getBF(23);
  @$pb.TagNumber(24)
  set entireRoadway($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasEntireRoadway() => $_has(23);
  @$pb.TagNumber(24)
  void clearEntireRoadway() => clearField(24);

  @$pb.TagNumber(25)
  $core.List<$core.String> get curbAreaIds => $_getList(24);

  @$pb.TagNumber(26)
  $core.List<$core.String> get curbSpaceIds => $_getList(25);
}

class PreviousPolicy extends $pb.GeneratedMessage {
  factory PreviousPolicy({
    $core.Iterable<$core.String>? curbPolicyIds,
    $fixnum.Int64? startDate,
    $fixnum.Int64? endDate,
  }) {
    final $result = create();
    if (curbPolicyIds != null) {
      $result.curbPolicyIds.addAll(curbPolicyIds);
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    return $result;
  }
  PreviousPolicy._() : super();
  factory PreviousPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreviousPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreviousPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'curbPolicyIds')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'startDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'endDate', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreviousPolicy clone() => PreviousPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreviousPolicy copyWith(void Function(PreviousPolicy) updates) => super.copyWith((message) => updates(message as PreviousPolicy)) as PreviousPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreviousPolicy create() => PreviousPolicy._();
  PreviousPolicy createEmptyInstance() => create();
  static $pb.PbList<PreviousPolicy> createRepeated() => $pb.PbList<PreviousPolicy>();
  @$core.pragma('dart2js:noInline')
  static PreviousPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreviousPolicy>(create);
  static PreviousPolicy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get curbPolicyIds => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get startDate => $_getI64(1);
  @$pb.TagNumber(2)
  set startDate($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartDate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endDate => $_getI64(2);
  @$pb.TagNumber(3)
  set endDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndDate() => clearField(3);
}

class LocationReference extends $pb.GeneratedMessage {
  factory LocationReference({
    $core.String? source,
    $core.String? refId,
    $core.int? start,
    $core.int? end,
    LocationReference_LocationReferenceRoadwaySide? side,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (refId != null) {
      $result.refId = refId;
    }
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    if (side != null) {
      $result.side = side;
    }
    return $result;
  }
  LocationReference._() : super();
  factory LocationReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'source')
    ..aOS(2, _omitFieldNames ? '' : 'refId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'start', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'end', $pb.PbFieldType.O3)
    ..e<LocationReference_LocationReferenceRoadwaySide>(5, _omitFieldNames ? '' : 'side', $pb.PbFieldType.OE, defaultOrMaker: LocationReference_LocationReferenceRoadwaySide.LOCATION_REFERENCE_ROADWAY_SIDE_LEFT, valueOf: LocationReference_LocationReferenceRoadwaySide.valueOf, enumValues: LocationReference_LocationReferenceRoadwaySide.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationReference clone() => LocationReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationReference copyWith(void Function(LocationReference) updates) => super.copyWith((message) => updates(message as LocationReference)) as LocationReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationReference create() => LocationReference._();
  LocationReference createEmptyInstance() => create();
  static $pb.PbList<LocationReference> createRepeated() => $pb.PbList<LocationReference>();
  @$core.pragma('dart2js:noInline')
  static LocationReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationReference>(create);
  static LocationReference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get source => $_getSZ(0);
  @$pb.TagNumber(1)
  set source($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refId => $_getSZ(1);
  @$pb.TagNumber(2)
  set refId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get start => $_getIZ(2);
  @$pb.TagNumber(3)
  set start($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearStart() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get end => $_getIZ(3);
  @$pb.TagNumber(4)
  set end($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnd() => clearField(4);

  @$pb.TagNumber(5)
  LocationReference_LocationReferenceRoadwaySide get side => $_getN(4);
  @$pb.TagNumber(5)
  set side(LocationReference_LocationReferenceRoadwaySide v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSide() => $_has(4);
  @$pb.TagNumber(5)
  void clearSide() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
