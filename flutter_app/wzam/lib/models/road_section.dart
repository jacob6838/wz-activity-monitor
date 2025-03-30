import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'road_section.g.dart';

@JsonSerializable()
class RoadSection{
  final int project_id;
  final String? segment_name;
  final RoadSectionType reference_type;
  final String start_mm;
  final String end_mm;
  final RoadSegmentDirection direction;
  final RoadSegmentSurfaceType surface_type;
  final int? start_date;
  final int? end_date;
  final RoadSegmentArmedStatus armed_status;
  final List<List<double>> geometry;
  final List<List<double>>? bbox; 

  RoadSection(
    {
      required this.project_id,
      this.segment_name,
      required this.reference_type,
      required this.start_mm,
      required this.end_mm,
      required this.direction,
      required this.surface_type,
      this.start_date,
      this.end_date,
      required this.armed_status,
      required this.geometry,
      this.bbox
    }
  );

  factory RoadSection.fromJson(Map<String, dynamic> json) => _$RoadSectionFromJson(json);

  Map<String, dynamic> toJson() => _$RoadSectionToJson(this);
}

@JsonSerializable()
class RoadSectionWithId extends RoadSection {
  final int id;

  RoadSectionWithId({
    required this.id,
    required super.project_id,
    super.segment_name,
    required super.reference_type,
    required super.start_mm,
    required super.end_mm,
    required super.direction,
    required super.surface_type,
    super.start_date,
    super.end_date,
    required super.armed_status,
    required super.geometry,
    super.bbox,
  });

  factory RoadSectionWithId.fromJson(Map<String, dynamic> json) => _$RoadSectionWithIdFromJson(json);

  Map<String, dynamic> toJson() => _$RoadSectionWithIdToJson(this);
}

enum RoadSegmentDirection {
  @JsonValue('both')
  both,
  @JsonValue('northbound')
  northbound,
  @JsonValue('southbound')
  southbound,
  @JsonValue('eastbound')
  eastbound,
  @JsonValue('westbound')
  westbound
}

enum RoadSectionType {
  @JsonValue('highway')
  highway,
  @JsonValue('county_road')
  county_road,
  @JsonValue('lrs')
  lrs,
}

enum RoadSegmentArmedStatus {
  @JsonValue('armed')
  armed,
  @JsonValue('disarmed')
  disarmed,
}


