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

class Project_ProjectActiveStatus extends $pb.ProtobufEnum {
  static const Project_ProjectActiveStatus PROJECT_ACTIVE_STATUS_ACTIVE = Project_ProjectActiveStatus._(0, _omitEnumNames ? '' : 'PROJECT_ACTIVE_STATUS_ACTIVE');
  static const Project_ProjectActiveStatus PROJECT_ACTIVE_STATUS_SUSPENDED = Project_ProjectActiveStatus._(1, _omitEnumNames ? '' : 'PROJECT_ACTIVE_STATUS_SUSPENDED');

  static const $core.List<Project_ProjectActiveStatus> values = <Project_ProjectActiveStatus> [
    PROJECT_ACTIVE_STATUS_ACTIVE,
    PROJECT_ACTIVE_STATUS_SUSPENDED,
  ];

  static final $core.Map<$core.int, Project_ProjectActiveStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Project_ProjectActiveStatus? valueOf($core.int value) => _byValue[value];

  const Project_ProjectActiveStatus._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
