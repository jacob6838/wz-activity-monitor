import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/models/activity_area.dart';
import 'package:wzam/models/project.dart';
import 'package:wzam/models/road_section.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';

class ProjectMapController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>(); 
  late Rx<Position?> currentPosition;
  List<Marker> projectMarkers = [];
  List<Marker> roadSectionMarkers = [];
  List<Marker> activityAreaMarkers = [];
  List<Polyline> projectLines = [];
  List<Polyline> roadSectionLines = [];
  List<Polyline> activityAreaLines = [];
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  Rx<PolylineLayer> polylineLayer = const PolylineLayer(polylines: <Polyline>[]).obs;
  RxBool openViewSettings = false.obs;
  RxBool showProjects = true.obs;
  RxBool showRoadSections = true.obs;
  RxBool showActivityAreas = true.obs;

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    await downloadProjectsFromServer();
    await downloadRoadSectionsFromServer();
    await downloadActivityAreasFromServer();
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    updateLayers();
  }

  Future<void> _createProjectDisplay() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<Project> projects = await fileService.getProjectFiles('projects');
    projectMarkers = _generateProjectMarkers(projects);
    projectLines = _generateProjectLines(projects);
  }

  Future<void> _createRoadSectionDisplay() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<RoadSection> roadsections = await fileService.getRoadSectionFiles('road_sections');
    roadSectionMarkers = _generateRoadSectionMarkers(roadsections);
    roadSectionLines = _generateRoadSectionLines(roadsections);
  }

  Future<void> _createActivityAreaDisplay() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<ActivityArea> activityAreas = await fileService.getActivityAreaFiles('activity_areas');
    activityAreaMarkers = _generateActivityAreaMarkers(activityAreas);
    activityAreaLines = _generateActivityAreaLines(activityAreas);
  }

  List<Marker> _generateProjectMarkers(List<Project> projects) {
    List<Marker> markers = <Marker>[];
    for (Project project in projects) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(project.start_date);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(project.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        for(int i = 0; i < project.geometry.length; i++) {
          List<double> point = project.geometry[i];
          markers.add(
            Marker(
              child: (i == 0 || i == project.geometry.length - 1) ? markerShownButton(project) : markerHiddenButton(project),
              point: LatLng(point[1], point[0]),
            ),
          );
        }
      }
    //}
    return markers;
  }

  List<Marker> _generateRoadSectionMarkers(List<RoadSection> roadsections) {
    List<Marker> markers = <Marker>[];
    for (RoadSection roadsection in roadsections) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(roadsection.start_date!);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(roadsection.end_date!);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        for(int i = 0; i < roadsection.geometry.length; i++) {
          List<double> point = roadsection.geometry[i];
          markers.add(
            Marker(
              child: (i == 0 || i == roadsection.geometry.length - 1) ? markerShownButton(roadsection) : markerHiddenButton(roadsection),
              point: LatLng(point[1], point[0]),
            ),
          );
        }
      }
    //}
    return markers;
  }

  List<Marker> _generateActivityAreaMarkers(List<ActivityArea> activityAreas) {
    List<Marker> markers = <Marker>[];
    for (ActivityArea activityArea in activityAreas) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        for(int i = 0; i < activityArea.geometry.length; i++) {
          List<double> point = activityArea.geometry[i];
          markers.add(
            Marker(
              child: (i == 0 || i == activityArea.geometry.length - 1) ? markerShownButton(activityArea) : markerHiddenButton(activityArea),
              point: LatLng(point[1], point[0]),
            ),
          );
        }
      }
    //}
    return markers;
  }

  Widget markerShownButton(Object item) {
    Color iconColor = Colors.red;
    if (item is Project) {
      iconColor = Colors.red;
    } else if (item is RoadSection) {
      iconColor = primaryColor;
    } else if (item is ActivityArea) {
      iconColor = Colors.yellow;
    }
    return GestureDetector(
      child: Icon(Icons.circle, color: iconColor),
      onTap: () {
        if (item is Project) {
          Project project = item as Project;
          Get.dialog(_viewProjectStats(project));
        } else if (item is RoadSection) {
          RoadSection roadSection = item as RoadSection;
          Get.dialog(_viewRoadSectionStats(roadSection));
        } else if (item is ActivityArea) {
          ActivityArea activityArea = item as ActivityArea;
          Get.dialog(_viewActivityAreaStats(activityArea));
        }
      }
    );
  }

  Widget markerHiddenButton(Object item) {
    return GestureDetector(
      child: Icon(Icons.circle, color: Colors.transparent),
      onTap: () {
        if (item is Project) {
          Project project = item as Project;
          Get.dialog(_viewProjectStats(project));
        } else if (item is RoadSection) {
          RoadSection roadSection = item as RoadSection;
          Get.dialog(_viewRoadSectionStats(roadSection));
        } else if (item is ActivityArea) {
          ActivityArea activityArea = item as ActivityArea;
          Get.dialog(_viewActivityAreaStats(activityArea));
        }
      }
    );
  }

  List<Polyline> _generateProjectLines(List<Project> projects) {
    List<Polyline> polylines = <Polyline>[];
    for (Project project in projects) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(project.start_date);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(project.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        List<LatLng> polylinePoints = <LatLng>[];
        for (List<double> point in project.geometry) {
          polylinePoints.add(LatLng(point[1], point[0]));
        }
        polylines.add(
          Polyline(
            points: polylinePoints,
            strokeWidth: 6,
            color: Colors.red,
          ),
        );
      }
    //}
    return polylines;
  }

  List<Polyline> _generateRoadSectionLines(List<RoadSection> roadsections) {
    List<Polyline> polylines = <Polyline>[];
    for (RoadSection roadsection in roadsections) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(roadsection.start_date!);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(roadsection.end_date!);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        List<LatLng> polylinePoints = <LatLng>[];
        for (List<double> point in roadsection.geometry) {
          polylinePoints.add(LatLng(point[1], point[0]));
        }
        polylines.add(
          Polyline(
            points: polylinePoints,
            strokeWidth: 6,
            color: primaryColor,
          ),
        );
      }
    //}
    return polylines;
  }

  List<Polyline> _generateActivityAreaLines(List<ActivityArea> activityAreas) {
    List<Polyline> polylines = <Polyline>[];
    for (ActivityArea activityArea in activityAreas) {
      DateTime startDate = DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
      DateTime endDate = DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
        List<LatLng> polylinePoints = <LatLng>[];
        for (List<double> point in activityArea.geometry) {
          polylinePoints.add(LatLng(point[1], point[0]));
        }
        polylines.add(
          Polyline(
            points: polylinePoints,
            strokeWidth: 6,
            color: Colors.yellow,
          ),
        );
      }
    //}
    return polylines;
  }

  void updateLayers() {
    List<Marker> markers = [];
    List<Polyline> polylines = [];
    if (showProjects.value) {
      markers.addAll(projectMarkers);
      polylines.addAll(projectLines);
    }
    if (showRoadSections.value) {
      markers.addAll(roadSectionMarkers);
      polylines.addAll(roadSectionLines);
    }
    if (showActivityAreas.value) {
      markers.addAll(activityAreaMarkers);
      polylines.addAll(activityAreaLines);
    }
    markers.add(_userLocationMarker());
    markerLayer.value = MarkerLayer(markers: markers);
    polylineLayer.value = PolylineLayer(polylines: polylines);
  }

  Marker _userLocationMarker() {
    print('Current Position: ${currentPosition.value!.latitude}, ${currentPosition.value!.longitude}');
    return Marker(
      point: LatLng(currentPosition.value!.latitude, currentPosition.value!.longitude),
      child: Image.asset('assets/images/location_with_border.png', width: 25.0, height: 25.0),
      rotate: true
    );
  }

  Future<void> downloadProjectsFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadProjectsFromServer();
    await _createProjectDisplay();
    print('Project Markers: ${projectMarkers.length}');
    updateLayers();
  }

  Future<void> downloadRoadSectionsFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadRoadSectionsFromServer();
    await _createRoadSectionDisplay();
    updateLayers();
  }

  Future<void> downloadActivityAreasFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadActivityAreasFromServer();
    await _createActivityAreaDisplay();
    updateLayers();
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

  
  Dialog _viewProjectStats(Project project) {
    DateTime startDate = DateTime.fromMillisecondsSinceEpoch(project.start_date);
    DateTime endDate = DateTime.fromMillisecondsSinceEpoch(project.end_date);
    BuildContext context = Get.context!;

    // Format the DateTime objects
    String formattedStartDate = DateFormat.yMd().add_jm().format(startDate);
    String formattedEndDate = DateFormat.yMd().add_jm().format(endDate);
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
                        Text(project.name.toUpperCase(), style: style_two.copyWith(fontWeight: FontWeight.bold)),
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
                    _formattedText("Start Date", formattedStartDate, context),
                    _formattedText("End Date", formattedEndDate, context),
                    _formattedText("Status", project.active_status.toString().split('.').last.capitalize!, context),
                    _formattedText("Description", project.description, context),
                    verticalSpaceSmall,
                  ],
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Container()),
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

  Dialog _viewRoadSectionStats(RoadSection roadsection) {
    DateTime startDate = DateTime.fromMillisecondsSinceEpoch(roadsection.start_date!);
    DateTime endDate = DateTime.fromMillisecondsSinceEpoch(roadsection.end_date!);
    BuildContext context = Get.context!;

    // Format the DateTime objects
    String formattedStartDate = DateFormat.yMd().add_jm().format(startDate);
    String formattedEndDate = DateFormat.yMd().add_jm().format(endDate);
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
                        Text(roadsection.segment_name!.toUpperCase(), style: style_two.copyWith(fontWeight: FontWeight.bold)),
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
                    _formattedText("Start Date", formattedStartDate, context),
                    _formattedText("End Date", formattedEndDate, context),
                    _formattedText("Status", roadsection.armed_status.toString().split('.').last.capitalize!, context),
                    verticalSpaceSmall,
                  ],
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Container()),
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

  Dialog _viewActivityAreaStats(ActivityArea activityArea) {
    DateTime startDate = DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
    DateTime endDate = DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
    BuildContext context = Get.context!;

    // Format the DateTime objects
    String formattedStartDate = DateFormat.yMd().add_jm().format(startDate);
    String formattedEndDate = DateFormat.yMd().add_jm().format(endDate);
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
                        Text(activityArea.area_name.toUpperCase(), style: style_two.copyWith(fontWeight: FontWeight.bold)),
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
                    _formattedText("Start Date", formattedStartDate, context),
                    _formattedText("End Date", formattedEndDate, context),
                    verticalSpaceSmall,
                  ],
                ),
              ),
              verticalSpaceSmall,
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Container()),
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
}