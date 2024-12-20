import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'recording.g.dart';

@JsonSerializable()
class Recording{
  final int? id;
  final int? projectId;
  final int? segmentId;
  final int? areaId;
  final String recordingName;
  final List<TypeOfWork> typesOfWork;
  final int? startDate;
  final int? endDate;
  final int recordingDate;
  final WorkZoneType areaType;
  final double? mobilitySpeedMPH;
  final List<RecordingPoint> points;
  
  Recording(
      {required this.id, 
      required this.projectId,
      required this.segmentId,
      required this.areaId,
      required this.recordingName,
      required this.typesOfWork,
      required this.startDate,
      required this.endDate,
      required this.recordingDate,
      required this.areaType,
      required this.mobilitySpeedMPH,
      required this.points});

  factory Recording.fromJson(Map<String, dynamic> json) => _$RecordingFromJson(json);
  Map<String, dynamic> toJson() => _$RecordingToJson(this);
}

@JsonSerializable()
class RecordingMarking{
  final bool? refPt;
  final int? laneClosed;
  final int? laneOpened;
  final bool? workersPresent;
  
  RecordingMarking(
      {this.refPt, 
      this.laneClosed,
      this.laneOpened,
      this.workersPresent});

  factory RecordingMarking.fromJson(Map<String, dynamic> json) => _$RecordingMarkingFromJson(json);
  Map<String, dynamic> toJson() => _$RecordingMarkingToJson(this);
}

@JsonSerializable()
class RecordingPoint{
  final int date;
  final int numSatellites;
  final double accuracy;
  final double latitude;
  final double longitude;
  final double altitude;
  final double speed;
  final double heading;
  final List<RecordingMarking>? markings;
  
  RecordingPoint(
      {required this.date, 
      required this.numSatellites,
      required this.accuracy,
      required this.latitude,
      required this.longitude,
      required this.altitude,
      required this.speed,
      required this.heading,
      required this.markings});

  factory RecordingPoint.fromJson(Map<String, dynamic> json) => _$RecordingPointFromJson(json);
  Map<String, dynamic> toJson() => _$RecordingPointToJson(this);
}