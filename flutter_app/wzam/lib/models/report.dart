import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'report.g.dart';

@JsonSerializable()
class Report{
  final int? projectId;
  final int? segmentId;
  final int? areaId;
  final String reportName;
  final List<TypeOfWork> typesOfWork;
  final bool workersPresent;
  final int? startDate;
  final int? endDate;
  final int reportDate;
  final WorkZoneType areaType;
  final double? mobilitySpeedMPH;
  final GeometryType geometryType;
  final List<double> point;
  
  Report(
      {this.projectId,
      this.segmentId,
      this.areaId,
      required this.reportName,
      required this.typesOfWork,
      required this.workersPresent,
      this.startDate,
      this.endDate,
      required this.reportDate,
      required this.areaType,
      this.mobilitySpeedMPH,
      required this.geometryType,
      required this.point});

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  Map<String, dynamic> toJson() => _$ReportToJson(this);
}

@JsonSerializable()
class ReportWithId extends Report {
  final int id;

  ReportWithId({
    required this.id,
    super.projectId,
    super.segmentId,
    super.areaId,
    required super.reportName,
    required super.typesOfWork,
    required super.workersPresent,
    super.startDate,
    super.endDate,
    required super.reportDate,
    required super.areaType,
    super.mobilitySpeedMPH,
    required super.geometryType,
    required super.point,
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