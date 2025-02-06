// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recording.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recording _$RecordingFromJson(Map<String, dynamic> json) => Recording(
      project_id: (json['project_id'] as num?)?.toInt(),
      segment_id: (json['segment_id'] as num?)?.toInt(),
      area_id: (json['area_id'] as num?)?.toInt(),
      recording_name: json['recording_name'] as String,
      types_of_work: (json['types_of_work'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      start_date: (json['start_date'] as num?)?.toInt(),
      end_date: (json['end_date'] as num?)?.toInt(),
      recording_date: (json['recording_date'] as num).toInt(),
      area_type: $enumDecode(_$WorkZoneTypeEnumMap, json['area_type']),
      mobility_speed_mph: (json['mobility_speed_mph'] as num?)?.toDouble(),
      points: (json['points'] as List<dynamic>)
          .map((e) => RecordingPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecordingToJson(Recording instance) => <String, dynamic>{
      'project_id': instance.project_id,
      'segment_id': instance.segment_id,
      'area_id': instance.area_id,
      'recording_name': instance.recording_name,
      'types_of_work': instance.types_of_work,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'recording_date': instance.recording_date,
      'area_type': _$WorkZoneTypeEnumMap[instance.area_type]!,
      'mobility_speed_mph': instance.mobility_speed_mph,
      'points': instance.points,
    };

const _$WorkZoneTypeEnumMap = {
  WorkZoneType.static: 'static',
  WorkZoneType.moving: 'moving',
  WorkZoneType.plannedMovingArea: 'planned_moving_area',
};

RecordingMarking _$RecordingMarkingFromJson(Map<String, dynamic> json) =>
    RecordingMarking(
      refPt: json['refPt'] as bool?,
      laneClosed: (json['laneClosed'] as num?)?.toInt(),
      laneOpened: (json['laneOpened'] as num?)?.toInt(),
      workersPresent: json['workersPresent'] as bool?,
      speedLimitMPH: (json['speedLimitMPH'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RecordingMarkingToJson(RecordingMarking instance) =>
    <String, dynamic>{
      'refPt': instance.refPt,
      'laneClosed': instance.laneClosed,
      'laneOpened': instance.laneOpened,
      'workersPresent': instance.workersPresent,
      'speedLimitMPH': instance.speedLimitMPH,
    };

RecordingPoint _$RecordingPointFromJson(Map<String, dynamic> json) =>
    RecordingPoint(
      date: (json['date'] as num).toInt(),
      numSatellites: (json['numSatellites'] as num).toInt(),
      accuracy: (json['accuracy'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num).toDouble(),
      speed: (json['speed'] as num).toDouble(),
      heading: (json['heading'] as num).toDouble(),
      numLanes: (json['numLanes'] as num).toInt(),
      markings: (json['markings'] as List<dynamic>?)
          ?.map((e) => RecordingMarking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecordingPointToJson(RecordingPoint instance) =>
    <String, dynamic>{
      'date': instance.date,
      'numSatellites': instance.numSatellites,
      'accuracy': instance.accuracy,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'heading': instance.heading,
      'numLanes': instance.numLanes,
      'markings': instance.markings,
    };
