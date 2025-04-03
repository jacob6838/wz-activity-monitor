//
//  Generated code. Do not modify.
//  source: recording.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use recordingMarkingDescriptor instead')
const RecordingMarking$json = {
  '1': 'RecordingMarking',
  '2': [
    {'1': 'ref_pt', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'refPt', '17': true},
    {'1': 'lane_closed', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'laneClosed', '17': true},
    {'1': 'lane_opened', '3': 3, '4': 1, '5': 13, '9': 2, '10': 'laneOpened', '17': true},
    {'1': 'workers_present', '3': 4, '4': 1, '5': 8, '9': 3, '10': 'workersPresent', '17': true},
    {'1': 'speed_limit_mph', '3': 5, '4': 1, '5': 2, '9': 4, '10': 'speedLimitMph', '17': true},
    {'1': 'surface_type', '3': 6, '4': 1, '5': 14, '6': '.datahub.v1.RoadSurfaceType', '9': 5, '10': 'surfaceType', '17': true},
  ],
  '8': [
    {'1': '_ref_pt'},
    {'1': '_lane_closed'},
    {'1': '_lane_opened'},
    {'1': '_workers_present'},
    {'1': '_speed_limit_mph'},
    {'1': '_surface_type'},
  ],
};

/// Descriptor for `RecordingMarking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingMarkingDescriptor = $convert.base64Decode(
    'ChBSZWNvcmRpbmdNYXJraW5nEhoKBnJlZl9wdBgBIAEoCEgAUgVyZWZQdIgBARIkCgtsYW5lX2'
    'Nsb3NlZBgCIAEoDUgBUgpsYW5lQ2xvc2VkiAEBEiQKC2xhbmVfb3BlbmVkGAMgASgNSAJSCmxh'
    'bmVPcGVuZWSIAQESLAoPd29ya2Vyc19wcmVzZW50GAQgASgISANSDndvcmtlcnNQcmVzZW50iA'
    'EBEisKD3NwZWVkX2xpbWl0X21waBgFIAEoAkgEUg1zcGVlZExpbWl0TXBoiAEBEkMKDHN1cmZh'
    'Y2VfdHlwZRgGIAEoDjIbLmRhdGFodWIudjEuUm9hZFN1cmZhY2VUeXBlSAVSC3N1cmZhY2VUeX'
    'BliAEBQgkKB19yZWZfcHRCDgoMX2xhbmVfY2xvc2VkQg4KDF9sYW5lX29wZW5lZEISChBfd29y'
    'a2Vyc19wcmVzZW50QhIKEF9zcGVlZF9saW1pdF9tcGhCDwoNX3N1cmZhY2VfdHlwZQ==');

@$core.Deprecated('Use recordingPointDescriptor instead')
const RecordingPoint$json = {
  '1': 'RecordingPoint',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'num_satellites', '3': 2, '4': 1, '5': 13, '10': 'numSatellites'},
    {'1': 'accuracy', '3': 3, '4': 1, '5': 2, '10': 'accuracy'},
    {'1': 'latitude', '3': 4, '4': 1, '5': 2, '10': 'latitude'},
    {'1': 'longitude', '3': 5, '4': 1, '5': 2, '10': 'longitude'},
    {'1': 'altitude', '3': 6, '4': 1, '5': 2, '10': 'altitude'},
    {'1': 'speed', '3': 7, '4': 1, '5': 2, '10': 'speed'},
    {'1': 'heading', '3': 8, '4': 1, '5': 2, '10': 'heading'},
    {'1': 'num_lanes', '3': 9, '4': 1, '5': 13, '10': 'numLanes'},
    {'1': 'markings', '3': 10, '4': 3, '5': 11, '6': '.datahub.v1.RecordingMarking', '10': 'markings'},
  ],
};

/// Descriptor for `RecordingPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingPointDescriptor = $convert.base64Decode(
    'Cg5SZWNvcmRpbmdQb2ludBIuCgRkYXRlGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIEZGF0ZRIlCg5udW1fc2F0ZWxsaXRlcxgCIAEoDVINbnVtU2F0ZWxsaXRlcxIaCghhY2N1'
    'cmFjeRgDIAEoAlIIYWNjdXJhY3kSGgoIbGF0aXR1ZGUYBCABKAJSCGxhdGl0dWRlEhwKCWxvbm'
    'dpdHVkZRgFIAEoAlIJbG9uZ2l0dWRlEhoKCGFsdGl0dWRlGAYgASgCUghhbHRpdHVkZRIUCgVz'
    'cGVlZBgHIAEoAlIFc3BlZWQSGAoHaGVhZGluZxgIIAEoAlIHaGVhZGluZxIbCgludW1fbGFuZX'
    'MYCSABKA1SCG51bUxhbmVzEjgKCG1hcmtpbmdzGAogAygLMhwuZGF0YWh1Yi52MS5SZWNvcmRp'
    'bmdNYXJraW5nUghtYXJraW5ncw==');

@$core.Deprecated('Use recordingDescriptor instead')
const Recording$json = {
  '1': 'Recording',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'projectId', '17': true},
    {'1': 'road_section_id', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'roadSectionId', '17': true},
    {'1': 'area_id', '3': 3, '4': 1, '5': 4, '9': 2, '10': 'areaId', '17': true},
    {'1': 'recording_name', '3': 4, '4': 1, '5': 9, '10': 'recordingName'},
    {'1': 'types_of_work', '3': 5, '4': 3, '5': 11, '6': '.datahub.v1.TypeOfWork', '10': 'typesOfWork'},
    {'1': 'start_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 3, '10': 'startDate', '17': true},
    {'1': 'end_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 4, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 8, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'mobility_speed_mph', '3': 9, '4': 1, '5': 2, '9': 5, '10': 'mobilitySpeedMph', '17': true},
    {'1': 'surface_type', '3': 10, '4': 1, '5': 14, '6': '.datahub.v1.RoadSurfaceType', '9': 6, '10': 'surfaceType', '17': true},
    {'1': 'points', '3': 11, '4': 3, '5': 11, '6': '.datahub.v1.RecordingPoint', '10': 'points'},
  ],
  '8': [
    {'1': '_project_id'},
    {'1': '_road_section_id'},
    {'1': '_area_id'},
    {'1': '_start_date'},
    {'1': '_end_date'},
    {'1': '_mobility_speed_mph'},
    {'1': '_surface_type'},
  ],
};

/// Descriptor for `Recording`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordingDescriptor = $convert.base64Decode(
    'CglSZWNvcmRpbmcSIgoKcHJvamVjdF9pZBgBIAEoBEgAUglwcm9qZWN0SWSIAQESKwoPcm9hZF'
    '9zZWN0aW9uX2lkGAIgASgESAFSDXJvYWRTZWN0aW9uSWSIAQESHAoHYXJlYV9pZBgDIAEoBEgC'
    'UgZhcmVhSWSIAQESJQoOcmVjb3JkaW5nX25hbWUYBCABKAlSDXJlY29yZGluZ05hbWUSOgoNdH'
    'lwZXNfb2Zfd29yaxgFIAMoCzIWLmRhdGFodWIudjEuVHlwZU9mV29ya1ILdHlwZXNPZldvcmsS'
    'PgoKc3RhcnRfZGF0ZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIA1IJc3Rhcn'
    'REYXRliAEBEjoKCGVuZF9kYXRlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgE'
    'UgdlbmREYXRliAEBEjUKCWFyZWFfdHlwZRgIIAEoDjIYLmRhdGFodWIudjEuV29ya1pvbmVUeX'
    'BlUghhcmVhVHlwZRIxChJtb2JpbGl0eV9zcGVlZF9tcGgYCSABKAJIBVIQbW9iaWxpdHlTcGVl'
    'ZE1waIgBARJDCgxzdXJmYWNlX3R5cGUYCiABKA4yGy5kYXRhaHViLnYxLlJvYWRTdXJmYWNlVH'
    'lwZUgGUgtzdXJmYWNlVHlwZYgBARIyCgZwb2ludHMYCyADKAsyGi5kYXRhaHViLnYxLlJlY29y'
    'ZGluZ1BvaW50UgZwb2ludHNCDQoLX3Byb2plY3RfaWRCEgoQX3JvYWRfc2VjdGlvbl9pZEIKCg'
    'hfYXJlYV9pZEINCgtfc3RhcnRfZGF0ZUILCglfZW5kX2RhdGVCFQoTX21vYmlsaXR5X3NwZWVk'
    'X21waEIPCg1fc3VyZmFjZV90eXBl');

