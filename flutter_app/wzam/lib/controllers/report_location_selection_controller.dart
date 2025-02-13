import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
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
  Rx<PolygonLayer> polygonLayer = const PolygonLayer(polygons: <Polygon>[]).obs;
  //late LatLng point; 
  late RxList<LatLng> points;
  Rx<GeometryType> geometryType = GeometryType.linestring.obs;
  RxList<bool> isSelectedGeometryType = <bool>[true, false, false].obs;
  RxDouble lineWidth = 30.0.obs;

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
    lineWidth.value = reportPageController.lineWidth;
    _updateMarkerLayer();
    _loadPolylineLayer();
    geometryType.value == GeometryType.polygon ? _loadPolygonLayer() : null;
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
    clearReportZonePoints();
  }

  void changeOrAddMarker(TapPosition position, LatLng point) {
    if (geometryType == GeometryType.multipoint) {
      points = [point].obs;
    } else if (geometryType == GeometryType.linestring) {
      _addPointToPolylineLayer(point);
      //_addPointToPolygonLayer(point);
    } else {
      _addPointToPolylineLayer(point);
      _addPointToPolygonLayer(point);
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

  void _addPointToPolygonLayer(LatLng point) {
    if (/*geometryType == GeometryType.linestring ||*/ geometryType == GeometryType.polygon) {
      points.add(point);
    }
    Polygon reportZonePolygon = Polygon(
      points: points,
      color: primaryColor.withOpacity(0.5),
      borderStrokeWidth: 5.0,
      borderColor: primaryColor,
    );
    polygonLayer.value = PolygonLayer(polygons: <Polygon>[reportZonePolygon]);
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

  void _loadPolygonLayer() {
    if (reportPageController.points.isNotEmpty) {
      List<LatLng> points = <LatLng>[];
      for (List<double> point in reportPageController.points) {
        points.add(LatLng(point[0], point[1]));
      }
      Polygon reportZonePolygon = Polygon(
        points: points,
        color: primaryColor.withOpacity(0.5),
        borderStrokeWidth: 5.0,
        borderColor: primaryColor,
      );
      polygonLayer.value = PolygonLayer(polygons: <Polygon>[reportZonePolygon]);
    }
  }

  void clearReportZonePoints() {
    points.clear();
    _updateMarkerLayer();
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[]);
    polygonLayer.value = PolygonLayer(polygons: <Polygon>[]);
  }

  void saveReportLocationPoint() {
    if (geometryType == GeometryType.multipoint && points.isEmpty) {
      NotificationController().queueNotification('Invalid Location Point', 'Please select a report location point');
      return;
    } else if (geometryType == GeometryType.linestring && points.length < 2) {
      NotificationController().queueNotification('Invalid Location Line', 'Please select at least two points for the report location line');
      return;
    } else if (geometryType == GeometryType.polygon && points.length < 3) {
      NotificationController().queueNotification('Invalid Location Polygon', 'Please select at least three points for the report location polygon');
      return;
    }
    reportPageController.points.clear();
    for (LatLng point in points) {
      reportPageController.points.add([point.latitude, point.longitude]);
    }
    if (geometryType == GeometryType.polygon) {
      reportPageController.points.add([points[0].latitude, points[0].longitude]);
    }
    reportPageController.geometryType = geometryType.value;
    geometryType.value == GeometryType.linestring ? reportPageController.lineWidth = lineWidth.value : null;
    //reportPageController.point.add(point.longitude);
    Get.back();
  }
 
}


