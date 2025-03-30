import 'package:json_annotation/json_annotation.dart';
import 'package:wzam/models/wzdx_models.dart';

part 'activity_area.g.dart';

@JsonSerializable()
class ActivityArea{
  final int segment_id;
  final String area_name;
  final String? description;
  final int creation_date;
  final int update_date;
  final int start_date;
  final int end_date;
  final bool? start_date_verified;
  final bool? end_date_verified;
  final WorkZoneType area_type;
  final LocationMethod location_method;
  final VehicleImpact vehicle_impact;
  final List<String>? impacted_cds_curb_zones;
  final List<Lane>? lanes;
  final String? beginning_cross_street;
  final String? ending_cross_street;
  final String? beginning_milepost;
  final String? ending_milepost;
  final List<TypeOfWork> types_of_work;
  final WorkerPresence? worker_presence;
  final double? reduced_speed_limit_kph;
  final List<Restriction>? restrictions;
  final List<List<double>> geometry;
  final List<List<double>>? bbox;


  ActivityArea(
    {
      required this.segment_id,
      required this.area_name,
      this.description,
      required this.creation_date,
      required this.update_date,
      required this.start_date,
      required this.end_date,
      this.start_date_verified,
      this.end_date_verified,
      required this.area_type,
      required this.location_method,
      required this.vehicle_impact,
      this.impacted_cds_curb_zones,
      this.lanes,
      this.beginning_cross_street,
      this.ending_cross_street,
      this.beginning_milepost,
      this.ending_milepost,
      required this.types_of_work,
      this.worker_presence,
      this.reduced_speed_limit_kph,
      this.restrictions,
      required this.geometry,
      this.bbox
    }
  );

  factory ActivityArea.fromJson(Map<String, dynamic> json) => _$ActivityAreaFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityAreaToJson(this);
}


@JsonSerializable()
class ActivityAreaWithId extends ActivityArea {
  final int id;

  ActivityAreaWithId({
    required this.id,
    required super.segment_id,
    required super.area_name,
    super.description,
    required super.creation_date,
    required super.update_date,
    required super.start_date,
    required super.end_date,
    super.start_date_verified,
    super.end_date_verified,
    required super.area_type,
    required super.location_method,
    required super.vehicle_impact,
    super.impacted_cds_curb_zones,
    super.lanes,
    super.beginning_cross_street,
    super.ending_cross_street,
    super.beginning_milepost,
    super.ending_milepost,
    required super.types_of_work,
    super.worker_presence,
    super.reduced_speed_limit_kph,
    super.restrictions,
    required super.geometry,
    super.bbox
  });

  factory ActivityAreaWithId.fromJson(Map<String, dynamic> json) => _$ActivityAreaWithIdFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityAreaWithIdToJson(this);
}


