import 'dart:math';

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
  late RxList<LatLng> points;
  late RxList<LatLng> borderPoints;
  Rx<GeometryType> geometryType = GeometryType.linestring.obs;
  RxList<bool> isSelectedGeometryType = <bool>[true, false, false].obs;
  RxInt selectedPoint = (-1).obs;
  RxDouble lineWidth = 30.0.obs;

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    borderPoints = <LatLng>[].obs;
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
    _loadPolygonLayer();
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
    if (selectedPoint.value != -1) {
      if (geometryType == GeometryType.multipoint) {
        points[selectedPoint.value] = point;
      } else if (geometryType == GeometryType.linestring) {
        _editPointInPolylineLayer(point);
        _editPointInPolygonLayer(point);
      } else {
        _editPointInPolylineLayer(point);
        _editPointInPolygonLayer(point);
      }
      selectedPoint.value = -1;
    } else {
      if (geometryType == GeometryType.multipoint) {
        points = [point].obs;
      } else if (geometryType == GeometryType.linestring) {
        _addPointToPolylineLayer(point);
        _addPointToPolygonLayer(point);
      } else {
        _addPointToPolylineLayer(point);
        _addPointToPolygonLayer(point);
      }
    }
    _updateMarkerLayer();
  }

  void _updateMarkerLayer() {
    List<Marker> markers = <Marker>[_userLocationMarker()];
    for (LatLng point in points) {
      markers.add(Marker(
      point: point, 
      child: Obx(() => GestureDetector(
        onTap: () {
          selectedPoint.value = points.indexOf(point);
        },
        child: geometryType == GeometryType.multipoint ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Icon(Icons.construction, color: primaryColor, size: 25.0),
          ) : points.indexOf(point) == selectedPoint.value ? selectedDot() : standardDot(),
      ))));
    }
    markerLayer.value = MarkerLayer(markers: markers);
  }

  Widget selectedDot() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      child: Icon(Icons.circle, color: primaryColor, size: 25.0),
    );
  }

  Widget standardDot() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: Colors.transparent, width: 2.0),
      ),
      child: Icon(Icons.circle, color: primaryColor, size: 20.0),
    );
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
  }

  void _editPointInPolylineLayer(LatLng point) {
    if (geometryType == GeometryType.linestring) {
      points[selectedPoint.value] = point;
    }
    Polyline reportZonePolyline = Polyline(
      points: points,
      strokeWidth: 5.0,
      color: primaryColor,
    );
    polylineLayer.value = PolylineLayer(polylines: <Polyline>[reportZonePolyline]);
  }

  void _addPointToPolygonLayer(LatLng point) {
    if (geometryType == GeometryType.polygon) {
      points.add(point);
      Polygon reportZonePolygon = Polygon(
        points: points,
        color: primaryColor.withOpacity(0.5),
        borderStrokeWidth: 5.0,
        borderColor: primaryColor,
      );
      polygonLayer.value = PolygonLayer(polygons: <Polygon>[reportZonePolygon]);
    }
    if (geometryType == GeometryType.linestring) {
      List<Polygon> borderzones = _generateLineBorderShapeFromLatLngPoint(points, lineWidth.value);
      polygonLayer.value = PolygonLayer(polygons: borderzones);
    }
  }

  void _editPointInPolygonLayer(LatLng point) {
    if (geometryType == GeometryType.polygon) {
      points[selectedPoint.value] = point;
      Polygon reportZonePolygon = Polygon(
        points: points,
        color: primaryColor.withOpacity(0.5),
        borderStrokeWidth: 5.0,
        borderColor: primaryColor,
      );
      polygonLayer.value = PolygonLayer(polygons: <Polygon>[reportZonePolygon]);
    }
    if (geometryType == GeometryType.linestring) {
      List<Polygon> borderzones = _generateLineBorderShapeFromLatLngPoint(points, lineWidth.value).obs;
      polygonLayer.value = PolygonLayer(polygons: borderzones);
    }
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
      if (reportPageController.geometryType == GeometryType.polygon) {
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
      if (reportPageController.geometryType == GeometryType.linestring) {
        List<Polygon> borderzones = _generateLineBorderShape(reportPageController.points);
        polygonLayer.value = PolygonLayer(polygons: borderzones);
      }
    }
  }


  List<Polygon> _generateLineBorderShapeFromLatLngPoint(List<LatLng> points, double width) {
    List<List<double>> pointsList = <List<double>>[];
    for (LatLng point in points) {
      pointsList.add([point.latitude, point.longitude]);
    }
    return _generateLineBorderShape(pointsList);
  }

 
  List<Polygon> _generateLineBorderShape(List<List<double>> points) {
    double widthInMeters = lineWidth.value;
    
    double widthInDegreesLat = widthInMeters / 111320.0; // Approximate conversion factor for latitude
    double widthInDegreesLon = widthInMeters / (111320.0 * cos(points[0][0] * (pi / 180.0))); // Approximate conversion factor for longitude
    List<Polygon> borderZones = <Polygon>[];
    for (int i = 0; i < points.length - 1; i++) {
      double x1 = points[i][0];
      double y1 = points[i][1];
      double x2 = points[i + 1][0];
      double y2 = points[i + 1][1];
      double angle = (x1 == x2) ? pi/2 : (y1 == y2) ? 0.0 : atan((y2 - y1) / (x2 - x1));
      double angle1 = angle + (pi/2);
      double angle2 = angle - (pi/2);
      double offsetX = widthInDegreesLat; 
      double offsetY = widthInDegreesLon; 
      double x3 = x1 + (offsetX / 2) * cos(angle1);
      double y3 = y1 + (offsetY / 2) * sin(angle1);
      double x4 = x1 + (offsetX / 2) * cos(angle2);
      double y4 = y1 + (offsetY / 2) * sin(angle2);
      double x5 = x3 + (x2 - x1);
      double y5 = y3 + (y2 - y1);
      double x6 = x4 + (x2 - x1);
      double y6 = y4 + (y2 - y1);
      Polygon reportZonePolygon = Polygon(
        points: [LatLng(x3, y3), LatLng(x5, y5), LatLng(x6, y6), LatLng(x4, y4)],
        color: primaryColor.withOpacity(0.5),
      );
      borderZones.add(reportZonePolygon);
    }
    return borderZones;
  }

  void updateBorderZone(double width) {
    lineWidth.value = width;
    if (geometryType == GeometryType.linestring) {
      List<Polygon> borderzones = _generateLineBorderShapeFromLatLngPoint(points, width);
      polygonLayer.value = PolygonLayer(polygons: borderzones);
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
    Get.back();
  }
 
}


