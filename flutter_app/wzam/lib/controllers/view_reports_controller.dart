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
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';

class ViewReportsController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  List<Marker> reportMarkers = [];
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;

  Future<void> initialize(BuildContext context) async {
    currentPosition = locationService.currentPosition;
    reportMarkers = await _getReportMarkers(context);
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
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

  _updateMarkerLayer() {
    List<Marker> markers = <Marker>[...reportMarkers, _userLocationMarker()];
    markerLayer.value = MarkerLayer(markers: markers);
  }

  Future<List<Marker>> _getReportMarkers(BuildContext context) async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    List<Marker> markers = <Marker>[];
    print("report length: ${reports.length}");
    for (Report report in reports) {
      print("went here");
      markers.add(Marker(
        point: LatLng(report.point[0], report.point[1]),
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
        /*child: IconButton(
          icon: Icon(Icons.construction, color: Color.fromARGB(255, 187, 0, 0), size: 25.0),
          onPressed: () {
            Get.dialog(_viewReportStats(context, report));
          }
        ),*/
        ),
      );
    }
    print(markers.length);
    return markers;
  }

  List<Marker> createReportMarkers(BuildContext context, List<Report> reports) {
    List<Marker> markers = <Marker>[];
    for (Report report in reports) {
      markers.add(Marker(
        point: LatLng(report.point[0], report.point[1]), //TODO: Add a check to make sure points are there
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
    }
    return markers;
  }

  Future<List<Report>> getReports() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Report> reports = await fileService.getReportFiles('reports');
    return reports;
  }

  void downloadReportsFromServer() async {
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


