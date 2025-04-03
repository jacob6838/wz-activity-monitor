//
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;
import 'project.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'project.pbenum.dart';

class Project extends $pb.GeneratedMessage {
  factory Project({
    $core.String? name,
    $core.String? description,
    Project_ProjectActiveStatus? activeStatus,
    $1.Timestamp? creationDate,
    $1.Timestamp? startDate,
    $1.Timestamp? endDate,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (activeStatus != null) {
      $result.activeStatus = activeStatus;
    }
    if (creationDate != null) {
      $result.creationDate = creationDate;
    }
    if (startDate != null) {
      $result.startDate = startDate;
    }
    if (endDate != null) {
      $result.endDate = endDate;
    }
    return $result;
  }
  Project._() : super();
  factory Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Project', package: const $pb.PackageName(_omitMessageNames ? '' : 'datahub.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..e<Project_ProjectActiveStatus>(3, _omitFieldNames ? '' : 'activeStatus', $pb.PbFieldType.OE, defaultOrMaker: Project_ProjectActiveStatus.PROJECT_ACTIVE_STATUS_ACTIVE, valueOf: Project_ProjectActiveStatus.valueOf, enumValues: Project_ProjectActiveStatus.values)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'creationDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'startDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'endDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Project clone() => Project()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project)) as Project;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Project create() => Project._();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  @$core.pragma('dart2js:noInline')
  static Project getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Project>(create);
  static Project? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  Project_ProjectActiveStatus get activeStatus => $_getN(2);
  @$pb.TagNumber(3)
  set activeStatus(Project_ProjectActiveStatus v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActiveStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get creationDate => $_getN(3);
  @$pb.TagNumber(4)
  set creationDate($1.Timestamp v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreationDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreationDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreationDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Timestamp get startDate => $_getN(4);
  @$pb.TagNumber(5)
  set startDate($1.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartDate() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureStartDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get endDate => $_getN(5);
  @$pb.TagNumber(6)
  set endDate($1.Timestamp v) { $_setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndDate() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureEndDate() => $_ensure(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
