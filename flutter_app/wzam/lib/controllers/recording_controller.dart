import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/pages/home.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:http/http.dart' as http;

import '../ui/styles/app_colors.dart';

//This controller is used to manage the recording map and recording variables needed to create the recording file
class RecordingController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  FileStorageService fileStorageService = Get.find<FileStorageService>();
  late Rx<Position?> currentPosition;
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
  RxBool inWorkZone = false.obs;
  bool refPtNeedToMark = false;
  RxBool workersPresent = false.obs;
  bool workersPresentNeedToMark = false;
  RxList<bool> lanesOpened = <bool>[].obs;
  int laneChangeNeedToMark = 0;
  bool recordingLocation = true;
  List<RecordingPoint> points = [];
  List<LatLng> nonWorkZonePointsLatLng = [];
  List<LatLng> pointsLatLng = [];
  RxInt currentSpeedLimit = 0.obs;
  int speedLimitChangeNeedToMark = 0;
  RxDouble mapZoom = 17.0.obs;
  bool updatingMap = true;
  

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
        if (recordingLocation) {
          List<RecordingMarking> markings = [];
          //TODO: I'm not sure this is correct. 
          if (workersPresentNeedToMark) {
            RecordingMarking marking = RecordingMarking(workers_present: workersPresent.value);
            markings.add(marking);
            workersPresentNeedToMark = false;
          }
          if(refPtNeedToMark) {
            RecordingMarking marking = RecordingMarking(ref_pt: inWorkZone.value);
            markings.add(marking);
            refPtNeedToMark = false;
          }
          if (laneChangeNeedToMark != 0) {
            if (lanesOpened[laneChangeNeedToMark - 1]) {
              print("went open");
              RecordingMarking marking = RecordingMarking(lane_opened: laneChangeNeedToMark);
              markings.add(marking);
            } else {
              print("went closed");
              RecordingMarking marking = RecordingMarking(lane_closed: laneChangeNeedToMark);
              markings.add(marking);
            }
            laneChangeNeedToMark = 0;
          }
          if (speedLimitChangeNeedToMark != 0) {
            RecordingMarking marking = RecordingMarking(speed_limit_mph: currentSpeedLimit.value.toDouble());
            markings.add(marking);
            speedLimitChangeNeedToMark = 0;
          }
          RecordingPoint recordingPoint = RecordingPoint(
            date: 0, //TODO: Put this in when time on the server is figured out
            numSatellites: 0, //TODO: Figure out how to get this
            accuracy: position.accuracy,
            latitude: position.latitude,
            longitude: position.longitude,
            altitude: position.altitude,
            speed: position.speed,
            heading: position.heading,
            numLanes: lanesOpened.length,
            markings: markings.isEmpty ? null : markings,
          );
          points.add(recordingPoint);
          //pointsLatLng.add(LatLng(position.latitude, position.longitude));       
          _addPointToPolyline(position.latitude, position.longitude);
        }
        if (updatingMap) {
          _updateMarkerLayer();
          updateMap();
        }
      }
    });
  }

  void updateMap() {
    if (mapController != null) {
      mapController!.move(LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude), mapZoom.value);
    }
  }
  
  Marker _userLocationMarker(double lat, double long) {
    return Marker(
        point: LatLng(lat, long),
        child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.7),
            ),
            child: Icon(Icons.directions_car, color: Colors.black, size: 25.0)),
        rotate: true
    );
  }

  void _updateMarkerLayer() {
    if (updatingMap) {
      markerLayer.value = MarkerLayer(markers: <Marker>[...recordingMarkers, _userLocationMarker(currentPosition.value!.latitude, currentPosition.value!.longitude)]);
    } else {
      markerLayer.value = MarkerLayer(markers: <Marker>[...recordingMarkers]);
    }
  }

  void _addPointToPolyline(double lat, double long) {
    if (!inWorkZone.value) {
      nonWorkZonePointsLatLng.add(LatLng(lat, long));
    } else {
      if (pointsLatLng.isEmpty) {
        pointsLatLng.add(nonWorkZonePointsLatLng.last);
      }
      pointsLatLng.add(LatLng(lat, long));
    }
    Polyline nonWorkZonePolyline = Polyline(
      points: nonWorkZonePointsLatLng,
      strokeWidth: 3.0,
      color: darkGrey,
    );
    Polyline workZonePolyline = Polyline(
      points: pointsLatLng,
      strokeWidth: 5.0,
      color: primaryColor,
    );
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[nonWorkZonePolyline, workZonePolyline]);
  }

  void setLanesOpened(int maxLanes) {
    lanesOpened.clear();
    for (int i = 0; i < maxLanes; i++) {
      lanesOpened.add(true);
    }
  }

  void _addMarker(Marker marker) {
    recordingMarkers.add(marker);
    _updateMarkerLayer();
  }

  void startWorkZoneRecording() {
    currentSpeedLimit.value = mobilitySpeedMPH!.toInt(); //TODO: Figure Out what this mobility speed thing is
    inWorkZone.value = true;
    refPtNeedToMark = true;
  }

  void stopWorkZoneRecording() {
    refPtNeedToMark = true;
    inWorkZone.value = false;
    recordingLocation = false;
    addStopWorkZoneToRecording();
    _saveRecording();
    updatingMap = false;
    _showFullRecordingMap();
    Get.dialog(_createRecordingDialog());
  }


  void _showFullRecordingMap() {
    List<LatLng> constraintPoints = findRecordingBounds();
    LatLngBounds bounds = LatLngBounds(constraintPoints.first, constraintPoints.last);
    CameraFit cameraFit = CameraFit.bounds(bounds: bounds, padding: EdgeInsets.all(60.0));
    _updateMarkerLayer();
    mapController!.fitCamera(cameraFit);
  }

  void toggleWorkersPresent() {
    workersPresentNeedToMark = true;
    if (!workersPresent.value) {
      Marker marker = Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Container( 
          width: 20,
          height: 30,
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset('assets/images/workers_present.png'),
        ),
        rotate: true,
      );
      _addMarker(marker);
    } else {
      Marker marker = Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Container( 
          width: 20,
          height: 30,
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Image.asset('assets/images/workers_not_present.png'),
        ),
        rotate: true,
      );
      _addMarker(marker);
    }
    workersPresent.value = !workersPresent.value;
  }

  void addStopWorkZoneToRecording() {
    late RecordingMarking marking;
    refPtNeedToMark = false;
    if (workersPresent.value == true) {
      marking = RecordingMarking(ref_pt: refPtNeedToMark, workers_present: false);
    }else {
      marking = RecordingMarking(ref_pt: refPtNeedToMark);
    }
    RecordingPoint lastpoint = points.last;
    RecordingPoint newLastPoint = RecordingPoint(
      date: 0,
      numSatellites: 0,
      accuracy: lastpoint.accuracy,
      latitude: lastpoint.latitude,
      longitude: lastpoint.longitude,
      altitude: lastpoint.altitude,
      speed: lastpoint.speed,
      heading: lastpoint.heading,
      numLanes: lastpoint.numLanes,
      markings: <RecordingMarking>[marking],
    );
    points.removeLast();
    points.add(newLastPoint);
  }

  void _saveRecording() {
    Recording recording = Recording(
      project_id: projectId,
      segment_id: segmentId,
      area_id: areaId,
      recording_name: recordingName,
      types_of_work: typesOfWork,
      start_date: startDate,
      end_date: endDate,
      recording_date: recordingDate,
      area_type: areaType,
      mobility_speed_mph: mobilitySpeedMPH,
      points: points,
    );
    //fileStorageService.saveRecording(recording);
    postRecording(recording);
  }

  void postRecording(Recording recording) async {

    final url = Uri.parse('https://wzamapi.azurewebsites.net/recordings');
    final headers = {'Content-Type': 'application/json'};
    try {
      final response = await http.post(url, 
        headers: headers, 
        body: json.encode( 
          {
            "project_id": recording.project_id,
            "segment_id": recording.segment_id,
            "area_id": recording.area_id,
            "recording_name": recording.recording_name,
            "types_of_work": recording.types_of_work.map((e) => e.toJson()).toList(),
            "start_date": 0,
            "end_date": 0,
            "recording_date": 0,
            "area_type": recording.area_type.toString().split('.').last,
            "mobility_speed_mph": recording.mobility_speed_mph,
            'points': recording.points.map((point) => {
              'date': point.date,
              'num_satellites': point.numSatellites,
              'accuracy': point.accuracy,
              'latitude': point.latitude,
              'longitude': point.longitude,
              'altitude': point.altitude,
              'speed': point.speed,
              'heading': point.heading,
              'num_lanes': point.numLanes,
              'markings': point.markings?.map((marking) => marking.toJson()).toList(),
            }).toList(),
          }
        )
      );
      if (response.statusCode == 200) {
        print('Recording posted successfully');
        fileStorageService.saveRecording(recording, true);
      } else {
        print('Failed to post recording: ${response.statusCode}');
        fileStorageService.saveRecording(recording, false);
      }
    } catch (e) {
      print('Error posting recording: $e');
      fileStorageService.saveRecording(recording, false);
    }
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
        TextButton(  
          onPressed: () {
            Get.back();
          },
          child: const Text('View Recording'),
        )
      ],
    );
  }

  void lanesChanging(int location) {
    laneChangeNeedToMark = location + 1;
    //lanesOpened[location] = !lanesOpened[location];
    Marker marker = Marker(
      point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
      child: Container( 
        width: 20,
        height: 30,
        decoration: BoxDecoration(
          color: lightGrey,
          shape: BoxShape.circle,
        ),
        child: lanesOpened[location] ? Image.asset('assets/images/closed_lane.png') : Image.asset('assets/images/lane.png'),
      ),
    );
    _addMarker(marker);
    lanesOpened[location] = !lanesOpened[location];
  }

  void speedLimitChanging(int speedLimitAdjustment) {
    speedLimitChangeNeedToMark += speedLimitAdjustment;
    currentSpeedLimit.value += speedLimitAdjustment;
    Marker marker = Marker(
      point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
      child: Container( 
        width: 20,
        height: 30,
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Image.asset('assets/images/speed_change.png'),
      ),
      rotate: true,
    );
    _addMarker(marker);
  }

  /*FlutterMap recordingMap() {
    List<LatLng> points = findRecordingBounds();
    LatLngBounds bounds = LatLngBounds(points.first, points.last);
    return FlutterMap(  
      mapController: mapController,
      /*options: MapOptions(
        cameraConstraint: CameraConstraint.contain(bounds: bounds)
      ),*/
      children: [
        TileLayer(
          urlTemplate: "https://api.mapbox.com/styles/v1/mapbox/satellite-streets-v11/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
          additionalOptions: {
            'accessToken': dotenv.env['MAPBOX_ACCESS_TOKEN']!,
            'id': 'mapbox.satellite',
          },
        ),
        polylineLayer.value,
        markerLayer.value,
      ]
    );
  }*/

  List<LatLng> findRecordingBounds() {
    List<LatLng> points = [];
    double smallLat = pointsLatLng.first.latitude;  //TODO: This can fail is you stop the recording before anything is actually recorded
    double smallLong = pointsLatLng.first.longitude;
    double bigLat = pointsLatLng.first.latitude;
    double bigLong = pointsLatLng.first.longitude;
    for (LatLng points in pointsLatLng) {
      if (points.latitude < smallLat) {
        smallLat = points.latitude;
      }
      if (points.latitude > bigLat) {
        bigLat = points.latitude;
      }
      if (points.longitude < smallLong) {
        smallLong = points.longitude;
      }
      if (points.longitude > bigLong) {
        bigLong = points.longitude;
      }
    }
    LatLng cornerOne = LatLng(smallLat, smallLong);
    LatLng cornerTwo = LatLng(bigLat, bigLong);
    return [cornerOne, cornerTwo];
  }
}
