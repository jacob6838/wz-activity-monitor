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

class ActivityAreaMapController extends GetxController {
  late MapController? mapController;
  LocationService locationService = Get.find<LocationService>();
  late Rx<Position?> currentPosition;
  List<Marker> activityAreaMarkers = [];
  List<Polyline> activityAreaLines = [];
  Rx<MarkerLayer> markerLayer = const MarkerLayer(markers: <Marker>[]).obs;
  Rx<PolylineLayer> polylineLayer =
      const PolylineLayer(polylines: <Polyline>[]).obs;
  RxBool openViewSettings = false.obs;
  RxBool showActivityAreas = true.obs;
  RxBool selectActivityArea = true.obs;

  Future<void> initialize() async {
    currentPosition = locationService.currentPosition;
    await downloadActivityAreasFromServer();
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    updateLayers();
  }

  Future<void> initializeTwo() async {
    while (currentPosition.value == null) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    showActivityAreas.value = true;
    updateLayers();
  }

  Future<void> _createActivityAreaDisplay() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    List<ActivityArea> activityAreas =
        await fileService.getActivityAreaFiles('activity_areas');
    activityAreaMarkers = _generateActivityAreaMarkers(activityAreas);
    activityAreaLines = _generateActivityAreaLines(activityAreas);
  }

  List<Marker> _generateActivityAreaMarkers(List<ActivityArea> activityAreas) {
    List<Marker> markers = <Marker>[];
    for (ActivityArea activityArea in activityAreas) {
      DateTime startDate =
          DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
      DateTime endDate =
          DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
      for (int i = 0; i < activityArea.geometry.length; i++) {
        List<double> point = activityArea.geometry[i];
        markers.add(
          Marker(
            child: (i == 0 || i == activityArea.geometry.length - 1)
                ? markerShownButton(activityArea)
                : markerHiddenButton(activityArea),
            point: LatLng(point[1], point[0]),
          ),
        );
      }
    }
    //}
    return markers;
  }

  Widget markerShownButton(Object item) {
    Color iconColor = Colors.orange;
    return GestureDetector(
        child: Icon(Icons.circle, color: iconColor),
        onTap: () {
          if (item is ActivityArea) {
            ActivityArea activityArea = item as ActivityArea;
            Get.dialog(_viewActivityAreaStats(activityArea));
          }
        });
  }

  Widget markerHiddenButton(Object item) {
    return GestureDetector(
        child: Icon(Icons.circle, color: Colors.transparent),
        onTap: () {
          if (item is ActivityArea) {
            ActivityArea activityArea = item as ActivityArea;
            Get.dialog(_viewActivityAreaStats(activityArea));
          }
        });
  }

  List<Polyline> _generateActivityAreaLines(List<ActivityArea> activityAreas) {
    List<Polyline> polylines = <Polyline>[];
    for (ActivityArea activityArea in activityAreas) {
      DateTime startDate =
          DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
      DateTime endDate =
          DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
      //if (DateTime.now().isAfter(startDate) && DateTime.now().isBefore(endDate)) {
      List<LatLng> polylinePoints = <LatLng>[];
      for (List<double> point in activityArea.geometry) {
        polylinePoints.add(LatLng(point[1], point[0]));
      }
      polylines.add(
        Polyline(
          points: polylinePoints,
          strokeWidth: 6,
          color: Colors.orange,
        ),
      );
    }
    //}
    return polylines;
  }

  void updateLayers() {
    List<Marker> markers = [];
    List<Polyline> polylines = [];
    if (showActivityAreas.value) {
      markers.addAll(activityAreaMarkers);
      polylines.addAll(activityAreaLines);
    }
    markers.add(_userLocationMarker());
    markerLayer.value = MarkerLayer(markers: markers);
    polylineLayer.value = PolylineLayer(polylines: polylines);
  }

  Marker _userLocationMarker() {
    print(
        'Current Position: ${currentPosition.value!.latitude}, ${currentPosition.value!.longitude}');
    return Marker(
        point: LatLng(
            currentPosition.value!.latitude, currentPosition.value!.longitude),
        child: Image.asset('assets/images/location_with_border.png',
            width: 25.0, height: 25.0),
        rotate: true);
  }

  Future<void> downloadActivityAreasFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadActivityAreasFromServer();
    await _createActivityAreaDisplay();
    updateLayers();
  }

  RichText _formattedText(String name, String content, BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "$name: ",
          style: style_body.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).textTheme.bodySmall?.color ??
                  Colors.black)),
      TextSpan(
          text: content,
          style: style_body.copyWith(
              color:
                  Theme.of(context).textTheme.bodySmall?.color ?? Colors.black))
    ]));
  }

  Dialog _viewActivityAreaStats(ActivityArea activityArea) {
    DateTime startDate =
        DateTime.fromMillisecondsSinceEpoch(activityArea.start_date);
    DateTime endDate =
        DateTime.fromMillisecondsSinceEpoch(activityArea.end_date);
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
                        Text(activityArea.area_name.toUpperCase(),
                            style: style_two.copyWith(
                                fontWeight: FontWeight.bold)),
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
                    _formattedText(
                        "Description", activityArea.description ?? "", context),
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
                    (selectActivityArea.value)
                        ? ClickableText(
                            text: "Select This Activity Area",
                            onTap: () {
                              Get.back();
                              ActivityAreaWithId activityAreaWithId =
                                  activityArea as ActivityAreaWithId;
                              selectActivityArea.value = false;
                              Get.back(result: activityAreaWithId);
                            },
                          )
                        : Container(),
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
