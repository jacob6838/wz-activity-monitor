import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/models/report.dart';
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
  Rx<PolylineLayer> polylineLayer = const PolylineLayer(polylines: <Polyline>[]).obs;
  //late LatLng point; 
  late RxList<LatLng> points;
  Rx<GeometryType> geometryType = GeometryType.linestring.obs;
  RxList<bool> isSelectedGeometryType = <bool>[true, false, false].obs;

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    if (reportPageController.points.isNotEmpty) {
      points = <LatLng>[].obs;
      for (List<double> point in reportPageController.points) {
        points.add(LatLng(point[0], point[1]));
      }
    } else {
      points = [LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude)].obs;
    }
    geometryType.value = reportPageController.geometryType;
    _updateMarkerLayer();
    _loadPolylineLayer();
  }
  
  Marker _userLocationMarker() {
    return Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Image.asset('assets/images/location_with_border.png', width: 25.0, height: 25.0),
        rotate: true
    );
  }

  void switchGeometryType(GeometryType type) {
    geometryType.value = type;
    points.clear();
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[]);
    _updateMarkerLayer();
  }

  void changeOrAddMarker(TapPosition position, LatLng point) {
    if (geometryType == GeometryType.multipoint) {
      points = [point].obs;
    } else if (geometryType == GeometryType.linestring) {
      _addPointToPolylineLayer(point);
    }
    _updateMarkerLayer();
  }

  void _updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker()];
    for (LatLng point in points) {
      markers.add(Marker(
      point: point, 
      child: geometryType == GeometryType.multipoint ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Icon(Icons.construction, color: primaryColor, size: 25.0),
          ) : Icon(Icons.circle, color: primaryColor, size: 15.0),
      ));
    }
    markerLayer.value = MarkerLayer(markers: markers);
  }

  void _addPointToPolylineLayer(LatLng point) {
    if (geometryType == GeometryType.linestring) {
      points.add(point);
    }
    Polyline reportZonePolyline = Polyline(
      points: points,
      strokeWidth: 5.0,
      color: primaryColor,
    );
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[reportZonePolyline]);
    print(points.length);
  }

  void _loadPolylineLayer() {
    if (reportPageController.points.isNotEmpty) {
      List<LatLng> points = <LatLng>[];
      for (List<double> point in reportPageController.points) {
        points.add(LatLng(point[0], point[1]));
      }
      Polyline reportZonePolyline = Polyline(
        points: points,
        strokeWidth: 5.0,
        color: primaryColor,
      );
      polylineLayer.value = PolylineLayer(polylines: <Polyline>[reportZonePolyline]);
    }
  }

  void clearReportZonePoints() {
    points.clear();
    _updateMarkerLayer();
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[]);
  }

  void saveReportLocationPoint() {
    reportPageController.points.clear();
    for (LatLng point in points) {
      reportPageController.points.add([point.latitude, point.longitude]);
    }
    reportPageController.geometryType = geometryType.value;
    //reportPageController.point.add(point.longitude);
    Get.back();
  }
 
}


