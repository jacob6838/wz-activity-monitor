import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'report.g.dart';

@JsonSerializable()
class Report{
  final int? project_id;
  final int? segment_id;
  final int? area_id;
  final String report_name;
  final List<TypeOfWork> types_of_work;
  final bool workers_present;
  final int? start_date;
  final int? end_date;
  final int report_date;
  final WorkZoneType area_type;
  final double? mobility_speed_mph;
  final GeometryType geometry_type;
  final List<List<double>> geometry;
  final double? geometry_line_width;
  final String? license_plate;
  final RoadSegmentSurfaceType? surface_type; 
  //final List<double> point;
  
  Report(
      {this.project_id,
      this.segment_id,
      this.area_id,
      required this.report_name,
      required this.types_of_work,
      required this.workers_present,
      this.start_date,
      this.end_date,
      required this.report_date,
      required this.area_type,
      this.mobility_speed_mph,
      required this.geometry_type,
      required this.geometry,
      this.geometry_line_width,
      this.license_plate,
      this.surface_type,
      });

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  Map<String, dynamic> toJson() => _$ReportToJson(this);
}

@JsonSerializable()
class ReportWithId extends Report {
  final int id;

  ReportWithId({
    required this.id,
    super.project_id,
    super.segment_id,
    super.area_id,
    required super.report_name,
    required super.types_of_work,
    required super.workers_present,
    super.start_date,
    super.end_date,
    required super.report_date,
    required super.area_type,
    super.mobility_speed_mph,
    required super.geometry_type,
    required super.geometry,
    super.geometry_line_width,
    super.license_plate,
    super.surface_type,
  });

  factory ReportWithId.fromJson(Map<String, dynamic> json) => _$ReportWithIdFromJson(json);

  Map<String, dynamic> toJson() => _$ReportWithIdToJson(this);
}

enum GeometryType {
  @JsonValue('multipoint')
  multipoint,
  @JsonValue('linestring')
  linestring,
  @JsonValue('polygon')
  polygon,
}
