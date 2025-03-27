import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/project_map_controller.dart';
import 'package:wzam/models/project.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';


class SelectProjects extends StatelessWidget {
  const SelectProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProjectMapController>();
    final mapController = MapController();

    return FutureBuilder(
      future: controller.initializeTwo(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Project Selection'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Get.to(() => SettingsPage());
                  }
                ),
              ],
            ),
            body: const Stack(
              children: [
                Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Projects Map'),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Get.to(() => SettingsPage());
                }
              ),
            ],
          ),
          body: Stack(
            children: [
              _map(context, controller, mapController, MediaQuery.of(context).orientation),
              /*Positioned(
                right: 10,
                top: 10,
                child: Obx(() => GestureDetector( 
                  onTap: () {
                    controller.openViewSettings.value = !controller.openViewSettings.value;
                  }, 
                  child: controller.openViewSettings.value
                      ? viewSettingsExpanded(controller)
                      : viewSettingsCollapsed(),
                )),
              )*/
            ],
          ),
        );
      }
    );
  }

  Widget viewSettingsCollapsed() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: const Row(
        children: [
          Text('View Settings', style: style_body),
          horizontalSpaceSmall,
          Icon(Icons.arrow_left),
        ],
      ),
    );
  }

  Widget viewSettingsExpanded(ProjectMapController controller) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('View Settings', style: style_four),
              horizontalSpaceSmall,
              Icon(Icons.arrow_drop_down),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Show Projects', style: style_body),
              horizontalSpaceSmall,
              Transform.scale(
                scale: 0.75,
                child: Switch(
                  activeTrackColor: primaryColor,
                  value: controller.showProjects.value,
                  onChanged: (value) {
                    controller.showProjects.value = value;
                    controller.updateLayers();
                  },
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Show Road Sections', style: style_body),
              horizontalSpaceSmall,
              Transform.scale(
                scale: 0.75,
                child: Switch(
                  activeTrackColor: primaryColor,
                  value: controller.showRoadSections.value,
                  onChanged: (value) {
                    controller.showRoadSections.value = value;
                    controller.updateLayers();
                  },
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Show Activity Areas', style: style_body),
              horizontalSpaceSmall,
              Transform.scale(
                scale: 0.75,
                child: Switch(
                  activeTrackColor: primaryColor,
                  value: controller.showActivityAreas.value,
                  onChanged: (value) {
                    controller.showActivityAreas.value = value;
                    controller.updateLayers();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _map(BuildContext context, ProjectMapController controller, MapController mapController,
      Orientation orientation) {
    return Obx(() => SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: controller.currentPosition.value == null
                  ? const LatLng(40.507289, -105.093355)
                  : LatLng(controller.currentPosition.value!.latitude, controller.currentPosition.value!.longitude),
              initialZoom: 12,
              onMapReady: () {
                controller.mapController = mapController;
              },
            ),
            children: [
              TileLayer(
                urlTemplate: "https://api.mapbox.com/styles/v1/mapbox/satellite-streets-v11/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
                additionalOptions: {
                  'accessToken': dotenv.env['MAPBOX_ACCESS_TOKEN']!,
                  'id': 'mapbox.satellite',
                },
              ),
              controller.polylineLayer.value,
              controller.markerLayer.value,
            ]),
    ));
  }
}
