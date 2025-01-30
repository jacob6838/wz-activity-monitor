import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/pages/report_generator.dart';

import '../ui/styles/app_colors.dart';

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
        child: Image.asset('assets/images/location_with_border.png', width: 25.0, height: 25.0),
        rotate: true
    );
  }

  void addMarker(TapPosition position, LatLng point) {
    this.point = point;
    _updateMarkerLayer();
  }

  void _updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker()];
    markers.add(Marker(
      point: point, 
      child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Icon(Icons.construction, color: primaryColor, size: 25.0),
          ),
    ));
    markerLayer.value = MarkerLayer(markers: markers);
  }

  void saveReportLocationPoint() {
    reportPageController.point.clear();
    reportPageController.point.add(point.latitude);
    reportPageController.point.add(point.longitude);
    Get.back();
  }

 
}


