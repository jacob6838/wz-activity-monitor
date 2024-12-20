// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recording.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recording _$RecordingFromJson(Map<String, dynamic> json) => Recording(
      id: (json['id'] as num?)?.toInt(),
      projectId: (json['projectId'] as num?)?.toInt(),
      segmentId: (json['segmentId'] as num?)?.toInt(),
      areaId: (json['areaId'] as num?)?.toInt(),
      recordingName: json['recordingName'] as String,
      typesOfWork: (json['typesOfWork'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate: (json['startDate'] as num?)?.toInt(),
      endDate: (json['endDate'] as num?)?.toInt(),
      recordingDate: (json['recordingDate'] as num).toInt(),
      areaType: $enumDecode(_$WorkZoneTypeEnumMap, json['areaType']),
      mobilitySpeedMPH: (json['mobilitySpeedMPH'] as num?)?.toDouble(),
      points: (json['points'] as List<dynamic>)
          .map((e) => RecordingPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecordingToJson(Recording instance) => <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'segmentId': instance.segmentId,
      'areaId': instance.areaId,
      'recordingName': instance.recordingName,
      'typesOfWork': instance.typesOfWork,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'recordingDate': instance.recordingDate,
      'areaType': _$WorkZoneTypeEnumMap[instance.areaType]!,
      'mobilitySpeedMPH': instance.mobilitySpeedMPH,
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
    );

Map<String, dynamic> _$RecordingMarkingToJson(RecordingMarking instance) =>
    <String, dynamic>{
      'refPt': instance.refPt,
      'laneClosed': instance.laneClosed,
      'laneOpened': instance.laneOpened,
      'workersPresent': instance.workersPresent,
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
      'markings': instance.markings,
    };
