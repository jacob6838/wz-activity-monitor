import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/models/report.dart';

import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/pages/report_generator.dart';

class WorkZoneAreaSelectionController extends GetxController {
  late MapController? mapController;
  ReportPageController reportPageController = Get.find<ReportPageController>();
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  RxList<LatLng> points = <LatLng>[].obs;
  var geometryType = "";
  List<String> geometryTypes = [];

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    updateMarkerLayer();
    geometryTypes = _getGeometryTypes();
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
    points.add(point);
    updateMarkerLayer();
  }

  void updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker()];
    for (LatLng point in points) {
      markers.add(Marker(point: point, child: const Icon(Icons.circle, color: Colors.red, size: 10.0)));
    }
    markerLayer.value = MarkerLayer(markers: markers);
  }

  void saveWorkZoneGeometry() {
    List<List<double>> workZonePoints = [];
    for (LatLng point in points) {
      workZonePoints.add([point.latitude, point.longitude]);
    }
    Get.back();
  }

  List<String> _getGeometryTypes() {
    List<GeometryType> geometryTypes = GeometryType.values;
    List<String> geometryTypesStr = [];
    for (GeometryType type in geometryTypes) {
      switch (type) {
        case GeometryType.multipoint:
          geometryTypesStr.add('multipoint');
        case GeometryType.linestring:
          geometryTypesStr.add('linestring');
        case GeometryType.polygon:
          geometryTypesStr.add('polygon');
        default:
          geometryTypesStr.add('unknown');
      }
    }
    return geometryTypesStr;
  }

  GeometryType stringToGeometryType(String type) {
    switch (type) {
      case 'multipoint':
        return GeometryType.multipoint;
      case 'linestring':
        return GeometryType.linestring;
      case 'polygon':
        return GeometryType.polygon;
      default:
        throw ArgumentError('Invalid GeometryType: $type');
    }
  }
}


