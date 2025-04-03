// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      name: json['name'] as String,
      description: json['description'] as String,
      tmc_notes: json['tmc_notes'] as String,
      active_status: $enumDecode(_$ProjectStatusEnumMap, json['active_status']),
      hyperlink: json['hyperlink'] as String,
      start_date: (json['start_date'] as num).toInt(),
      end_date: (json['end_date'] as num).toInt(),
      districts:
          (json['districts'] as List<dynamic>).map((e) => e as String).toList(),
      wydot_contact: json['wydot_contact'] as String,
      project_update_contact: json['project_update_contact'] as String,
      traffic_control_contact: json['traffic_control_contact'] as String,
      emergency_contact: json['emergency_contact'] as String,
      contractor: json['contractor'] as String,
      selected_towns: (json['selected_towns'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      bbox: (json['bbox'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tmc_notes': instance.tmc_notes,
      'active_status': _$ProjectStatusEnumMap[instance.active_status]!,
      'hyperlink': instance.hyperlink,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'districts': instance.districts,
      'wydot_contact': instance.wydot_contact,
      'project_update_contact': instance.project_update_contact,
      'traffic_control_contact': instance.traffic_control_contact,
      'emergency_contact': instance.emergency_contact,
      'contractor': instance.contractor,
      'selected_towns': instance.selected_towns,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.active: 'active',
  ProjectStatus.suspended: 'suspended',
};

ProjectWithId _$ProjectWithIdFromJson(Map<String, dynamic> json) =>
    ProjectWithId(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      tmc_notes: json['tmc_notes'] as String,
      active_status: $enumDecode(_$ProjectStatusEnumMap, json['active_status']),
      hyperlink: json['hyperlink'] as String,
      start_date: (json['start_date'] as num).toInt(),
      end_date: (json['end_date'] as num).toInt(),
      districts:
          (json['districts'] as List<dynamic>).map((e) => e as String).toList(),
      wydot_contact: json['wydot_contact'] as String,
      project_update_contact: json['project_update_contact'] as String,
      traffic_control_contact: json['traffic_control_contact'] as String,
      emergency_contact: json['emergency_contact'] as String,
      contractor: json['contractor'] as String,
      selected_towns: (json['selected_towns'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      geometry: (json['geometry'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      bbox: (json['bbox'] as List<dynamic>?)
          ?.map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$ProjectWithIdToJson(ProjectWithId instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tmc_notes': instance.tmc_notes,
      'active_status': _$ProjectStatusEnumMap[instance.active_status]!,
      'hyperlink': instance.hyperlink,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'districts': instance.districts,
      'wydot_contact': instance.wydot_contact,
      'project_update_contact': instance.project_update_contact,
      'traffic_control_contact': instance.traffic_control_contact,
      'emergency_contact': instance.emergency_contact,
      'contractor': instance.contractor,
      'selected_towns': instance.selected_towns,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
      'id': instance.id,
    };
