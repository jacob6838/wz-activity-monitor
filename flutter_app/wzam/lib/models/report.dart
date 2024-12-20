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
      {required this.projectId,
      required this.segmentId,
      required this.areaId,
      required this.reportName,
      required this.typesOfWork,
      required this.workersPresent,
      required this.startDate,
      required this.endDate,
      required this.reportDate,
      required this.areaType,
      required this.mobilitySpeedMPH,
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
    required int? projectId,
    required int? segmentId,
    required int? areaId,
    required String reportName,
    required List<TypeOfWork> typesOfWork,
    required bool workersPresent,
    required int? startDate,
    required int? endDate,
    required int reportDate,
    required WorkZoneType areaType,
    required double? mobilitySpeedMPH,
    required GeometryType geometryType,
    required List<double> point,
  }) : super(
          projectId: projectId,
          segmentId: segmentId,
          areaId: areaId,
          reportName: reportName,
          typesOfWork: typesOfWork,
          workersPresent: workersPresent,
          startDate: startDate,
          endDate: endDate,
          reportDate: reportDate,
          areaType: areaType,
          mobilitySpeedMPH: mobilitySpeedMPH,
          geometryType: geometryType,
          point: point,
        );

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