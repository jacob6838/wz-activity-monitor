// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityArea _$ActivityAreaFromJson(Map<String, dynamic> json) => ActivityArea(
      segment_id: (json['segment_id'] as num).toInt(),
      area_name: json['area_name'] as String,
      description: json['description'] as String?,
      creation_date: (json['creation_date'] as num).toInt(),
      update_date: (json['update_date'] as num).toInt(),
      start_date: (json['start_date'] as num).toInt(),
      end_date: (json['end_date'] as num).toInt(),
      start_date_verified: json['start_date_verified'] as bool?,
      end_date_verified: json['end_date_verified'] as bool?,
      area_type: $enumDecode(_$WorkZoneTypeEnumMap, json['area_type']),
      location_method:
          $enumDecode(_$LocationMethodEnumMap, json['location_method']),
      vehicle_impact:
          $enumDecode(_$VehicleImpactEnumMap, json['vehicle_impact']),
      impacted_cds_curb_zones:
          (json['impacted_cds_curb_zones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      lanes: (json['lanes'] as List<dynamic>?)
          ?.map((e) => Lane.fromJson(e as Map<String, dynamic>))
          .toList(),
      beginning_cross_street: json['beginning_cross_street'] as String?,
      ending_cross_street: json['ending_cross_street'] as String?,
      beginning_milepost: json['beginning_milepost'] as String?,
      ending_milepost: json['ending_milepost'] as String?,
      types_of_work: (json['types_of_work'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      worker_presence: json['worker_presence'] == null
          ? null
          : WorkerPresence.fromJson(
              json['worker_presence'] as Map<String, dynamic>),
      reduced_speed_limit_kph:
          (json['reduced_speed_limit_kph'] as num?)?.toDouble(),
      restrictions: (json['restrictions'] as List<dynamic>?)
          ?.map((e) => Restriction.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ActivityAreaToJson(ActivityArea instance) =>
    <String, dynamic>{
      'segment_id': instance.segment_id,
      'area_name': instance.area_name,
      'description': instance.description,
      'creation_date': instance.creation_date,
      'update_date': instance.update_date,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'start_date_verified': instance.start_date_verified,
      'end_date_verified': instance.end_date_verified,
      'area_type': _$WorkZoneTypeEnumMap[instance.area_type]!,
      'location_method': _$LocationMethodEnumMap[instance.location_method]!,
      'vehicle_impact': _$VehicleImpactEnumMap[instance.vehicle_impact]!,
      'impacted_cds_curb_zones': instance.impacted_cds_curb_zones,
      'lanes': instance.lanes,
      'beginning_cross_street': instance.beginning_cross_street,
      'ending_cross_street': instance.ending_cross_street,
      'beginning_milepost': instance.beginning_milepost,
      'ending_milepost': instance.ending_milepost,
      'types_of_work': instance.types_of_work,
      'worker_presence': instance.worker_presence,
      'reduced_speed_limit_kph': instance.reduced_speed_limit_kph,
      'restrictions': instance.restrictions,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
    };

const _$WorkZoneTypeEnumMap = {
  WorkZoneType.static: 'static',
  WorkZoneType.moving: 'moving',
  WorkZoneType.plannedMovingArea: 'planned_moving_area',
};

const _$LocationMethodEnumMap = {
  LocationMethod.channelDeviceMethod: 'channel_device_method',
  LocationMethod.signMethod: 'sign_method',
  LocationMethod.junctionMethod: 'junction_method',
  LocationMethod.other: 'other',
  LocationMethod.unknown: 'unknown',
};

const _$VehicleImpactEnumMap = {
  VehicleImpact.allLanesClosed: 'all-lanes-closed',
  VehicleImpact.someLanesClosed: 'some-lanes-closed',
  VehicleImpact.allLanesOpen: 'all-lanes-open',
  VehicleImpact.alternatingOneWay: 'alternating-one-way',
  VehicleImpact.someLanesClosedMergeLeft: 'some-lanes-closed-merge-left',
  VehicleImpact.someLanesClosedMergeRight: 'some-lanes-closed-merge-right',
  VehicleImpact.allLanesOpenShiftLeft: 'all-lanes-open-shift-left',
  VehicleImpact.allLanesOpenShiftRight: 'all-lanes-open-shift-right',
  VehicleImpact.someLanesClosedSplit: 'some-lanes-closed-split',
  VehicleImpact.flagging: 'flagging',
  VehicleImpact.temporaryTrafficSignal: 'temporary-traffic-signal',
  VehicleImpact.unknown: 'unknown',
};

ActivityAreaWithId _$ActivityAreaWithIdFromJson(Map<String, dynamic> json) =>
    ActivityAreaWithId(
      id: (json['id'] as num).toInt(),
      segment_id: (json['segment_id'] as num).toInt(),
      area_name: json['area_name'] as String,
      description: json['description'] as String?,
      creation_date: (json['creation_date'] as num).toInt(),
      update_date: (json['update_date'] as num).toInt(),
      start_date: (json['start_date'] as num).toInt(),
      end_date: (json['end_date'] as num).toInt(),
      start_date_verified: json['start_date_verified'] as bool?,
      end_date_verified: json['end_date_verified'] as bool?,
      area_type: $enumDecode(_$WorkZoneTypeEnumMap, json['area_type']),
      location_method:
          $enumDecode(_$LocationMethodEnumMap, json['location_method']),
      vehicle_impact:
          $enumDecode(_$VehicleImpactEnumMap, json['vehicle_impact']),
      impacted_cds_curb_zones:
          (json['impacted_cds_curb_zones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      lanes: (json['lanes'] as List<dynamic>?)
          ?.map((e) => Lane.fromJson(e as Map<String, dynamic>))
          .toList(),
      beginning_cross_street: json['beginning_cross_street'] as String?,
      ending_cross_street: json['ending_cross_street'] as String?,
      beginning_milepost: json['beginning_milepost'] as String?,
      ending_milepost: json['ending_milepost'] as String?,
      types_of_work: (json['types_of_work'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      worker_presence: json['worker_presence'] == null
          ? null
          : WorkerPresence.fromJson(
              json['worker_presence'] as Map<String, dynamic>),
      reduced_speed_limit_kph:
          (json['reduced_speed_limit_kph'] as num?)?.toDouble(),
      restrictions: (json['restrictions'] as List<dynamic>?)
          ?.map((e) => Restriction.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ActivityAreaWithIdToJson(ActivityAreaWithId instance) =>
    <String, dynamic>{
      'segment_id': instance.segment_id,
      'area_name': instance.area_name,
      'description': instance.description,
      'creation_date': instance.creation_date,
      'update_date': instance.update_date,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'start_date_verified': instance.start_date_verified,
      'end_date_verified': instance.end_date_verified,
      'area_type': _$WorkZoneTypeEnumMap[instance.area_type]!,
      'location_method': _$LocationMethodEnumMap[instance.location_method]!,
      'vehicle_impact': _$VehicleImpactEnumMap[instance.vehicle_impact]!,
      'impacted_cds_curb_zones': instance.impacted_cds_curb_zones,
      'lanes': instance.lanes,
      'beginning_cross_street': instance.beginning_cross_street,
      'ending_cross_street': instance.ending_cross_street,
      'beginning_milepost': instance.beginning_milepost,
      'ending_milepost': instance.ending_milepost,
      'types_of_work': instance.types_of_work,
      'worker_presence': instance.worker_presence,
      'reduced_speed_limit_kph': instance.reduced_speed_limit_kph,
      'restrictions': instance.restrictions,
      'geometry': instance.geometry,
      'bbox': instance.bbox,
      'id': instance.id,
    };
