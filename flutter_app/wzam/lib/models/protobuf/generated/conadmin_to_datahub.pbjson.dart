//
//  Generated code. Do not modify.
//  source: conadmin_to_datahub.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fieldDeviceUpdatedDescriptor instead')
const FieldDeviceUpdated$json = {
  '1': 'FieldDeviceUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'projectId', '17': true},
    {'1': 'work_zone_event_id', '3': 3, '4': 1, '5': 4, '9': 1, '10': 'workZoneEventId', '17': true},
    {'1': 'location_type', '3': 4, '4': 1, '5': 14, '6': '.datahub.v1.MarkedLocationType', '9': 2, '10': 'locationType', '17': true},
    {'1': 'updated_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_project_id'},
    {'1': '_work_zone_event_id'},
    {'1': '_location_type'},
  ],
};

/// Descriptor for `FieldDeviceUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldDeviceUpdatedDescriptor = $convert.base64Decode(
    'ChJGaWVsZERldmljZVVwZGF0ZWQSDgoCaWQYASABKARSAmlkEiIKCnByb2plY3RfaWQYAiABKA'
    'RIAFIJcHJvamVjdElkiAEBEjAKEndvcmtfem9uZV9ldmVudF9pZBgDIAEoBEgBUg93b3JrWm9u'
    'ZUV2ZW50SWSIAQESSAoNbG9jYXRpb25fdHlwZRgEIAEoDjIeLmRhdGFodWIudjEuTWFya2VkTG'
    '9jYXRpb25UeXBlSAJSDGxvY2F0aW9uVHlwZYgBARI9Cgx1cGRhdGVkX3RpbWUYBSABKAsyGi5n'
    'b29nbGUucHJvdG9idWYuVGltZXN0YW1wUgt1cGRhdGVkVGltZUINCgtfcHJvamVjdF9pZEIVCh'
    'Nfd29ya196b25lX2V2ZW50X2lkQhAKDl9sb2NhdGlvbl90eXBl');

@$core.Deprecated('Use vehicleLocationUpdatedDescriptor instead')
const VehicleLocationUpdated$json = {
  '1': 'VehicleLocationUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'projectId', '17': true},
    {'1': 'work_zone_event_id', '3': 3, '4': 1, '5': 4, '9': 1, '10': 'workZoneEventId', '17': true},
    {'1': 'location_type', '3': 4, '4': 1, '5': 14, '6': '.datahub.v1.MarkedLocationType', '9': 2, '10': 'locationType', '17': true},
    {'1': 'updated_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_project_id'},
    {'1': '_work_zone_event_id'},
    {'1': '_location_type'},
  ],
};

/// Descriptor for `VehicleLocationUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vehicleLocationUpdatedDescriptor = $convert.base64Decode(
    'ChZWZWhpY2xlTG9jYXRpb25VcGRhdGVkEg4KAmlkGAEgASgEUgJpZBIiCgpwcm9qZWN0X2lkGA'
    'IgASgESABSCXByb2plY3RJZIgBARIwChJ3b3JrX3pvbmVfZXZlbnRfaWQYAyABKARIAVIPd29y'
    'a1pvbmVFdmVudElkiAEBEkgKDWxvY2F0aW9uX3R5cGUYBCABKA4yHi5kYXRhaHViLnYxLk1hcm'
    'tlZExvY2F0aW9uVHlwZUgCUgxsb2NhdGlvblR5cGWIAQESPQoMdXBkYXRlZF90aW1lGAUgASgL'
    'MhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWVCDQoLX3Byb2plY3RfaW'
    'RCFQoTX3dvcmtfem9uZV9ldmVudF9pZEIQCg5fbG9jYXRpb25fdHlwZQ==');

@$core.Deprecated('Use projectCreatedDescriptor instead')
const ProjectCreated$json = {
  '1': 'ProjectCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ProjectCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectCreatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0Q3JlYXRlZBIOCgJpZBgBIAEoBFICaWQSIgoKcmVxdWVzdF9pZBgCIAEoBEgAUg'
    'lyZXF1ZXN0SWSIAQESLQoHcHJvamVjdBgDIAEoCzITLmRhdGFodWIudjEuUHJvamVjdFIHcHJv'
    'amVjdBI9CgxjcmVhdGVkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'tjcmVhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use projectUpdatedDescriptor instead')
const ProjectUpdated$json = {
  '1': 'ProjectUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ProjectUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectUpdatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0VXBkYXRlZBIOCgJpZBgBIAEoBFICaWQSIgoKcmVxdWVzdF9pZBgCIAEoBEgAUg'
    'lyZXF1ZXN0SWSIAQESLQoHcHJvamVjdBgDIAEoCzITLmRhdGFodWIudjEuUHJvamVjdFIHcHJv'
    'amVjdBI9Cgx1cGRhdGVkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    't1cGRhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use projectRemovedDescriptor instead')
const ProjectRemoved$json = {
  '1': 'ProjectRemoved',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.Project', '10': 'project'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `ProjectRemoved`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectRemovedDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0UmVtb3ZlZBIOCgJpZBgBIAEoBFICaWQSIgoKcmVxdWVzdF9pZBgCIAEoBEgAUg'
    'lyZXF1ZXN0SWSIAQESLQoHcHJvamVjdBgDIAEoCzITLmRhdGFodWIudjEuUHJvamVjdFIHcHJv'
    'amVjdBI9Cgx1cGRhdGVkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    't1cGRhdGVkVGltZUINCgtfcmVxdWVzdF9pZA==');

@$core.Deprecated('Use workZoneCreatedDescriptor instead')
const WorkZoneCreated$json = {
  '1': 'WorkZoneCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'work_zone', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'road_sub_events_created', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEventCreated', '10': 'roadSubEventsCreated'},
    {'1': 'created_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `WorkZoneCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workZoneCreatedDescriptor = $convert.base64Decode(
    'Cg9Xb3JrWm9uZUNyZWF0ZWQSDgoCaWQYASABKARSAmlkEiIKCnJlcXVlc3RfaWQYAiABKARIAF'
    'IJcmVxdWVzdElkiAEBEjEKCXdvcmtfem9uZRgDIAEoCzIULmRhdGFodWIudjEuV29ya1pvbmVS'
    'CHdvcmtab25lElYKF3JvYWRfc3ViX2V2ZW50c19jcmVhdGVkGAQgAygLMh8uZGF0YWh1Yi52MS'
    '5Sb2FkU3ViRXZlbnRDcmVhdGVkUhRyb2FkU3ViRXZlbnRzQ3JlYXRlZBI9CgxjcmVhdGVkX3Rp'
    'bWUYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtjcmVhdGVkVGltZUINCgtfcm'
    'VxdWVzdF9pZA==');

@$core.Deprecated('Use workZoneUpdatedDescriptor instead')
const WorkZoneUpdated$json = {
  '1': 'WorkZoneUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'work_zone', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'road_sub_events_created', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEventCreated', '10': 'roadSubEventsCreated'},
    {'1': 'road_sub_events_updated', '3': 5, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEventUpdated', '10': 'roadSubEventsUpdated'},
    {'1': 'road_sub_events_removed', '3': 6, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEventRemoved', '10': 'roadSubEventsRemoved'},
    {'1': 'updated_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `WorkZoneUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workZoneUpdatedDescriptor = $convert.base64Decode(
    'Cg9Xb3JrWm9uZVVwZGF0ZWQSDgoCaWQYASABKARSAmlkEiIKCnJlcXVlc3RfaWQYAiABKARIAF'
    'IJcmVxdWVzdElkiAEBEjEKCXdvcmtfem9uZRgDIAEoCzIULmRhdGFodWIudjEuV29ya1pvbmVS'
    'CHdvcmtab25lElYKF3JvYWRfc3ViX2V2ZW50c19jcmVhdGVkGAQgAygLMh8uZGF0YWh1Yi52MS'
    '5Sb2FkU3ViRXZlbnRDcmVhdGVkUhRyb2FkU3ViRXZlbnRzQ3JlYXRlZBJWChdyb2FkX3N1Yl9l'
    'dmVudHNfdXBkYXRlZBgFIAMoCzIfLmRhdGFodWIudjEuUm9hZFN1YkV2ZW50VXBkYXRlZFIUcm'
    '9hZFN1YkV2ZW50c1VwZGF0ZWQSVgoXcm9hZF9zdWJfZXZlbnRzX3JlbW92ZWQYBiADKAsyHy5k'
    'YXRhaHViLnYxLlJvYWRTdWJFdmVudFJlbW92ZWRSFHJvYWRTdWJFdmVudHNSZW1vdmVkEj0KDH'
    'VwZGF0ZWRfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3VwZGF0ZWRU'
    'aW1lQg0KC19yZXF1ZXN0X2lk');

@$core.Deprecated('Use workZoneRemovedDescriptor instead')
const WorkZoneRemoved$json = {
  '1': 'WorkZoneRemoved',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'work_zone', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.WorkZone', '10': 'workZone'},
    {'1': 'road_sub_events', '3': 4, '4': 3, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvents'},
    {'1': 'updated_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `WorkZoneRemoved`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workZoneRemovedDescriptor = $convert.base64Decode(
    'Cg9Xb3JrWm9uZVJlbW92ZWQSDgoCaWQYASABKARSAmlkEiIKCnJlcXVlc3RfaWQYAiABKARIAF'
    'IJcmVxdWVzdElkiAEBEjEKCXdvcmtfem9uZRgDIAEoCzIULmRhdGFodWIudjEuV29ya1pvbmVS'
    'CHdvcmtab25lEkAKD3JvYWRfc3ViX2V2ZW50cxgEIAMoCzIYLmRhdGFodWIudjEuUm9hZFN1Yk'
    'V2ZW50Ug1yb2FkU3ViRXZlbnRzEj0KDHVwZGF0ZWRfdGltZRgFIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBSC3VwZGF0ZWRUaW1lQg0KC19yZXF1ZXN0X2lk');

@$core.Deprecated('Use roadSubEventCreatedDescriptor instead')
const RoadSubEventCreated$json = {
  '1': 'RoadSubEventCreated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'road_sub_event', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'created_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `RoadSubEventCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSubEventCreatedDescriptor = $convert.base64Decode(
    'ChNSb2FkU3ViRXZlbnRDcmVhdGVkEg4KAmlkGAEgASgEUgJpZBIiCgpyZXF1ZXN0X2lkGAIgAS'
    'gESABSCXJlcXVlc3RJZIgBARI+Cg5yb2FkX3N1Yl9ldmVudBgDIAEoCzIYLmRhdGFodWIudjEu'
    'Um9hZFN1YkV2ZW50Ugxyb2FkU3ViRXZlbnQSPQoMY3JlYXRlZF90aW1lGAQgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFILY3JlYXRlZFRpbWVCDQoLX3JlcXVlc3RfaWQ=');

@$core.Deprecated('Use roadSubEventUpdatedDescriptor instead')
const RoadSubEventUpdated$json = {
  '1': 'RoadSubEventUpdated',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'road_sub_event', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `RoadSubEventUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSubEventUpdatedDescriptor = $convert.base64Decode(
    'ChNSb2FkU3ViRXZlbnRVcGRhdGVkEg4KAmlkGAEgASgEUgJpZBIiCgpyZXF1ZXN0X2lkGAIgAS'
    'gESABSCXJlcXVlc3RJZIgBARI+Cg5yb2FkX3N1Yl9ldmVudBgDIAEoCzIYLmRhdGFodWIudjEu'
    'Um9hZFN1YkV2ZW50Ugxyb2FkU3ViRXZlbnQSPQoMdXBkYXRlZF90aW1lGAQgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWVCDQoLX3JlcXVlc3RfaWQ=');

@$core.Deprecated('Use roadSubEventRemovedDescriptor instead')
const RoadSubEventRemoved$json = {
  '1': 'RoadSubEventRemoved',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'request_id', '3': 2, '4': 1, '5': 4, '9': 0, '10': 'requestId', '17': true},
    {'1': 'road_sub_event', '3': 3, '4': 1, '5': 11, '6': '.datahub.v1.RoadSubEvent', '10': 'roadSubEvent'},
    {'1': 'updated_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedTime'},
  ],
  '8': [
    {'1': '_request_id'},
  ],
};

/// Descriptor for `RoadSubEventRemoved`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roadSubEventRemovedDescriptor = $convert.base64Decode(
    'ChNSb2FkU3ViRXZlbnRSZW1vdmVkEg4KAmlkGAEgASgEUgJpZBIiCgpyZXF1ZXN0X2lkGAIgAS'
    'gESABSCXJlcXVlc3RJZIgBARI+Cg5yb2FkX3N1Yl9ldmVudBgDIAEoCzIYLmRhdGFodWIudjEu'
    'Um9hZFN1YkV2ZW50Ugxyb2FkU3ViRXZlbnQSPQoMdXBkYXRlZF90aW1lGAQgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFILdXBkYXRlZFRpbWVCDQoLX3JlcXVlc3RfaWQ=');

