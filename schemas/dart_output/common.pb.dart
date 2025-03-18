//
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/type/latlng.pb.dart' as $0;

export 'common.pbenum.dart';

enum Geometry_Geometry {
  point, 
  multiPoint, 
  lineStrings, 
  polygons, 
  notSet
}

/// ------------ GeoJSON Types ------------
class Geometry extends $pb.GeneratedMessage {
  factory Geometry({
    $0.LatLng? point,
    MultiPointGeometry? multiPoint,
    MultiLineStringGeometry? lineStrings,
    MultiPolygonGeometry? polygons,
  }) {
    final $result = create();
    if (point != null) {
      $result.point = point;
    }
    if (multiPoint != null) {
      $result.multiPoint = multiPoint;
    }
    if (lineStrings != null) {
      $result.lineStrings = lineStrings;
    }
    if (polygons != null) {
      $result.polygons = polygons;
    }
    return $result;
  }
  Geometry._() : super();
  factory Geometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Geometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Geometry_Geometry> _Geometry_GeometryByTag = {
    1 : Geometry_Geometry.point,
    2 : Geometry_Geometry.multiPoint,
    3 : Geometry_Geometry.lineStrings,
    4 : Geometry_Geometry.polygons,
    0 : Geometry_Geometry.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Geometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$0.LatLng>(1, _omitFieldNames ? '' : 'point', subBuilder: $0.LatLng.create)
    ..aOM<MultiPointGeometry>(2, _omitFieldNames ? '' : 'multiPoint', subBuilder: MultiPointGeometry.create)
    ..aOM<MultiLineStringGeometry>(3, _omitFieldNames ? '' : 'lineStrings', subBuilder: MultiLineStringGeometry.create)
    ..aOM<MultiPolygonGeometry>(4, _omitFieldNames ? '' : 'polygons', subBuilder: MultiPolygonGeometry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Geometry clone() => Geometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Geometry copyWith(void Function(Geometry) updates) => super.copyWith((message) => updates(message as Geometry)) as Geometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Geometry create() => Geometry._();
  Geometry createEmptyInstance() => create();
  static $pb.PbList<Geometry> createRepeated() => $pb.PbList<Geometry>();
  @$core.pragma('dart2js:noInline')
  static Geometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Geometry>(create);
  static Geometry? _defaultInstance;

  Geometry_Geometry whichGeometry() => _Geometry_GeometryByTag[$_whichOneof(0)]!;
  void clearGeometry() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.LatLng get point => $_getN(0);
  @$pb.TagNumber(1)
  set point($0.LatLng v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPoint() => clearField(1);
  @$pb.TagNumber(1)
  $0.LatLng ensurePoint() => $_ensure(0);

  @$pb.TagNumber(2)
  MultiPointGeometry get multiPoint => $_getN(1);
  @$pb.TagNumber(2)
  set multiPoint(MultiPointGeometry v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiPoint() => clearField(2);
  @$pb.TagNumber(2)
  MultiPointGeometry ensureMultiPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  MultiLineStringGeometry get lineStrings => $_getN(2);
  @$pb.TagNumber(3)
  set lineStrings(MultiLineStringGeometry v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLineStrings() => $_has(2);
  @$pb.TagNumber(3)
  void clearLineStrings() => clearField(3);
  @$pb.TagNumber(3)
  MultiLineStringGeometry ensureLineStrings() => $_ensure(2);

  @$pb.TagNumber(4)
  MultiPolygonGeometry get polygons => $_getN(3);
  @$pb.TagNumber(4)
  set polygons(MultiPolygonGeometry v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPolygons() => $_has(3);
  @$pb.TagNumber(4)
  void clearPolygons() => clearField(4);
  @$pb.TagNumber(4)
  MultiPolygonGeometry ensurePolygons() => $_ensure(3);
}

class PointGeometry extends $pb.GeneratedMessage {
  factory PointGeometry({
    $0.LatLng? coordinates,
  }) {
    final $result = create();
    if (coordinates != null) {
      $result.coordinates = coordinates;
    }
    return $result;
  }
  PointGeometry._() : super();
  factory PointGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$0.LatLng>(1, _omitFieldNames ? '' : 'coordinates', subBuilder: $0.LatLng.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointGeometry clone() => PointGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointGeometry copyWith(void Function(PointGeometry) updates) => super.copyWith((message) => updates(message as PointGeometry)) as PointGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointGeometry create() => PointGeometry._();
  PointGeometry createEmptyInstance() => create();
  static $pb.PbList<PointGeometry> createRepeated() => $pb.PbList<PointGeometry>();
  @$core.pragma('dart2js:noInline')
  static PointGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointGeometry>(create);
  static PointGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  $0.LatLng get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates($0.LatLng v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => clearField(1);
  @$pb.TagNumber(1)
  $0.LatLng ensureCoordinates() => $_ensure(0);
}

class MultiPolygonGeometry extends $pb.GeneratedMessage {
  factory MultiPolygonGeometry({
    $core.Iterable<PolygonGeometry>? polygons,
  }) {
    final $result = create();
    if (polygons != null) {
      $result.polygons.addAll(polygons);
    }
    return $result;
  }
  MultiPolygonGeometry._() : super();
  factory MultiPolygonGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPolygonGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPolygonGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pc<PolygonGeometry>(1, _omitFieldNames ? '' : 'polygons', $pb.PbFieldType.PM, subBuilder: PolygonGeometry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPolygonGeometry clone() => MultiPolygonGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPolygonGeometry copyWith(void Function(MultiPolygonGeometry) updates) => super.copyWith((message) => updates(message as MultiPolygonGeometry)) as MultiPolygonGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPolygonGeometry create() => MultiPolygonGeometry._();
  MultiPolygonGeometry createEmptyInstance() => create();
  static $pb.PbList<MultiPolygonGeometry> createRepeated() => $pb.PbList<MultiPolygonGeometry>();
  @$core.pragma('dart2js:noInline')
  static MultiPolygonGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPolygonGeometry>(create);
  static MultiPolygonGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PolygonGeometry> get polygons => $_getList(0);
}

class PolygonGeometry extends $pb.GeneratedMessage {
  factory PolygonGeometry({
    PointArray? coordinates,
  }) {
    final $result = create();
    if (coordinates != null) {
      $result.coordinates = coordinates;
    }
    return $result;
  }
  PolygonGeometry._() : super();
  factory PolygonGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolygonGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PolygonGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<PointArray>(1, _omitFieldNames ? '' : 'coordinates', subBuilder: PointArray.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolygonGeometry clone() => PolygonGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolygonGeometry copyWith(void Function(PolygonGeometry) updates) => super.copyWith((message) => updates(message as PolygonGeometry)) as PolygonGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolygonGeometry create() => PolygonGeometry._();
  PolygonGeometry createEmptyInstance() => create();
  static $pb.PbList<PolygonGeometry> createRepeated() => $pb.PbList<PolygonGeometry>();
  @$core.pragma('dart2js:noInline')
  static PolygonGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolygonGeometry>(create);
  static PolygonGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  PointArray get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates(PointArray v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => clearField(1);
  @$pb.TagNumber(1)
  PointArray ensureCoordinates() => $_ensure(0);
}

class MultiLineStringGeometry extends $pb.GeneratedMessage {
  factory MultiLineStringGeometry({
    $core.Iterable<LineStringGeometry>? lineStrings,
  }) {
    final $result = create();
    if (lineStrings != null) {
      $result.lineStrings.addAll(lineStrings);
    }
    return $result;
  }
  MultiLineStringGeometry._() : super();
  factory MultiLineStringGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiLineStringGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiLineStringGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pc<LineStringGeometry>(1, _omitFieldNames ? '' : 'lineStrings', $pb.PbFieldType.PM, subBuilder: LineStringGeometry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiLineStringGeometry clone() => MultiLineStringGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiLineStringGeometry copyWith(void Function(MultiLineStringGeometry) updates) => super.copyWith((message) => updates(message as MultiLineStringGeometry)) as MultiLineStringGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiLineStringGeometry create() => MultiLineStringGeometry._();
  MultiLineStringGeometry createEmptyInstance() => create();
  static $pb.PbList<MultiLineStringGeometry> createRepeated() => $pb.PbList<MultiLineStringGeometry>();
  @$core.pragma('dart2js:noInline')
  static MultiLineStringGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiLineStringGeometry>(create);
  static MultiLineStringGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LineStringGeometry> get lineStrings => $_getList(0);
}

class LineStringGeometry extends $pb.GeneratedMessage {
  factory LineStringGeometry({
    PointArray? coordinates,
    $core.double? lineWidthM,
  }) {
    final $result = create();
    if (coordinates != null) {
      $result.coordinates = coordinates;
    }
    if (lineWidthM != null) {
      $result.lineWidthM = lineWidthM;
    }
    return $result;
  }
  LineStringGeometry._() : super();
  factory LineStringGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LineStringGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LineStringGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<PointArray>(1, _omitFieldNames ? '' : 'coordinates', subBuilder: PointArray.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'lineWidthM', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LineStringGeometry clone() => LineStringGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LineStringGeometry copyWith(void Function(LineStringGeometry) updates) => super.copyWith((message) => updates(message as LineStringGeometry)) as LineStringGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LineStringGeometry create() => LineStringGeometry._();
  LineStringGeometry createEmptyInstance() => create();
  static $pb.PbList<LineStringGeometry> createRepeated() => $pb.PbList<LineStringGeometry>();
  @$core.pragma('dart2js:noInline')
  static LineStringGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LineStringGeometry>(create);
  static LineStringGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  PointArray get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates(PointArray v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => clearField(1);
  @$pb.TagNumber(1)
  PointArray ensureCoordinates() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get lineWidthM => $_getN(1);
  @$pb.TagNumber(2)
  set lineWidthM($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLineWidthM() => $_has(1);
  @$pb.TagNumber(2)
  void clearLineWidthM() => clearField(2);
}

class MultiPointGeometry extends $pb.GeneratedMessage {
  factory MultiPointGeometry({
    $core.Iterable<$0.LatLng>? coordinates,
  }) {
    final $result = create();
    if (coordinates != null) {
      $result.coordinates.addAll(coordinates);
    }
    return $result;
  }
  MultiPointGeometry._() : super();
  factory MultiPointGeometry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiPointGeometry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MultiPointGeometry', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pc<$0.LatLng>(1, _omitFieldNames ? '' : 'coordinates', $pb.PbFieldType.PM, subBuilder: $0.LatLng.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiPointGeometry clone() => MultiPointGeometry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiPointGeometry copyWith(void Function(MultiPointGeometry) updates) => super.copyWith((message) => updates(message as MultiPointGeometry)) as MultiPointGeometry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultiPointGeometry create() => MultiPointGeometry._();
  MultiPointGeometry createEmptyInstance() => create();
  static $pb.PbList<MultiPointGeometry> createRepeated() => $pb.PbList<MultiPointGeometry>();
  @$core.pragma('dart2js:noInline')
  static MultiPointGeometry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiPointGeometry>(create);
  static MultiPointGeometry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.LatLng> get coordinates => $_getList(0);
}

class PointArray extends $pb.GeneratedMessage {
  factory PointArray({
    $core.Iterable<$0.LatLng>? coordinates,
  }) {
    final $result = create();
    if (coordinates != null) {
      $result.coordinates.addAll(coordinates);
    }
    return $result;
  }
  PointArray._() : super();
  factory PointArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..pc<$0.LatLng>(1, _omitFieldNames ? '' : 'coordinates', $pb.PbFieldType.PM, subBuilder: $0.LatLng.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointArray clone() => PointArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointArray copyWith(void Function(PointArray) updates) => super.copyWith((message) => updates(message as PointArray)) as PointArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointArray create() => PointArray._();
  PointArray createEmptyInstance() => create();
  static $pb.PbList<PointArray> createRepeated() => $pb.PbList<PointArray>();
  @$core.pragma('dart2js:noInline')
  static PointArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointArray>(create);
  static PointArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.LatLng> get coordinates => $_getList(0);
}

class BoundingBox extends $pb.GeneratedMessage {
  factory BoundingBox({
    $0.LatLng? lowerLeft,
    $0.LatLng? upperRight,
  }) {
    final $result = create();
    if (lowerLeft != null) {
      $result.lowerLeft = lowerLeft;
    }
    if (upperRight != null) {
      $result.upperRight = upperRight;
    }
    return $result;
  }
  BoundingBox._() : super();
  factory BoundingBox.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoundingBox.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoundingBox', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOM<$0.LatLng>(1, _omitFieldNames ? '' : 'lowerLeft', subBuilder: $0.LatLng.create)
    ..aOM<$0.LatLng>(2, _omitFieldNames ? '' : 'upperRight', subBuilder: $0.LatLng.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoundingBox clone() => BoundingBox()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoundingBox copyWith(void Function(BoundingBox) updates) => super.copyWith((message) => updates(message as BoundingBox)) as BoundingBox;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoundingBox create() => BoundingBox._();
  BoundingBox createEmptyInstance() => create();
  static $pb.PbList<BoundingBox> createRepeated() => $pb.PbList<BoundingBox>();
  @$core.pragma('dart2js:noInline')
  static BoundingBox getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoundingBox>(create);
  static BoundingBox? _defaultInstance;

  @$pb.TagNumber(1)
  $0.LatLng get lowerLeft => $_getN(0);
  @$pb.TagNumber(1)
  set lowerLeft($0.LatLng v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLowerLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLowerLeft() => clearField(1);
  @$pb.TagNumber(1)
  $0.LatLng ensureLowerLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.LatLng get upperRight => $_getN(1);
  @$pb.TagNumber(2)
  set upperRight($0.LatLng v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpperRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpperRight() => clearField(2);
  @$pb.TagNumber(2)
  $0.LatLng ensureUpperRight() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
