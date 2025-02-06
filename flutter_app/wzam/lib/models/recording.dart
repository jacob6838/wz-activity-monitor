import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'recording.g.dart';

@JsonSerializable()
class Recording{
  final int? project_id;
  final int? segment_id;
  final int? area_id;
  final String recording_name;
  final List<TypeOfWork> types_of_work;
  final int? start_date;
  final int? end_date;
  final int recording_date;
  final WorkZoneType area_type;
  final double? mobility_speed_mph;
  final List<RecordingPoint> points;
  
  Recording(
      {required this.project_id,
      required this.segment_id,
      required this.area_id,
      required this.recording_name,
      required this.types_of_work,
      required this.start_date,
      required this.end_date,
      required this.recording_date,
      required this.area_type,
      required this.mobility_speed_mph,
      required this.points});

  factory Recording.fromJson(Map<String, dynamic> json) => _$RecordingFromJson(json);
  Map<String, dynamic> toJson() => _$RecordingToJson(this);
}

@JsonSerializable()
class RecordingMarking{
  final bool? ref_pt;
  final int? lane_closed;
  final int? lane_opened;
  final bool? workers_present;
  final double? speed_limit_mph;
  
  RecordingMarking(
      {this.ref_pt, 
      this.lane_closed,
      this.lane_opened,
      this.workers_present,
      this.speed_limit_mph});

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
  final int numLanes; 
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
      required this.numLanes,
      required this.markings});

  factory RecordingPoint.fromJson(Map<String, dynamic> json) => _$RecordingPointFromJson(json);
  Map<String, dynamic> toJson() => _$RecordingPointToJson(this);
}