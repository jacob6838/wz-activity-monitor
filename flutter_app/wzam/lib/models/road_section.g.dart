// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadSection _$RoadSectionFromJson(Map<String, dynamic> json) => RoadSection(
      project_id: (json['project_id'] as num).toInt(),
      segment_name: json['segment_name'] as String?,
      reference_type:
          $enumDecode(_$RoadSectionTypeEnumMap, json['reference_type']),
      start_mm: json['start_mm'] as String,
      end_mm: json['end_mm'] as String,
      direction: $enumDecode(_$RoadSegmentDirectionEnumMap, json['direction']),
      surface_type:
          $enumDecode(_$RoadSegmentSurfaceTypeEnumMap, json['surface_type']),
      start_date: (json['start_date'] as num?)?.toInt(),
      end_date: (json['end_date'] as num?)?.toInt(),
      armed_status:
          $enumDecode(_$RoadSegmentArmedStatusEnumMap, json['armed_status']),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      bbox: (json['bbox'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$RoadSectionToJson(RoadSection instance) =>
    <String, dynamic>{
      'project_id': instance.project_id,
      'segment_name': instance.segment_name,
      'reference_type': _$RoadSectionTypeEnumMap[instance.reference_type]!,
      'start_mm': instance.start_mm,
      'end_mm': instance.end_mm,
      'direction': _$RoadSegmentDirectionEnumMap[instance.direction]!,
      'surface_type': _$RoadSegmentSurfaceTypeEnumMap[instance.surface_type]!,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'armed_status': _$RoadSegmentArmedStatusEnumMap[instance.armed_status]!,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
    };

const _$RoadSectionTypeEnumMap = {
  RoadSectionType.highway: 'highway',
  RoadSectionType.county_road: 'county_road',
  RoadSectionType.lrs: 'lrs',
};

const _$RoadSegmentDirectionEnumMap = {
  RoadSegmentDirection.both: 'both',
  RoadSegmentDirection.northbound: 'northbound',
  RoadSegmentDirection.southbound: 'southbound',
  RoadSegmentDirection.eastbound: 'eastbound',
  RoadSegmentDirection.westbound: 'westbound',
};

const _$RoadSegmentSurfaceTypeEnumMap = {
  RoadSegmentSurfaceType.paved: 'paved',
  RoadSegmentSurfaceType.gravel: 'gravel',
  RoadSegmentSurfaceType.dirt: 'dirt',
  RoadSegmentSurfaceType.grooved: 'grooved',
};

const _$RoadSegmentArmedStatusEnumMap = {
  RoadSegmentArmedStatus.armed: 'armed',
  RoadSegmentArmedStatus.disarmed: 'disarmed',
};

RoadSectionWithId _$RoadSectionWithIdFromJson(Map<String, dynamic> json) =>
    RoadSectionWithId(
      id: (json['id'] as num).toInt(),
      project_id: (json['project_id'] as num).toInt(),
      segment_name: json['segment_name'] as String?,
      reference_type:
          $enumDecode(_$RoadSectionTypeEnumMap, json['reference_type']),
      start_mm: json['start_mm'] as String,
      end_mm: json['end_mm'] as String,
      direction: $enumDecode(_$RoadSegmentDirectionEnumMap, json['direction']),
      surface_type:
          $enumDecode(_$RoadSegmentSurfaceTypeEnumMap, json['surface_type']),
      start_date: (json['start_date'] as num?)?.toInt(),
      end_date: (json['end_date'] as num?)?.toInt(),
      armed_status:
          $enumDecode(_$RoadSegmentArmedStatusEnumMap, json['armed_status']),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      bbox: (json['bbox'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$RoadSectionWithIdToJson(RoadSectionWithId instance) =>
    <String, dynamic>{
      'project_id': instance.project_id,
      'segment_name': instance.segment_name,
      'reference_type': _$RoadSectionTypeEnumMap[instance.reference_type]!,
      'start_mm': instance.start_mm,
      'end_mm': instance.end_mm,
      'direction': _$RoadSegmentDirectionEnumMap[instance.direction]!,
      'surface_type': _$RoadSegmentSurfaceTypeEnumMap[instance.surface_type]!,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'armed_status': _$RoadSegmentArmedStatusEnumMap[instance.armed_status]!,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
      'id': instance.id,
    };
