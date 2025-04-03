import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'project.g.dart';

@JsonSerializable()
class Project{
  final String name;
  final String description;
  final String tmc_notes;
  final ProjectStatus active_status;
  final String hyperlink;
  final int start_date;
  final int end_date;
  final List<String> districts;
  final String wydot_contact;
  final String project_update_contact;
  final String traffic_control_contact;
  final String emergency_contact;
  final String contractor;
  final List<String> selected_towns;
  final List<List<double>> geometry;
  final List<List<double>>? bbox;
  
  Project(
      {required this.name,
      required this.description,
      required this.tmc_notes,
      required this.active_status,
      required this.hyperlink,
      required this.start_date,
      required this.end_date,
      required this.districts,
      required this.wydot_contact,
      required this.project_update_contact,
      required this.traffic_control_contact,
      required this.emergency_contact,
      required this.contractor,
      required this.selected_towns,
      required this.geometry,
      this.bbox,
      });

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class ProjectWithId extends Project {
  final int id;

  ProjectWithId({
    required this.id,
    required super.name,
    required super.description,
    required super.tmc_notes,
    required super.active_status,
    required super.hyperlink,
    required super.start_date,
    required super.end_date,
    required super.districts,
    required super.wydot_contact,
    required super.project_update_contact,
    required super.traffic_control_contact,
    required super.emergency_contact,
    required super.contractor,
    required super.selected_towns,
    required super.geometry,
    super.bbox,
  });

  factory ProjectWithId.fromJson(Map<String, dynamic> json) => _$ProjectWithIdFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectWithIdToJson(this);
}

enum ProjectStatus {
  @JsonValue('active')
  active,
  @JsonValue('suspended')
  suspended,
}

