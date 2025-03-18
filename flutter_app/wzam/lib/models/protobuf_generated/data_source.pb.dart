//
//  Generated code. Do not modify.
//  source: data_source.proto
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

class DataSource extends $pb.GeneratedMessage {
  factory DataSource({
    $core.String? organizationName,
    $core.String? contactName,
    $core.String? contactEmail,
    $core.int? updateFrequencyMs,
  }) {
    final $result = create();
    if (organizationName != null) {
      $result.organizationName = organizationName;
    }
    if (contactName != null) {
      $result.contactName = contactName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (updateFrequencyMs != null) {
      $result.updateFrequencyMs = updateFrequencyMs;
    }
    return $result;
  }
  DataSource._() : super();
  factory DataSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'organizationName')
    ..aOS(2, _omitFieldNames ? '' : 'contactName')
    ..aOS(3, _omitFieldNames ? '' : 'contactEmail')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'updateFrequencyMs', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSource clone() => DataSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSource copyWith(void Function(DataSource) updates) => super.copyWith((message) => updates(message as DataSource)) as DataSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSource create() => DataSource._();
  DataSource createEmptyInstance() => create();
  static $pb.PbList<DataSource> createRepeated() => $pb.PbList<DataSource>();
  @$core.pragma('dart2js:noInline')
  static DataSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSource>(create);
  static DataSource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationName => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contactName => $_getSZ(1);
  @$pb.TagNumber(2)
  set contactName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContactName() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contactEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set contactEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContactEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearContactEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get updateFrequencyMs => $_getIZ(3);
  @$pb.TagNumber(4)
  set updateFrequencyMs($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateFrequencyMs() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateFrequencyMs() => clearField(4);
}

class DataSourceCreated extends $pb.GeneratedMessage {
  factory DataSourceCreated({
    $fixnum.Int64? id,
    DataSource? dataSource,
    $1.Timestamp? createdTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (dataSource != null) {
      $result.dataSource = dataSource;
    }
    if (createdTime != null) {
      $result.createdTime = createdTime;
    }
    return $result;
  }
  DataSourceCreated._() : super();
  factory DataSourceCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceCreated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<DataSource>(2, _omitFieldNames ? '' : 'dataSource', subBuilder: DataSource.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'createdTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceCreated clone() => DataSourceCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceCreated copyWith(void Function(DataSourceCreated) updates) => super.copyWith((message) => updates(message as DataSourceCreated)) as DataSourceCreated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceCreated create() => DataSourceCreated._();
  DataSourceCreated createEmptyInstance() => create();
  static $pb.PbList<DataSourceCreated> createRepeated() => $pb.PbList<DataSourceCreated>();
  @$core.pragma('dart2js:noInline')
  static DataSourceCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceCreated>(create);
  static DataSourceCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  DataSource get dataSource => $_getN(1);
  @$pb.TagNumber(2)
  set dataSource(DataSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataSource() => clearField(2);
  @$pb.TagNumber(2)
  DataSource ensureDataSource() => $_ensure(1);

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

class DataSourceUpdated extends $pb.GeneratedMessage {
  factory DataSourceUpdated({
    $fixnum.Int64? id,
    DataSource? dataSource,
    $1.Timestamp? updatedTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (dataSource != null) {
      $result.dataSource = dataSource;
    }
    if (updatedTime != null) {
      $result.updatedTime = updatedTime;
    }
    return $result;
  }
  DataSourceUpdated._() : super();
  factory DataSourceUpdated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSourceUpdated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSourceUpdated', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<DataSource>(2, _omitFieldNames ? '' : 'dataSource', subBuilder: DataSource.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'updatedTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSourceUpdated clone() => DataSourceUpdated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSourceUpdated copyWith(void Function(DataSourceUpdated) updates) => super.copyWith((message) => updates(message as DataSourceUpdated)) as DataSourceUpdated;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSourceUpdated create() => DataSourceUpdated._();
  DataSourceUpdated createEmptyInstance() => create();
  static $pb.PbList<DataSourceUpdated> createRepeated() => $pb.PbList<DataSourceUpdated>();
  @$core.pragma('dart2js:noInline')
  static DataSourceUpdated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSourceUpdated>(create);
  static DataSourceUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  DataSource get dataSource => $_getN(1);
  @$pb.TagNumber(2)
  set dataSource(DataSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataSource() => clearField(2);
  @$pb.TagNumber(2)
  DataSource ensureDataSource() => $_ensure(1);

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
