import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/models/report.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:intl/intl.dart';

class ViewReportsController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  List<Marker> reportMarkers = [];
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    reportMarkers = await _getReportMarkers();
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    _updateMarkerLayer();
  }
  
  Marker _userLocationMarker() {
    return Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(Icons.person, color: Color.fromARGB(255, 3, 134, 25), size: 25.0)),
        rotate: true
    );
  }

  _updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker(), ...reportMarkers];
    markerLayer.value = MarkerLayer(markers: markers);
  }

  _getReportMarkers() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    List<Marker> markers = <Marker>[];
    for (Report report in reports) {
      markers.add(Marker(
        point: LatLng(report.point[0], report.point[1]),
        child: IconButton(
          icon: Icon(Icons.construction, color: Color.fromARGB(255, 187, 0, 0), size: 25.0),
          onPressed: () {
            Get.dialog(_viewReportStats(report));
          }
        ),
        ),
      );
    }
    return markers;
  }

  AlertDialog _viewReportStats(Report report) {
    List<Text> typesOfWork = [];

    for (TypeOfWork typeOfWork in report.typesOfWork) {
      typesOfWork.add(Text("Type of Work: ${_getWorkTypeNameAsString(typeOfWork.typeName)}"));
    }

    DateTime startDate = DateTime.fromMillisecondsSinceEpoch(report.startDate ?? 0);
    DateTime endDate = DateTime.fromMillisecondsSinceEpoch(report.endDate ?? 0);

    // Format the DateTime objects
    String formattedStartDate = DateFormat('yyyy-MM-dd').format(startDate);
    String formattedEndDate = DateFormat('yyyy-MM-dd').format(endDate);

    return AlertDialog(
      title: const Text('Report Stats'),
      content: Column(
        children: [
          Text("Project Id: ${report.projectId}"),
          Text("Segment Id: ${report.segmentId}"),
          Text("Area Id: ${report.areaId}"),
          Text("Report Name: ${report.reportName}"),
          ...typesOfWork,
          Text("Start Date: $formattedStartDate"),
          Text("End Date: $formattedEndDate"),
          Text("Area Type: ${report.areaType}"),
          Text("Mobility Speed MPH: ${report.mobilitySpeedMPH}"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }

  String _getWorkTypeNameAsString(WorkTypeName workTypeName) {
      switch (workTypeName) {
        case WorkTypeName.maintenance:
          return 'maintenance';
        case WorkTypeName.minorRoadDefectRepair:
          return 'minor road defect repair';
        case WorkTypeName.roadsideWork:
          return 'roadside work';
        case WorkTypeName.overheadWork:
          return 'overhead work';
        case WorkTypeName.belowRoadWork:
          return 'below road work';
        case WorkTypeName.barrierWork:
          return 'barrier work';
        case WorkTypeName.surfaceWork:
          return 'surface work';
        case WorkTypeName.painting:
          return 'painting';
        case WorkTypeName.roadwayRelocation:
          return 'roadway relocation';
        case WorkTypeName.roadwayCreation:
          return 'roadway creation';
        default:
          return 'unknown';
      }
  }
}


