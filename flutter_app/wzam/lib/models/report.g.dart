// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Report _$ReportFromJson(Map<String, dynamic> json) => Report(
      project_id: (json['project_id'] as num?)?.toInt(),
      segment_id: (json['segment_id'] as num?)?.toInt(),
      area_id: (json['area_id'] as num?)?.toInt(),
      report_name: json['report_name'] as String,
      types_of_work: (json['types_of_work'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      workers_present: json['workers_present'] as bool,
      start_date: (json['start_date'] as num?)?.toInt(),
      end_date: (json['end_date'] as num?)?.toInt(),
      report_date: (json['report_date'] as num).toInt(),
      area_type: $enumDecode(_$WorkZoneTypeEnumMap, json['area_type']),
      mobility_speed_mph: (json['mobility_speed_mph'] as num?)?.toDouble(),
      geometry_type: $enumDecode(_$GeometryTypeEnumMap, json['geometry_type']),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      geometry_line_width: (json['geometry_line_width'] as num?)?.toDouble(),
      license_plate: json['license_plate'] as String?,
      surface_type: $enumDecodeNullable(
          _$RoadSegmentSurfaceTypeEnumMap, json['surface_type']),
    );

Map<String, dynamic> _$ReportToJson(Report instance) => <String, dynamic>{
      'project_id': instance.project_id,
      'segment_id': instance.segment_id,
      'area_id': instance.area_id,
      'report_name': instance.report_name,
      'types_of_work': instance.types_of_work,
      'workers_present': instance.workers_present,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'report_date': instance.report_date,
      'area_type': _$WorkZoneTypeEnumMap[instance.area_type]!,
      'mobility_speed_mph': instance.mobility_speed_mph,
      'geometry_type': _$GeometryTypeEnumMap[instance.geometry_type]!,
      'geometry': instance.geometry,
      'geometry_line_width': instance.geometry_line_width,
      'license_plate': instance.license_plate,
      'surface_type': _$RoadSegmentSurfaceTypeEnumMap[instance.surface_type],
    };

const _$WorkZoneTypeEnumMap = {
  WorkZoneType.static: 'static',
  WorkZoneType.moving: 'moving',
  WorkZoneType.plannedMovingArea: 'planned_moving_area',
};

const _$GeometryTypeEnumMap = {
  GeometryType.multipoint: 'multipoint',
  GeometryType.linestring: 'linestring',
  GeometryType.polygon: 'polygon',
};

const _$RoadSegmentSurfaceTypeEnumMap = {
  RoadSegmentSurfaceType.paved: 'paved',
  RoadSegmentSurfaceType.gravel: 'gravel',
  RoadSegmentSurfaceType.dirt: 'dirt',
  RoadSegmentSurfaceType.grooved: 'grooved',
};

ReportWithId _$ReportWithIdFromJson(Map<String, dynamic> json) => ReportWithId(
      id: (json['id'] as num).toInt(),
      project_id: (json['project_id'] as num?)?.toInt(),
      segment_id: (json['segment_id'] as num?)?.toInt(),
      area_id: (json['area_id'] as num?)?.toInt(),
      report_name: json['report_name'] as String,
      types_of_work: (json['types_of_work'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      workers_present: json['workers_present'] as bool,
      start_date: (json['start_date'] as num?)?.toInt(),
      end_date: (json['end_date'] as num?)?.toInt(),
      report_date: (json['report_date'] as num).toInt(),
      area_type: $enumDecode(_$WorkZoneTypeEnumMap, json['area_type']),
      mobility_speed_mph: (json['mobility_speed_mph'] as num?)?.toDouble(),
      geometry_type: $enumDecode(_$GeometryTypeEnumMap, json['geometry_type']),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      geometry_line_width: (json['geometry_line_width'] as num?)?.toDouble(),
      license_plate: json['license_plate'] as String?,
      surface_type: $enumDecodeNullable(
          _$RoadSegmentSurfaceTypeEnumMap, json['surface_type']),
    );

Map<String, dynamic> _$ReportWithIdToJson(ReportWithId instance) =>
    <String, dynamic>{
      'project_id': instance.project_id,
      'segment_id': instance.segment_id,
      'area_id': instance.area_id,
      'report_name': instance.report_name,
      'types_of_work': instance.types_of_work,
      'workers_present': instance.workers_present,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'report_date': instance.report_date,
      'area_type': _$WorkZoneTypeEnumMap[instance.area_type]!,
      'mobility_speed_mph': instance.mobility_speed_mph,
      'geometry_type': _$GeometryTypeEnumMap[instance.geometry_type]!,
      'geometry': instance.geometry,
      'geometry_line_width': instance.geometry_line_width,
      'license_plate': instance.license_plate,
      'surface_type': _$RoadSegmentSurfaceTypeEnumMap[instance.surface_type],
      'id': instance.id,
    };
