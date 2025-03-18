import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/models/report.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:intl/intl.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';
import 'package:http/http.dart' as http;

class ViewReportsController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  List<Marker> reportMarkers = [];
  List<Polyline> reportPolylines = [];
  List<Polygon> reportPolygons = [];
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  Rx<PolylineLayer> polylineLayer = const PolylineLayer(polylines: <Polyline>[]).obs;
  Rx<PolygonLayer> polygonLayer = const PolygonLayer(polygons: <Polygon>[]).obs;
  RxBool areThereLocalReports = false.obs;
  final activeColor = primaryColor;
  final pendingColor = Color.fromARGB(255, 255, 238, 0);
  final recentlyCompletedColor = Color.fromARGB(255, 168, 0, 0).withOpacity(0.6);
  RxBool tryingToUpload = false.obs;

  Future<void> initialize(BuildContext context) async {
    currentPosition = locationService.currentPosition;
    reportMarkers = await _getReportMarkers(context);
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    _updateMarkerLayer();
    polylineLayer.value = PolylineLayer(polylines: reportPolylines);
    polygonLayer.value = PolygonLayer(polygons: reportPolygons);
  }
  
  Marker _userLocationMarker() {
    return Marker(
        point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Image.asset('assets/images/location_with_border.png', width: 25.0, height: 25.0),
        rotate: true
    );
  }

  _updateMarkerLayer() {
    List<Marker> markers = <Marker>[...reportMarkers, _userLocationMarker()];
    markerLayer.value = MarkerLayer(markers: markers);
  }

  _updatePolylineLayer() {
    polylineLayer.value = PolylineLayer(polylines: reportPolylines);
  }

  _updatePolygonLayer() {
    polygonLayer.value = PolygonLayer(polygons: reportPolygons);
  }

  Marker reportMarker(Report report, String category, String source) {
    Color iconColor = Colors.black;
    IconData icon = Icons.construction;
    if (category == 'pending') {
      iconColor = pendingColor;
      icon = Icons.construction;
    } else if (category == 'active') {
      iconColor = activeColor;
      icon = Icons.construction;
    } else if (category == 'recently_completed') {
      iconColor = recentlyCompletedColor;
      icon = Icons.construction;
    } 
    return Marker(
      point: LatLng(report.geometry[0][0], report.geometry[0][1]),
      child: GestureDetector(  
        onTap: () {
          Get.dialog(_viewReportStats(Get.context!, report, category, source));
        },
        child: source == 'server' ? Container(
          decoration: BoxDecoration(
            color: category == 'recently_completed' ? Colors.white.withOpacity(0.6) : category == 'active' ? Colors.white : darkGrey,
            borderRadius: BorderRadius.circular(10.0),
            border: category == 'active' ? Border.all(color: iconColor, width: 2.0) : Border.all(color: iconColor, width: 1.0),
          ),
          child: Icon(Icons.construction, color: iconColor, size: 25.0),
        ) : Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: category == 'recently_completed' ? Colors.white.withOpacity(0.6) : category == 'active' ? Colors.white : darkGrey,
            border: category == 'active' ? Border.all(color: iconColor, width: 2.0) : Border.all(color: iconColor, width: 1.0),
          ),
          child: Icon(icon, color: iconColor, size: 25.0),
        ),
      )
    );
  }

  Future<List<Marker>> _getReportMarkers(BuildContext context) async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    List<Marker> markers = <Marker>[];
    List<Polyline> polylines = <Polyline>[];
    List<Polygon> polygons = <Polygon>[];
    ReportMarkerData serverReportMarkers = _generateReportMarkers(reports, 'server');
    ReportMarkerData localReportMarkers = _generateReportMarkers(await fileService.getReportFiles('reports_local'), 'local');
    markers = [...serverReportMarkers.marker, ...localReportMarkers.marker];
    polylines = [...serverReportMarkers.polyline, ...localReportMarkers.polyline];
    polygons = [...serverReportMarkers.polygon, ...localReportMarkers.polygon];

    reportPolylines = polylines;
    reportPolygons = polygons;
    return markers;
  }

  ReportMarkerData _generateReportMarkers(List<Report> reports, String source) {
    if (source == 'local') {
      areThereLocalReports.value = reports.isNotEmpty;
    }
    List<Marker> markers = <Marker>[];
    List<Polyline> polylines = <Polyline>[];
    List<Polygon> polygons = <Polygon>[];
    for (Report report in reports) {
      String status = "";
      if (report.start_date != null && report.end_date != null) {
        DateTime startDate = DateTime.fromMillisecondsSinceEpoch(report.start_date!);
        DateTime endDate = DateTime.fromMillisecondsSinceEpoch(report.end_date!);
        if (DateTime.now().isBefore(startDate)) {
          markers.add(reportMarker(report, 'pending', source));
          status = 'pending';
        } else if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
          markers.add(reportMarker(report, 'active', source));
          status = 'active';
        } else if (DateTime.now().isAfter(endDate) && DateTime.now().isBefore(endDate.add(const Duration(days: 7)))) {
          markers.add(reportMarker(report, 'recently_completed', source));
          status = 'recently_completed';
        } 
      } else if (report.start_date == null) {
        if (report.end_date != null && DateTime.now().isBefore(DateTime.fromMillisecondsSinceEpoch(report.end_date!))) {
          markers.add(reportMarker(report, 'active', source)); //TODO verify if this is active or pending
          status = 'active';
        } else if (report.end_date != null && DateTime.now().isAfter(DateTime.fromMillisecondsSinceEpoch(report.end_date!)) && DateTime.now().isBefore(DateTime.fromMillisecondsSinceEpoch(report.end_date!).add(const Duration(days: 7)))) {
          markers.add(reportMarker(report, 'recently_completed', source));
          status = 'recently_completed';
        } else if (report.end_date == null){
          markers.add(reportMarker(report, 'pending', source));
          status = 'pending';
        }
      } else if (report.end_date == null && report.start_date != null) {
        if (DateTime.now().isAfter(DateTime.fromMillisecondsSinceEpoch(report.start_date!))) {
          markers.add(reportMarker(report, 'active', source));
          status = 'active';
        } else {
          markers.add(reportMarker(report, 'pending', source));
          status = 'pending';
        }
      }
      if (report.geometry_type == GeometryType.linestring) {
        List<LatLng> points = <LatLng>[];
        for (List<double> point in report.geometry) {
          points.add(LatLng(point[0], point[1]));
        }
        polylines.add(Polyline(
          points: points,
          strokeWidth: 5.0,
          color: status == 'active' ? activeColor : status == 'pending' ? pendingColor : recentlyCompletedColor,
        ));
      }
      if (report.geometry_type == GeometryType.polygon) {
        List<LatLng> points = <LatLng>[];
        for (List<double> point in report.geometry) {
          points.add(LatLng(point[0], point[1]));
        }
        polygons.add(Polygon(
          points: points,
          color: status == 'active' ? activeColor.withOpacity(0.5) : status == 'pending' ? pendingColor.withOpacity(0.5) : recentlyCompletedColor.withOpacity(0.5),
        ));
      }
    }
    return ReportMarkerData(marker: markers, polyline: polylines, polygon: polygons);
  }

  Future<void> uploadLocalReports() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reportsLocal = await fileService.getReportFiles('reports_local');
    for (Report report in reportsLocal) {
      tryingToUpload.value = true;
      await postReport(report, fileService);
      tryingToUpload.value = false;
    }
    reportMarkers = await _getReportMarkers(Get.context!);
    _updateMarkerLayer();
  }

  Future<void> postReport(Report report, FileStorageService fileService) async {
    final url = Uri.parse('https://wzamapi.azurewebsites.net/reports');
    final headers = {'Content-Type': 'application/json'};
    try {
      final response = await http.post(url, 
        headers: headers, 
        body: json.encode({
            "project_id": report.project_id,
            "segment_id": report.segment_id,
            "area_id": report.area_id,
            "report_name": report.report_name,
            "types_of_work": report.types_of_work.map((e) => e.toJson()).toList(),
            "workers_present": report.workers_present,
            "start_date": report.start_date,
            "end_date": report.end_date,
            "report_date": report.report_date,
            "area_type": report.area_type.toString().split('.').last,
            "mobility_speed_mph": report.mobility_speed_mph,
            "geometry_type": report.geometry_type.toString().split('.').last,
            "geometry": report.geometry,
            "geometry_line_width": report.geometry_line_width,
            "license_plate": report.license_plate,
            "surface_type": report.surface_type.toString().split('.').last
          }
        ),
      );
      if (response.statusCode == 200) {
        print('Report posted successfully');
        await fileService.saveReport(report, true);
        await fileService.deleteReport(report, 'reports_local');
      } else {
        print('Failed to post report: ${response.statusCode}');
        NotificationController().queueNotification('Failed to upload Report', 'Check your internet and try again');
      }
    } catch (e) {
      print('Error posting report: $e');
      NotificationController().queueNotification('Failed to upload Report', 'Check your internet and try again');
    }
  }

  Future<List<Report>> getReports() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    return reports;
  }

  Future<void> downloadReportsFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadReportsFromServer();
    reportMarkers = await _getReportMarkers(Get.context!);
    _updateMarkerLayer();
    _updatePolylineLayer();
    _updatePolygonLayer();
  }

  Dialog _viewReportStats(BuildContext context, Report report, String status, String source) {
    List<RichText> typesOfWork = [];

    for (TypeOfWork typeOfWork in report.types_of_work) {
      //typesOfWork.add(Text("Type of Work: ${_getWorkTypeNameAsString(typeOfWork.typeName)}"));
      typesOfWork.add(_formattedText("Type of Work", _getWorkTypeNameAsString(typeOfWork.typeName), context));
      typesOfWork.add(_formattedText("Architectural Change? ", typeOfWork.isArchitecturalChange ? "Yes" : "No", context)); 
    }

    DateTime startDate = DateTime.fromMillisecondsSinceEpoch(report.start_date ?? 0);
    DateTime endDate = DateTime.fromMillisecondsSinceEpoch(report.end_date ?? 0);

    // Format the DateTime objects
    String formattedStartDate = DateFormat.yMd().add_jm().format(startDate);
    String formattedEndDate = DateFormat.yMd().add_jm().format(endDate);

    String areaType = report.area_type.toString().split('.').last;

    return Dialog(
      insetPadding: const EdgeInsets.all(40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),    
        side: const BorderSide(color: Colors.black, width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: screenWidth(context) * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(report.report_name.toUpperCase(), style: style_two.copyWith(fontWeight: FontWeight.bold)),
                        Expanded(child: Container()),
                        IconButton(
                          icon: Icon(Icons.edit), 
                          onPressed: () {
                            Get.back();
                            Get.dialog(editReportTimesDialog(report, 'edit', context));
                          }
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    Container(  
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.0),
                      ),
                    ),
                    verticalSpaceSmall,
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth(context) * 0.6,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    report.project_id != null ? _formattedText("Project Id", report.project_id.toString(), context) : Container(),
                    report.segment_id != null ? _formattedText("Segment Id", report.segment_id.toString(), context) : Container(),
                    report.area_id != null ? _formattedText("Area Id", report.area_id.toString(), context) : Container(),
                    _formattedText("Workers Present? ", report.workers_present ? "Yes" : "No", context),
                    ...typesOfWork,
                    report.start_date != null ? _formattedText("Start Date", formattedStartDate, context) : Container(),
                    report.end_date != null ? _formattedText("End Date", formattedEndDate, context) : Container(),
                    _formattedText("Report Date", DateFormat.yMd().add_jm().format(DateTime.fromMillisecondsSinceEpoch(report.report_date)), context),
                    _formattedText("Area Type", areaType, context),
                    report.mobility_speed_mph != null ? _formattedText("Mobility Speed MPH", report.mobility_speed_mph.toString(), context) : Container(),
                    verticalSpaceSmall,
                    ((status == 'pending' || status == 'active') && source == 'server') ? ElevatedButton(
                      child: Text(status == 'pending' ? "Activate Report" : status == 'active' ? "Mark this report as completed" : ""),
                      onPressed: () {
                        Get.back();
                        String typeOfEdit = status == 'pending' ? 'active' : status == 'active' ? 'complete' : "";
                        Get.dialog(editReportTimesDialog(report, typeOfEdit, context)); 
                      },
                    ) : Container(),

                  ],
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /*((status == 'pending' || status == 'active') && source == 'server') ? ClickableText(
                      text: status == 'pending' ? "Activate Report" : status == 'active' ? "Mark this report as completed" : "",
                      onTap: () {
                        Get.back();
                        String typeOfEdit = status == 'pending' ? 'active' : status == 'active' ? 'complete' : "";
                        Get.dialog(editReportTimesDialog(report, typeOfEdit, context)); 
                      },
                    ) : Container(),
                    horizontalSpaceSmall,*/
                    ClickableText(
                      text: "Close",
                      onTap: () => Get.back(),
                    ), 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /*Dialog editReport(Report report) {

  }*/

  Dialog editReportTimesDialog(Report report, String typeOfEdit, BuildContext context) {
    Rx<DateTime> selectedStartTime = DateTime.now().obs;
    Rx<DateTime?> selectedEndTime = Rx<DateTime?>(null);

    if (typeOfEdit == 'complete') {
      selectedEndTime.value = DateTime.now();
    }

    if (report.start_date != null) {
      selectedStartTime.value = DateTime.fromMillisecondsSinceEpoch(report.start_date!);
    }

    if (report.end_date != null) {
      if (typeOfEdit == 'complete') {
        selectedEndTime.value = DateTime.now();
      } else {
        selectedEndTime.value = DateTime.fromMillisecondsSinceEpoch(report.end_date!);
      }
    }

    Future<void> _selectDateTime(BuildContext context, bool isStartTime) async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );

      if (pickedDate != null) {
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );

        if (pickedTime != null) {
          final DateTime pickedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );

          if (isStartTime) {
            selectedStartTime.value = pickedDateTime;
          } else {
            selectedEndTime.value = pickedDateTime;
          }
        }
      }
    }

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              typeOfEdit == 'activate' ? 'Activate Report' : typeOfEdit == 'complete' ? 'Complete Report' : 'Edit Report Times',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Start Time: ${DateFormat.yMd().add_jm().format(selectedStartTime.value)}'),
              trailing: Icon(Icons.access_time),
              onTap: () => _selectDateTime(context, true),
            ),
            ListTile(
              title: Text('End Time: ${selectedEndTime.value != null ? DateFormat.yMd().add_jm().format(selectedEndTime.value!) : 'Not set'}'),
              trailing: Icon(Icons.access_time),
              onTap: () => _selectDateTime(context, false),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime startDateTime = selectedStartTime.value;
                DateTime? endDateTime = selectedEndTime.value;
                Get.back();
                await _activateReport(report, startDateTime, endDateTime);
                await downloadReportsFromServer();
              },
              child: Text(typeOfEdit == 'active' ? 'Activate Report' : typeOfEdit == 'complete' ? 'Complete Report' : 'Edit Report Times'),
            ),
          ],
        )),
      ),
    );
  }

  Future<void> _activateReport(Report report, DateTime startDate, DateTime? endDate) async {
    if (report is ReportWithId) {
      int reportId = report.id;
      Report newReport = Report(  
        project_id: report.project_id,
        segment_id: report.segment_id,
        area_id: report.area_id,
        report_name: report.report_name,
        types_of_work: report.types_of_work,
        workers_present: report.workers_present,
        start_date: startDate.millisecondsSinceEpoch,
        end_date: endDate != null ? endDate.millisecondsSinceEpoch : report.end_date,
        report_date: report.report_date,
        area_type: report.area_type,
        mobility_speed_mph: report.mobility_speed_mph,
        geometry_type: report.geometry_type,
        geometry: report.geometry,
        geometry_line_width: report.geometry_line_width,
        license_plate: report.license_plate,
        surface_type: report.surface_type,
      );
      tryingToUpload = true.obs;
      await _editReport(newReport, reportId, Get.find<FileStorageService>());
      tryingToUpload = false.obs;
    }
  }

  Future<void> _editReport(Report report, int reportId, FileStorageService fileService) async {
    final url = Uri.parse('https://wzamapi.azurewebsites.net/reports');
    final headers = {'Content-Type': 'application/json'};
    try {
      final response = await http.post(url, 
        headers: headers, 
        body: json.encode({
            "project_id": report.project_id,
            "segment_id": report.segment_id,
            "area_id": report.area_id,
            "report_name": report.report_name,
            "types_of_work": report.types_of_work.map((e) => e.toJson()).toList(),
            "workers_present": report.workers_present,
            "start_date": report.start_date,
            "end_date": report.end_date,
            "report_date": report.report_date,
            "area_type": report.area_type.toString().split('.').last,
            "mobility_speed_mph": report.mobility_speed_mph,
            "geometry_type": report.geometry_type.toString().split('.').last,
            "geometry": report.geometry,
            "geometry_line_width": report.geometry_line_width,
            "license_plate": report.license_plate,
            "surface_type": report.surface_type.toString().split('.').last
          }
        ),
      );
      if (response.statusCode == 200) {
        print('Report posted successfully');
        try {
          final deleteUrl = Uri.parse('https://wzamapi.azurewebsites.net/reports/$reportId');
          final headers = {'Content-Type': 'application/json'};
          final deleteResponse = await http.delete(deleteUrl, headers: headers);
          if(deleteResponse.statusCode == 200) {
            print('Report deleted successfully');
          } else {
            print('Failed to delete old report: ${deleteResponse.statusCode}');
          }
        } catch (e) {
          print('Error deleting old report: $e');
        }
      } else {
        print('Failed to post report: ${response.statusCode}');
        NotificationController().queueNotification('Failed to upload Report', 'Check your internet and try again');
      }
    } catch (e) {
      print('Error posting report: $e');
      NotificationController().queueNotification('Failed to upload Report', 'Check your internet and try again');
    }
  }

  RichText _formattedText(String name, String content, BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "$name: ", style: style_body.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.bodySmall?.color ?? Colors.black)),
          TextSpan(text: content, style: style_body.copyWith(color: Theme.of(context).textTheme.bodySmall?.color ?? Colors.black))
        ]
      )
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

class ReportMarkerData {
  final List<Marker> marker;
  final List<Polyline> polyline;
  final List<Polygon> polygon;

  ReportMarkerData({
    required this.marker,
    required this.polyline,
    required this.polygon,
  });
}


