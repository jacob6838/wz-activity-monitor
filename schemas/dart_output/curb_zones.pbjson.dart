//
//  Generated code. Do not modify.
//  source: curb_zones.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use curbZoneDescriptor instead')
const CurbZone$json = {
  '1': 'CurbZone',
  '2': [
    {'1': 'curb_zone_id', '3': 1, '4': 1, '5': 9, '10': 'curbZoneId'},
    {'1': 'geometry', '3': 2, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '10': 'geometry'},
    {'1': 'curb_policy_ids', '3': 3, '4': 3, '5': 9, '10': 'curbPolicyIds'},
    {'1': 'prev_policies', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.PreviousPolicy', '10': 'prevPolicies'},
    {'1': 'published_date', '3': 5, '4': 1, '5': 4, '10': 'publishedDate'},
    {'1': 'last_updated_date', '3': 6, '4': 1, '5': 4, '10': 'lastUpdatedDate'},
    {'1': 'prev_curb_zone_ids', '3': 7, '4': 3, '5': 9, '10': 'prevCurbZoneIds'},
    {'1': 'start_date', '3': 8, '4': 1, '5': 4, '10': 'startDate'},
    {'1': 'end_date', '3': 9, '4': 1, '5': 4, '9': 0, '10': 'endDate', '17': true},
    {'1': 'location_references', '3': 10, '4': 3, '5': 11, '6': '.datahub.v1.LocationReference', '10': 'locationReferences'},
    {'1': 'name', '3': 11, '4': 1, '5': 9, '9': 1, '10': 'name', '17': true},
    {'1': 'user_zone_id', '3': 12, '4': 1, '5': 9, '9': 2, '10': 'userZoneId', '17': true},
    {'1': 'street_name', '3': 13, '4': 1, '5': 9, '9': 3, '10': 'streetName', '17': true},
    {'1': 'cross_street_start_name', '3': 14, '4': 1, '5': 9, '9': 4, '10': 'crossStreetStartName', '17': true},
    {'1': 'cross_street_end_name', '3': 15, '4': 1, '5': 9, '9': 5, '10': 'crossStreetEndName', '17': true},
    {'1': 'length', '3': 16, '4': 1, '5': 5, '9': 6, '10': 'length', '17': true},
    {'1': 'available_space_lengths', '3': 17, '4': 3, '5': 5, '10': 'availableSpaceLengths'},
    {'1': 'availability_time', '3': 18, '4': 1, '5': 4, '9': 7, '10': 'availabilityTime', '17': true},
    {'1': 'width', '3': 19, '4': 1, '5': 5, '9': 8, '10': 'width', '17': true},
    {'1': 'parking_angle', '3': 20, '4': 1, '5': 9, '9': 9, '10': 'parkingAngle', '17': true},
    {'1': 'num_spaces', '3': 21, '4': 1, '5': 5, '9': 10, '10': 'numSpaces', '17': true},
    {'1': 'street_side', '3': 22, '4': 1, '5': 9, '9': 11, '10': 'streetSide', '17': true},
    {'1': 'median', '3': 23, '4': 1, '5': 8, '9': 12, '10': 'median', '17': true},
    {'1': 'entire_roadway', '3': 24, '4': 1, '5': 8, '9': 13, '10': 'entireRoadway', '17': true},
    {'1': 'curb_area_ids', '3': 25, '4': 3, '5': 9, '10': 'curbAreaIds'},
    {'1': 'curb_space_ids', '3': 26, '4': 3, '5': 9, '10': 'curbSpaceIds'},
  ],
  '8': [
    {'1': '_end_date'},
    {'1': '_name'},
    {'1': '_user_zone_id'},
    {'1': '_street_name'},
    {'1': '_cross_street_start_name'},
    {'1': '_cross_street_end_name'},
    {'1': '_length'},
    {'1': '_availability_time'},
    {'1': '_width'},
    {'1': '_parking_angle'},
    {'1': '_num_spaces'},
    {'1': '_street_side'},
    {'1': '_median'},
    {'1': '_entire_roadway'},
  ],
};

/// Descriptor for `CurbZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curbZoneDescriptor = $convert.base64Decode(
    'CghDdXJiWm9uZRIgCgxjdXJiX3pvbmVfaWQYASABKAlSCmN1cmJab25lSWQSNwoIZ2VvbWV0cn'
    'kYAiABKAsyGy5kYXRhaHViLnYxLlBvbHlnb25HZW9tZXRyeVIIZ2VvbWV0cnkSJgoPY3VyYl9w'
    'b2xpY3lfaWRzGAMgAygJUg1jdXJiUG9saWN5SWRzEj8KDXByZXZfcG9saWNpZXMYBCADKAsyGi'
    '5kYXRhaHViLnYxLlByZXZpb3VzUG9saWN5UgxwcmV2UG9saWNpZXMSJQoOcHVibGlzaGVkX2Rh'
    'dGUYBSABKARSDXB1Ymxpc2hlZERhdGUSKgoRbGFzdF91cGRhdGVkX2RhdGUYBiABKARSD2xhc3'
    'RVcGRhdGVkRGF0ZRIrChJwcmV2X2N1cmJfem9uZV9pZHMYByADKAlSD3ByZXZDdXJiWm9uZUlk'
    'cxIdCgpzdGFydF9kYXRlGAggASgEUglzdGFydERhdGUSHgoIZW5kX2RhdGUYCSABKARIAFIHZW'
    '5kRGF0ZYgBARJOChNsb2NhdGlvbl9yZWZlcmVuY2VzGAogAygLMh0uZGF0YWh1Yi52MS5Mb2Nh'
    'dGlvblJlZmVyZW5jZVISbG9jYXRpb25SZWZlcmVuY2VzEhcKBG5hbWUYCyABKAlIAVIEbmFtZY'
    'gBARIlCgx1c2VyX3pvbmVfaWQYDCABKAlIAlIKdXNlclpvbmVJZIgBARIkCgtzdHJlZXRfbmFt'
    'ZRgNIAEoCUgDUgpzdHJlZXROYW1liAEBEjoKF2Nyb3NzX3N0cmVldF9zdGFydF9uYW1lGA4gAS'
    'gJSARSFGNyb3NzU3RyZWV0U3RhcnROYW1liAEBEjYKFWNyb3NzX3N0cmVldF9lbmRfbmFtZRgP'
    'IAEoCUgFUhJjcm9zc1N0cmVldEVuZE5hbWWIAQESGwoGbGVuZ3RoGBAgASgFSAZSBmxlbmd0aI'
    'gBARI2ChdhdmFpbGFibGVfc3BhY2VfbGVuZ3RocxgRIAMoBVIVYXZhaWxhYmxlU3BhY2VMZW5n'
    'dGhzEjAKEWF2YWlsYWJpbGl0eV90aW1lGBIgASgESAdSEGF2YWlsYWJpbGl0eVRpbWWIAQESGQ'
    'oFd2lkdGgYEyABKAVICFIFd2lkdGiIAQESKAoNcGFya2luZ19hbmdsZRgUIAEoCUgJUgxwYXJr'
    'aW5nQW5nbGWIAQESIgoKbnVtX3NwYWNlcxgVIAEoBUgKUgludW1TcGFjZXOIAQESJAoLc3RyZW'
    'V0X3NpZGUYFiABKAlIC1IKc3RyZWV0U2lkZYgBARIbCgZtZWRpYW4YFyABKAhIDFIGbWVkaWFu'
    'iAEBEioKDmVudGlyZV9yb2Fkd2F5GBggASgISA1SDWVudGlyZVJvYWR3YXmIAQESIgoNY3VyYl'
    '9hcmVhX2lkcxgZIAMoCVILY3VyYkFyZWFJZHMSJAoOY3VyYl9zcGFjZV9pZHMYGiADKAlSDGN1'
    'cmJTcGFjZUlkc0ILCglfZW5kX2RhdGVCBwoFX25hbWVCDwoNX3VzZXJfem9uZV9pZEIOCgxfc3'
    'RyZWV0X25hbWVCGgoYX2Nyb3NzX3N0cmVldF9zdGFydF9uYW1lQhgKFl9jcm9zc19zdHJlZXRf'
    'ZW5kX25hbWVCCQoHX2xlbmd0aEIUChJfYXZhaWxhYmlsaXR5X3RpbWVCCAoGX3dpZHRoQhAKDl'
    '9wYXJraW5nX2FuZ2xlQg0KC19udW1fc3BhY2VzQg4KDF9zdHJlZXRfc2lkZUIJCgdfbWVkaWFu'
    'QhEKD19lbnRpcmVfcm9hZHdheQ==');

@$core.Deprecated('Use previousPolicyDescriptor instead')
const PreviousPolicy$json = {
  '1': 'PreviousPolicy',
  '2': [
    {'1': 'curb_policy_ids', '3': 1, '4': 3, '5': 9, '10': 'curbPolicyIds'},
    {'1': 'start_date', '3': 2, '4': 1, '5': 4, '10': 'startDate'},
    {'1': 'end_date', '3': 3, '4': 1, '5': 4, '10': 'endDate'},
  ],
};

/// Descriptor for `PreviousPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previousPolicyDescriptor = $convert.base64Decode(
    'Cg5QcmV2aW91c1BvbGljeRImCg9jdXJiX3BvbGljeV9pZHMYASADKAlSDWN1cmJQb2xpY3lJZH'
    'MSHQoKc3RhcnRfZGF0ZRgCIAEoBFIJc3RhcnREYXRlEhkKCGVuZF9kYXRlGAMgASgEUgdlbmRE'
    'YXRl');

@$core.Deprecated('Use locationReferenceDescriptor instead')
const LocationReference$json = {
  '1': 'LocationReference',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 9, '10': 'source'},
    {'1': 'ref_id', '3': 2, '4': 1, '5': 9, '10': 'refId'},
    {'1': 'start', '3': 3, '4': 1, '5': 5, '10': 'start'},
    {'1': 'end', '3': 4, '4': 1, '5': 5, '10': 'end'},
    {'1': 'side', '3': 5, '4': 1, '5': 14, '6': '.datahub.v1.LocationReference.LocationReferenceRoadwaySide', '9': 0, '10': 'side', '17': true},
  ],
  '4': [LocationReference_LocationReferenceRoadwaySide$json],
  '8': [
    {'1': '_side'},
  ],
};

@$core.Deprecated('Use locationReferenceDescriptor instead')
const LocationReference_LocationReferenceRoadwaySide$json = {
  '1': 'LocationReferenceRoadwaySide',
  '2': [
    {'1': 'LOCATION_REFERENCE_ROADWAY_SIDE_LEFT', '2': 0},
    {'1': 'LOCATION_REFERENCE_ROADWAY_SIDE_RIGHT', '2': 1},
  ],
};

/// Descriptor for `LocationReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationReferenceDescriptor = $convert.base64Decode(
    'ChFMb2NhdGlvblJlZmVyZW5jZRIWCgZzb3VyY2UYASABKAlSBnNvdXJjZRIVCgZyZWZfaWQYAi'
    'ABKAlSBXJlZklkEhQKBXN0YXJ0GAMgASgFUgVzdGFydBIQCgNlbmQYBCABKAVSA2VuZBJTCgRz'
    'aWRlGAUgASgOMjouZGF0YWh1Yi52MS5Mb2NhdGlvblJlZmVyZW5jZS5Mb2NhdGlvblJlZmVyZW'
    '5jZVJvYWR3YXlTaWRlSABSBHNpZGWIAQEicwocTG9jYXRpb25SZWZlcmVuY2VSb2Fkd2F5U2lk'
    'ZRIoCiRMT0NBVElPTl9SRUZFUkVOQ0VfUk9BRFdBWV9TSURFX0xFRlQQABIpCiVMT0NBVElPTl'
    '9SRUZFUkVOQ0VfUk9BRFdBWV9TSURFX1JJR0hUEAFCBwoFX3NpZGU=');

