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
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  Rx<PolylineLayer> polylineLayer = const PolylineLayer(polylines: <Polyline>[]).obs;
  RxBool areThereLocalReports = false.obs;

  Future<void> initialize(BuildContext context) async {
    currentPosition = locationService.currentPosition;
    reportMarkers = await _getReportMarkers(context);
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    _updateMarkerLayer();
    polylineLayer.value = PolylineLayer(polylines: reportPolylines);
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


  Future<List<Marker>> _getReportMarkers(BuildContext context) async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    List<Marker> markers = <Marker>[];
    List<Polyline> polylines = <Polyline>[];
    for (Report report in reports) {
      markers.add(Marker(
        point: LatLng(report.geometry[0][0], report.geometry[0][1]),
        child: GestureDetector(  
          onTap: () {
            Get.dialog(_viewReportStats(context, report));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Icon(Icons.construction, color: primaryColor, size: 25.0),
          ),
        )
        ),
      );
      if (report.geometry.length > 1) {
        List<LatLng> points = <LatLng>[];
        for (List<double> point in report.geometry) {
          points.add(LatLng(point[0], point[1]));
        }
        polylines.add(Polyline(
          points: points,
          strokeWidth: 5.0,
          color: primaryColor,
        ));
      }
    }

    areThereLocalReports.value = false;
    List<Report> reportsLocal = await fileService.getReportFiles('reports_local');
    print(reportsLocal.length);
    if (reportsLocal.isNotEmpty) {
      areThereLocalReports.value = true;
    }
    for (Report report in reportsLocal) {
      markers.add(Marker(
        point: LatLng(report.geometry[0][0], report.geometry[0][1]),
        child: GestureDetector(  
          onTap: () {
            Get.dialog(_viewReportStats(context, report));
          },
          child: Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Icon(Icons.construction, color: Colors.black, size: 25.0),
          ),
        )
        ),
      );
      if (report.geometry.length > 1) {
        List<LatLng> points = <LatLng>[];
        for (List<double> point in report.geometry) {
          points.add(LatLng(point[0], point[1]));
        }
        polylines.add(Polyline(
          points: points,
          strokeWidth: 5.0,
          color: primaryColor,
        ));
      }
    }
    print(markers.length);
    reportPolylines = polylines;
    return markers;
  }

  Future<void> uploadLocalReports() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reportsLocal = await fileService.getReportFiles('reports_local');
    for (Report report in reportsLocal) {
      await postReport(report, fileService);
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
            "start_date": 0,
            "end_date": 0,
            "report_date": 0,
            "area_type": report.area_type.toString().split('.').last,
            "mobility_speed_mph": report.mobility_speed_mph,
            "geometry_type": report.geometry_type.toString().split('.').last,
            "geometry": [[
              report.geometry[0][0], report.geometry[0][1]
            ]],
            "geometry_line_width": report.geometry_line_width,
            "license_plate": report.license_plate,
            "surface_type": 'paved'//report.surface_type.toString().split('.').last
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
  }

  Dialog _viewReportStats(BuildContext context, Report report) {
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
                    Text(report.report_name.toUpperCase(), style: style_two.copyWith(fontWeight: FontWeight.bold)),
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
                  ],
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: ClickableText(
                  text: "Close",
                  onTap: () => Get.back(),
                ),
              ),
            ],
          ),
        ),
      ),
    );



    /*return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("${report.reportName}", style: style_two),
              verticalSpaceMedium,
              Expanded(
                flex: 9,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    verticalSpaceSmall,
                    report.projectId != null ? Text("Project Id: ${report.projectId}") : Container(),
                    report.segmentId != null ? Text("Segment Id: ${report.segmentId}") : Container(),
                    report.areaId != null ? Text("Area Id: ${report.areaId}") : Container(),
                    ...typesOfWork,
                    report.startDate != null ? Text("Start Date: $formattedStartDate") : Container(),
                    report.endDate != null ? Text("End Date: $formattedEndDate") : Container(),
                    Text("Area Type: $areaType"),
                    report.mobilitySpeedMPH != null ? Text("Mobility Speed MPH: ${report.mobilitySpeedMPH}") : Container(),
                 ]
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ClickableText(
                  text: "Close",
                  onTap: () => Get.back(),
                ),
              )
                ]),
        ),
    ),
  );*/
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


