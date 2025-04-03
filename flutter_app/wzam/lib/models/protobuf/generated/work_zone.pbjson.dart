//
//  Generated code. Do not modify.
//  source: work_zone.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use workZoneDescriptor instead')
const WorkZone$json = {
  '1': 'WorkZone',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 4, '10': 'projectId'},
    {'1': 'road_sections', '3': 2, '4': 3, '5': 11, '6': '.datahub.v1.WorkZone.RoadSubEventLink', '10': 'roadSections'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.datahub.v1.WorkZone.WorkZoneActiveStatus', '10': 'status'},
    {'1': 'start_date', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDate'},
    {'1': 'end_date', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endDate', '17': true},
    {'1': 'area_type', '3': 8, '4': 1, '5': 14, '6': '.datahub.v1.WorkZoneType', '10': 'areaType'},
    {'1': 'types_of_work', '3': 14, '4': 3, '5': 11, '6': '.datahub.v1.TypeOfWork', '10': 'typesOfWork'},
    {'1': 'schedule', '3': 15, '4': 3, '5': 11, '6': '.datahub.v1.WorkZone.EventRecurrence', '10': 'schedule'},
    {'1': 'point', '3': 16, '4': 1, '5': 11, '6': '.datahub.v1.PointGeometry', '9': 0, '10': 'point'},
    {'1': 'line_string', '3': 17, '4': 1, '5': 11, '6': '.datahub.v1.LineStringGeometry', '9': 0, '10': 'lineString'},
    {'1': 'polygon', '3': 18, '4': 1, '5': 11, '6': '.datahub.v1.PolygonGeometry', '9': 0, '10': 'polygon'},
    {'1': 'bbox', '3': 19, '4': 1, '5': 11, '6': '.datahub.v1.BoundingBox', '10': 'bbox'},
  ],
  '3': [WorkZone_RoadSubEventLink$json, WorkZone_EventRecurrence$json],
  '4': [WorkZone_WorkZoneActiveStatus$json],
  '8': [
    {'1': 'Geometry'},
    {'1': '_end_date'},
  ],
};

@$core.Deprecated('Use workZoneDescriptor instead')
const WorkZone_RoadSubEventLink$json = {
  '1': 'RoadSubEventLink',
  '2': [
    {'1': 'road_sub_event_id', '3': 1, '4': 1, '5': 4, '10': 'roadSubEventId'},
    {'1': 'road_sub_event_link_type', '3': 2, '4': 1, '5': 14, '6': '.datahub.v1.WorkZone.RoadSubEventLink.RoadSubEventLinkType', '10': 'roadSubEventLinkType'},
  ],
  '4': [WorkZone_RoadSubEventLink_RoadSubEventLinkType$json],
};

@$core.Deprecated('Use workZoneDescriptor instead')
const WorkZone_RoadSubEventLink_RoadSubEventLinkType$json = {
  '1': 'RoadSubEventLinkType',
  '2': [
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_FIRST_IN_SEQUENCE', '2': 0},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_NEXT_IN_SEQUENCE', '2': 1},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_FIRST_OCCURRENCE', '2': 2},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_NEXT_OCCURRENCE', '2': 3},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_RELATED_WORK_ZONE', '2': 4},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_RELATED_DETOUR', '2': 5},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_PLANNED_MOVING_OPERATION', '2': 6},
    {'1': 'ROAD_SUB_EVENT_LINK_TYPE_ACTIVE_MOVING_OPERATION', '2': 7},
  ],
};

@$core.Deprecated('Use workZoneDescriptor instead')
const WorkZone_EventRecurrence$json = {
  '1': 'EventRecurrence',
  '2': [
    {'1': 'start_time', '3': 1, '4': 1, '5': 11, '6': '.google.type.TimeOfDay', '10': 'startTime'},
    {'1': 'end_time', '3': 2, '4': 1, '5': 11, '6': '.google.type.TimeOfDay', '10': 'endTime'},
    {'1': 'start_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'startDate'},
    {'1': 'end_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'endDate'},
    {'1': 'monday', '3': 5, '4': 1, '5': 8, '10': 'monday'},
    {'1': 'tuesday', '3': 6, '4': 1, '5': 8, '10': 'tuesday'},
    {'1': 'wednesday', '3': 7, '4': 1, '5': 8, '10': 'wednesday'},
    {'1': 'thursday', '3': 8, '4': 1, '5': 8, '10': 'thursday'},
    {'1': 'friday', '3': 9, '4': 1, '5': 8, '10': 'friday'},
    {'1': 'saturday', '3': 10, '4': 1, '5': 8, '10': 'saturday'},
    {'1': 'sunday', '3': 11, '4': 1, '5': 8, '10': 'sunday'},
    {'1': 'exclusion', '3': 12, '4': 1, '5': 8, '9': 0, '10': 'exclusion', '17': true},
  ],
  '8': [
    {'1': '_exclusion'},
  ],
};

@$core.Deprecated('Use workZoneDescriptor instead')
const WorkZone_WorkZoneActiveStatus$json = {
  '1': 'WorkZoneActiveStatus',
  '2': [
    {'1': 'WORK_ZONE_ACTIVE_STATUS_ACTIVE', '2': 0},
    {'1': 'WORK_ZONE_ACTIVE_STATUS_INACTIVE', '2': 1},
  ],
};

/// Descriptor for `WorkZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workZoneDescriptor = $convert.base64Decode(
    'CghXb3JrWm9uZRIdCgpwcm9qZWN0X2lkGAEgASgEUglwcm9qZWN0SWQSSgoNcm9hZF9zZWN0aW'
    '9ucxgCIAMoCzIlLmRhdGFodWIudjEuV29ya1pvbmUuUm9hZFN1YkV2ZW50TGlua1IMcm9hZFNl'
    'Y3Rpb25zEhIKBG5hbWUYAyABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaX'
    'B0aW9uEkEKBnN0YXR1cxgFIAEoDjIpLmRhdGFodWIudjEuV29ya1pvbmUuV29ya1pvbmVBY3Rp'
    'dmVTdGF0dXNSBnN0YXR1cxI5CgpzdGFydF9kYXRlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcFIJc3RhcnREYXRlEjoKCGVuZF9kYXRlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcEgBUgdlbmREYXRliAEBEjUKCWFyZWFfdHlwZRgIIAEoDjIYLmRhdGFodWIudj'
    'EuV29ya1pvbmVUeXBlUghhcmVhVHlwZRI6Cg10eXBlc19vZl93b3JrGA4gAygLMhYuZGF0YWh1'
    'Yi52MS5UeXBlT2ZXb3JrUgt0eXBlc09mV29yaxJACghzY2hlZHVsZRgPIAMoCzIkLmRhdGFodW'
    'IudjEuV29ya1pvbmUuRXZlbnRSZWN1cnJlbmNlUghzY2hlZHVsZRIxCgVwb2ludBgQIAEoCzIZ'
    'LmRhdGFodWIudjEuUG9pbnRHZW9tZXRyeUgAUgVwb2ludBJBCgtsaW5lX3N0cmluZxgRIAEoCz'
    'IeLmRhdGFodWIudjEuTGluZVN0cmluZ0dlb21ldHJ5SABSCmxpbmVTdHJpbmcSNwoHcG9seWdv'
    'bhgSIAEoCzIbLmRhdGFodWIudjEuUG9seWdvbkdlb21ldHJ5SABSB3BvbHlnb24SKwoEYmJveB'
    'gTIAEoCzIXLmRhdGFodWIudjEuQm91bmRpbmdCb3hSBGJib3ga0AQKEFJvYWRTdWJFdmVudExp'
    'bmsSKQoRcm9hZF9zdWJfZXZlbnRfaWQYASABKARSDnJvYWRTdWJFdmVudElkEnIKGHJvYWRfc3'
    'ViX2V2ZW50X2xpbmtfdHlwZRgCIAEoDjI6LmRhdGFodWIudjEuV29ya1pvbmUuUm9hZFN1YkV2'
    'ZW50TGluay5Sb2FkU3ViRXZlbnRMaW5rVHlwZVIUcm9hZFN1YkV2ZW50TGlua1R5cGUinAMKFF'
    'JvYWRTdWJFdmVudExpbmtUeXBlEi4KKlJPQURfU1VCX0VWRU5UX0xJTktfVFlQRV9GSVJTVF9J'
    'Tl9TRVFVRU5DRRAAEi0KKVJPQURfU1VCX0VWRU5UX0xJTktfVFlQRV9ORVhUX0lOX1NFUVVFTk'
    'NFEAESLQopUk9BRF9TVUJfRVZFTlRfTElOS19UWVBFX0ZJUlNUX09DQ1VSUkVOQ0UQAhIsCihS'
    'T0FEX1NVQl9FVkVOVF9MSU5LX1RZUEVfTkVYVF9PQ0NVUlJFTkNFEAMSLgoqUk9BRF9TVUJfRV'
    'ZFTlRfTElOS19UWVBFX1JFTEFURURfV09SS19aT05FEAQSKwonUk9BRF9TVUJfRVZFTlRfTElO'
    'S19UWVBFX1JFTEFURURfREVUT1VSEAUSNQoxUk9BRF9TVUJfRVZFTlRfTElOS19UWVBFX1BMQU'
    '5ORURfTU9WSU5HX09QRVJBVElPThAGEjQKMFJPQURfU1VCX0VWRU5UX0xJTktfVFlQRV9BQ1RJ'
    'VkVfTU9WSU5HX09QRVJBVElPThAHGsQDCg9FdmVudFJlY3VycmVuY2USNQoKc3RhcnRfdGltZR'
    'gBIAEoCzIWLmdvb2dsZS50eXBlLlRpbWVPZkRheVIJc3RhcnRUaW1lEjEKCGVuZF90aW1lGAIg'
    'ASgLMhYuZ29vZ2xlLnR5cGUuVGltZU9mRGF5UgdlbmRUaW1lEjAKCnN0YXJ0X2RhdGUYAyABKA'
    'syES5nb29nbGUudHlwZS5EYXRlUglzdGFydERhdGUSLAoIZW5kX2RhdGUYBCABKAsyES5nb29n'
    'bGUudHlwZS5EYXRlUgdlbmREYXRlEhYKBm1vbmRheRgFIAEoCFIGbW9uZGF5EhgKB3R1ZXNkYX'
    'kYBiABKAhSB3R1ZXNkYXkSHAoJd2VkbmVzZGF5GAcgASgIUgl3ZWRuZXNkYXkSGgoIdGh1cnNk'
    'YXkYCCABKAhSCHRodXJzZGF5EhYKBmZyaWRheRgJIAEoCFIGZnJpZGF5EhoKCHNhdHVyZGF5GA'
    'ogASgIUghzYXR1cmRheRIWCgZzdW5kYXkYCyABKAhSBnN1bmRheRIhCglleGNsdXNpb24YDCAB'
    'KAhIAFIJZXhjbHVzaW9uiAEBQgwKCl9leGNsdXNpb24iYAoUV29ya1pvbmVBY3RpdmVTdGF0dX'
    'MSIgoeV09SS19aT05FX0FDVElWRV9TVEFUVVNfQUNUSVZFEAASJAogV09SS19aT05FX0FDVElW'
    'RV9TVEFUVVNfSU5BQ1RJVkUQAUIKCghHZW9tZXRyeUILCglfZW5kX2RhdGU=');

