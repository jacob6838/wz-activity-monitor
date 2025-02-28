import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/pages/home.dart';

class RecordingController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  FileStorageService fileStorageService = Get.find<FileStorageService>();
  late Rx<Position?> currentPosition;
  int? iD = 0;
  int? projectId = 0;
  int? segmentId = 0;
  int? areaId = 0;
  String recordingName = '';
  List<TypeOfWork> typesOfWork = [];
  int? startDate = 0;
  int? endDate = 0;
  int recordingDate = 0;
  WorkZoneType areaType = WorkZoneType.static;
  double? mobilitySpeedMPH = 0.0;
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  RxList<Marker> recordingMarkers = <Marker>[].obs;
  Rx<PolylineLayer> polylineLayer = const PolylineLayer(polylines: <Polyline>[]).obs;
  RxBool recording = false.obs;
  RxBool workersPresent = false.obs;
  List<RecordingPoint> points = [];
  List<LatLng> pointsLatLng = [];

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    _updateMarkerLayer();
  }

  void startListeningToLocation() {
    locationService.locationStream.listen((Position position) {
      if (mapController != null) {
        if (recording.value) {
          List<RecordingMarking> markings = [];
          if (workersPresent.value) {
            RecordingMarking marking = RecordingMarking(workersPresent: true,);
            markings.add(marking);
          }
          RecordingPoint recordingPoint = RecordingPoint(
            date: 0,
            numSatellites: 0,
            accuracy: position.accuracy,
            latitude: position.latitude,
            longitude: position.longitude,
            altitude: position.altitude,
            speed: position.speed,
            heading: position.heading,
            markings: markings,
          );
          points.add(recordingPoint);
          pointsLatLng.add(LatLng(position.latitude, position.longitude));
          _addPointToPolyline(position.latitude, position.longitude);
        }
        _updateMarkerLayer();
        _updateMap();
      }
    });
  }

  void _updateMap() {
    if (mapController != null) {
      mapController!.move(LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude), 17);
    }
  }
  
  Marker _userLocationMarker(double lat, double long) {
    return Marker(
        point: LatLng(lat, long),
        child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(Icons.directions_car, color: Color.fromARGB(255, 3, 134, 25), size: 25.0)),
        rotate: true
    );
  }

  void _updateMarkerLayer() {
    markerLayer.value = MarkerLayer(markers: <Marker>[_userLocationMarker(currentPosition.value!.latitude, currentPosition.value!.longitude),...recordingMarkers]);
  }

  void _addPointToPolyline(double lat, double long) {
    pointsLatLng.add(LatLng(lat, long));
    Polyline polyline = Polyline(
      points: pointsLatLng,
      strokeWidth: 5.0,
      color: Colors.red,
    );
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[polyline]);
  }

  void _addMarker(Marker marker) {
    recordingMarkers.add(marker);
    _updateMarkerLayer();
  }

  void startWorkZoneRecording() {
    recording.value = true;
  }

  void stopWorkZoneRecording() {
    recording.value = false;
    _saveRecording();
    Get.dialog(_createRecordingDialog());
  }

  void toggleWorkersPresent() {
    if (!workersPresent.value) {
      Marker marker = Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: const Icon(Icons.location_on, color: Colors.blue, size: 25.0),
      );
      _addMarker(marker);
    } else {
      Marker marker = Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: const Icon(Icons.location_off, color: Color.fromARGB(255, 7, 72, 125), size: 25.0),
      );
      _addMarker(marker);
    }
    workersPresent.value = !workersPresent.value;
  }

  void _saveRecording() {
    Recording recording = Recording(
      id: iD!,
      projectId: projectId!,
      segmentId: segmentId!,
      areaId: areaId!,
      recordingName: recordingName,
      typesOfWork: typesOfWork,
      startDate: startDate!,
      endDate: endDate!,
      recordingDate: recordingDate,
      areaType: areaType,
      mobilitySpeedMPH: mobilitySpeedMPH,
      points: points,
    );
    fileStorageService.saveRecording(recording);
  }

  AlertDialog _createRecordingDialog() {
    return AlertDialog(
      title: const Text('Recording Saved'),
      content: const Text('The recording has been saved.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Get.offAll(() => Home());
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
