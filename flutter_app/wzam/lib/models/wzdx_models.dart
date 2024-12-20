import 'package:json_annotation/json_annotation.dart';

part 'wzdx_models.g.dart';

enum WorkZoneType {
  @JsonValue('static')
  static,
  @JsonValue('moving')
  moving,
  @JsonValue('planned_moving_area')
  plannedMovingArea,
}

enum LocationMethod {
  @JsonValue('channel_device_method')
  channelDeviceMethod,
  @JsonValue('sign_method')
  signMethod,
  @JsonValue('junction_method')
  junctionMethod,
  @JsonValue('other')
  other,
  @JsonValue('unknown')
  unknown,
}

enum VehicleImpact {
  @JsonValue('all-lanes-closed')
  allLanesClosed,
  @JsonValue('some-lanes-closed')
  someLanesClosed,
  @JsonValue('all-lanes-open')
  allLanesOpen,
  @JsonValue('alternating-one-way')
  alternatingOneWay,
  @JsonValue('some-lanes-closed-merge-left')
  someLanesClosedMergeLeft,
  @JsonValue('some-lanes-closed-merge-right')
  someLanesClosedMergeRight,
  @JsonValue('all-lanes-open-shift-left')
  allLanesOpenShiftLeft,
  @JsonValue('all-lanes-open-shift-right')
  allLanesOpenShiftRight,
  @JsonValue('some-lanes-closed-split')
  someLanesClosedSplit,
  @JsonValue('flagging')
  flagging,
  @JsonValue('temporary-traffic-signal')
  temporaryTrafficSignal,
  @JsonValue('unknown')
  unknown,
}

enum LaneType {
  @JsonValue('exit-lane')
  exitLane,
  @JsonValue('exit-ramp')
  exitRamp,
  @JsonValue('entrance-lane')
  entranceLane,
  @JsonValue('entrance-ramp')
  entranceRamp,
  @JsonValue('sidewalk')
  sidewalk,
  @JsonValue('bike-lane')
  bikeLane,
  @JsonValue('shoulder')
  shoulder,
  @JsonValue('parking')
  parking,
  @JsonValue('median')
  median,
  @JsonValue('two-way-center-turn-lane')
  twoWayCenterTurnLane,
}

enum LaneStatus {
  @JsonValue('open')
  open,
  @JsonValue('closed')
  closed,
  @JsonValue('shift-left')
  shiftLeft,
  @JsonValue('shift-right')
  shiftRight,
  @JsonValue('merge-left')
  mergeLeft,
  @JsonValue('merge-right')
  mergeRight,
  @JsonValue('alternating-flow')
  alternatingFlow,
}

enum RestrictionType {
  @JsonValue('local-access-only')
  localAccessOnly,
  @JsonValue('no-trucks')
  noTrucks,
  @JsonValue('travel-peak-hours-only')
  travelPeakHoursOnly,
  @JsonValue('hov-3')
  hov3,
  @JsonValue('hov-2')
  hov2,
  @JsonValue('no-parking')
  noParking,
  @JsonValue('reduced-width')
  reducedWidth,
  @JsonValue('reduced-height')
  reducedHeight,
  @JsonValue('reduced-length')
  reducedLength,
  @JsonValue('reduced-weight')
  reducedWeight,
  @JsonValue('axle-load-limit')
  axleLoadLimit,
  @JsonValue('gross-weight-limit')
  grossWeightLimit,
  @JsonValue('towing-prohibited')
  towingProhibited,
  @JsonValue('permitted-oversize-loads-prohibited')
  permittedOversizeLoadsProhibited,
  @JsonValue('no-passing')
  noPassing,
}

enum UnitOfMeasurement {
  @JsonValue('feet')
  feet,
  @JsonValue('meters')
  meters,
  @JsonValue('centimeters')
  centimeters,
  @JsonValue('pounds')
  pounds,
  @JsonValue('tons')
  tons,
  @JsonValue('kilograms')
  kilograms,
}

@JsonSerializable()
class Restriction {
  final RestrictionType type;
  final double value;
  final UnitOfMeasurement unit;

  Restriction({
    required this.type,
    required this.value,
    required this.unit,
  });

  factory Restriction.fromJson(Map<String, dynamic> json) => _$RestrictionFromJson(json);
  Map<String, dynamic> toJson() => _$RestrictionToJson(this);
}

@JsonSerializable()
class Lane {
  @JsonKey(name: 'lane_order')
  final int laneOrder;
  final LaneType type;
  final LaneStatus status;
  final List<Restriction> restrictions;

  Lane({
    required this.laneOrder,
    required this.type,
    required this.status,
    required this.restrictions,
  });

  factory Lane.fromJson(Map<String, dynamic> json) => _$LaneFromJson(json);
  Map<String, dynamic> toJson() => _$LaneToJson(this);
}

enum WorkTypeName {
  @JsonValue('maintenance')
  maintenance,
  @JsonValue('minor-road-defect-repair')
  minorRoadDefectRepair,
  @JsonValue('roadside-work')
  roadsideWork,
  @JsonValue('overhead-work')
  overheadWork,
  @JsonValue('below-road-work')
  belowRoadWork,
  @JsonValue('barrier-work')
  barrierWork,
  @JsonValue('surface-work')
  surfaceWork,
  @JsonValue('painting')
  painting,
  @JsonValue('roadway-relocation')
  roadwayRelocation,
  @JsonValue('roadway-creation')
  roadwayCreation,
}

@JsonSerializable()
class TypeOfWork {
  @JsonKey(name: 'type_name')
  final WorkTypeName typeName;
  @JsonKey(name: 'is_architectural_change')
  final bool isArchitecturalChange;

  TypeOfWork({
    required this.typeName,
    required this.isArchitecturalChange,
  });

  factory TypeOfWork.fromJson(Map<String, dynamic> json) => _$TypeOfWorkFromJson(json);
  Map<String, dynamic> toJson() => _$TypeOfWorkToJson(this);
}

enum WorkerPresenceDefinition {
  @JsonValue('workers-in-work-zone-working')
  workersInWorkZoneWorking,
  @JsonValue('workers-in-work-zone-not-working')
  workersInWorkZoneNotWorking,
  @JsonValue('mobile-equipment-in-work-zone-moving')
  mobileEquipmentInWorkZoneMoving,
  @JsonValue('mobile-equipment-in-work-zone-not-moving')
  mobileEquipmentInWorkZoneNotMoving,
  @JsonValue('fixed-equipment-in-work-zone')
  fixedEquipmentInWorkZone,
  @JsonValue('humans-behind-barrier')
  humansBehindBarrier,
  @JsonValue('humans-in-right-of-way')
  humansInRightOfWay,
}

enum WorkerPresenceMethod {
  @JsonValue('camera-monitoring')
  cameraMonitoring,
  @JsonValue('arrow-board-present')
  arrowBoardPresent,
  @JsonValue('cones-present')
  conesPresent,
  @JsonValue('maintenance-vehicle-present')
  maintenanceVehiclePresent,
  @JsonValue('wearables-present')
  wearablesPresent,
  @JsonValue('mobile-device-present')
  mobileDevicePresent,
  @JsonValue('check-in-app')
  checkInApp,
  @JsonValue('check-in-verbal')
  checkInVerbal,
  @JsonValue('scheduled')
  scheduled,
}

enum WorkerPresenceConfidence {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
}

@JsonSerializable()
class WorkerPresence {
  @JsonKey(name: 'are_workers_present')
  final bool areWorkersPresent;
  final WorkerPresenceDefinition definition;
  final WorkerPresenceMethod method;
  @JsonKey(name: 'worker_presence_last_confirmed_date')
  final int workerPresenceLastConfirmedDate;
  final WorkerPresenceConfidence confidence;

  WorkerPresence({
    required this.areWorkersPresent,
    required this.definition,
    required this.method,
    required this.workerPresenceLastConfirmedDate,
    required this.confidence,
  });

  factory WorkerPresence.fromJson(Map<String, dynamic> json) => _$WorkerPresenceFromJson(json);
  Map<String, dynamic> toJson() => _$WorkerPresenceToJson(this);
}