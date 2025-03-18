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

import 'package:protobuf/protobuf.dart' as $pb;

class LocationReference_LocationReferenceRoadwaySide extends $pb.ProtobufEnum {
  static const LocationReference_LocationReferenceRoadwaySide LOCATION_REFERENCE_ROADWAY_SIDE_LEFT = LocationReference_LocationReferenceRoadwaySide._(0, _omitEnumNames ? '' : 'LOCATION_REFERENCE_ROADWAY_SIDE_LEFT');
  static const LocationReference_LocationReferenceRoadwaySide LOCATION_REFERENCE_ROADWAY_SIDE_RIGHT = LocationReference_LocationReferenceRoadwaySide._(1, _omitEnumNames ? '' : 'LOCATION_REFERENCE_ROADWAY_SIDE_RIGHT');

  static const $core.List<LocationReference_LocationReferenceRoadwaySide> values = <LocationReference_LocationReferenceRoadwaySide> [
    LOCATION_REFERENCE_ROADWAY_SIDE_LEFT,
    LOCATION_REFERENCE_ROADWAY_SIDE_RIGHT,
  ];

  static final $core.Map<$core.int, LocationReference_LocationReferenceRoadwaySide> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocationReference_LocationReferenceRoadwaySide? valueOf($core.int value) => _byValue[value];

  const LocationReference_LocationReferenceRoadwaySide._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
