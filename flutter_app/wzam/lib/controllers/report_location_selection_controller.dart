import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/pages/report_generator.dart';

//This controller is used to manage the report location selection map and the report location point
class ReportLocationSelectionController extends GetxController {
  late MapController? mapController;
  ReportPageController reportPageController = Get.find<ReportPageController>();
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  late LatLng point; 

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if (reportPageController.point.length > 1) {
      point = LatLng(reportPageController.point[0], reportPageController.point[1]);
    } else {
      point = LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude);
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

  void addMarker(TapPosition position, LatLng point) {
    this.point = point;
    _updateMarkerLayer();
  }

  void _updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker()];
    markers.add(Marker(point: point, child: Icon(Icons.circle, color: Colors.red, size: 10.0)));
    markerLayer.value = MarkerLayer(markers: markers);
  }

  void saveReportLocationPoint() {
    reportPageController.point.clear();
    reportPageController.point.add(point.latitude);
    reportPageController.point.add(point.longitude);
    Get.back();
  }

 
}


