// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Report _$ReportFromJson(Map<String, dynamic> json) => Report(
      projectId: (json['projectId'] as num?)?.toInt(),
      segmentId: (json['segmentId'] as num?)?.toInt(),
      areaId: (json['areaId'] as num?)?.toInt(),
      reportName: json['reportName'] as String,
      typesOfWork: (json['typesOfWork'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      workersPresent: json['workersPresent'] as bool,
      startDate: (json['startDate'] as num?)?.toInt(),
      endDate: (json['endDate'] as num?)?.toInt(),
      reportDate: (json['reportDate'] as num).toInt(),
      areaType: $enumDecode(_$WorkZoneTypeEnumMap, json['areaType']),
      mobilitySpeedMPH: (json['mobilitySpeedMPH'] as num?)?.toDouble(),
      geometryType: $enumDecode(_$GeometryTypeEnumMap, json['geometryType']),
      point: (json['point'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$ReportToJson(Report instance) => <String, dynamic>{
      'projectId': instance.projectId,
      'segmentId': instance.segmentId,
      'areaId': instance.areaId,
      'reportName': instance.reportName,
      'typesOfWork': instance.typesOfWork,
      'workersPresent': instance.workersPresent,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'reportDate': instance.reportDate,
      'areaType': _$WorkZoneTypeEnumMap[instance.areaType]!,
      'mobilitySpeedMPH': instance.mobilitySpeedMPH,
      'geometryType': _$GeometryTypeEnumMap[instance.geometryType]!,
      'point': instance.point,
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

ReportWithId _$ReportWithIdFromJson(Map<String, dynamic> json) => ReportWithId(
      id: (json['id'] as num).toInt(),
      projectId: (json['projectId'] as num?)?.toInt(),
      segmentId: (json['segmentId'] as num?)?.toInt(),
      areaId: (json['areaId'] as num?)?.toInt(),
      reportName: json['reportName'] as String,
      typesOfWork: (json['typesOfWork'] as List<dynamic>)
          .map((e) => TypeOfWork.fromJson(e as Map<String, dynamic>))
          .toList(),
      workersPresent: json['workersPresent'] as bool,
      startDate: (json['startDate'] as num?)?.toInt(),
      endDate: (json['endDate'] as num?)?.toInt(),
      reportDate: (json['reportDate'] as num).toInt(),
      areaType: $enumDecode(_$WorkZoneTypeEnumMap, json['areaType']),
      mobilitySpeedMPH: (json['mobilitySpeedMPH'] as num?)?.toDouble(),
      geometryType: $enumDecode(_$GeometryTypeEnumMap, json['geometryType']),
      point: (json['point'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$ReportWithIdToJson(ReportWithId instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'segmentId': instance.segmentId,
      'areaId': instance.areaId,
      'reportName': instance.reportName,
      'typesOfWork': instance.typesOfWork,
      'workersPresent': instance.workersPresent,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'reportDate': instance.reportDate,
      'areaType': _$WorkZoneTypeEnumMap[instance.areaType]!,
      'mobilitySpeedMPH': instance.mobilitySpeedMPH,
      'geometryType': _$GeometryTypeEnumMap[instance.geometryType]!,
      'point': instance.point,
      'id': instance.id,
    };
