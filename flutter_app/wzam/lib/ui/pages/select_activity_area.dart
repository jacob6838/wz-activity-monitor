import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/activity_area_map_controller.dart';
import 'package:wzam/controllers/project_map_controller.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/screen_size.dart';

class SelectActivityArea extends StatelessWidget {
  const SelectActivityArea({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ActivityAreaMapController>();
    final mapController = MapController();

    return FutureBuilder(
        future: controller.initializeTwo(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Activity Area Selection'),
                actions: [
                  IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Get.to(() => SettingsPage());
                      }),
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
              title: const Text('Activity Area Map'),
            ),
            body: Stack(
              children: [
                _map(context, controller, mapController,
                    MediaQuery.of(context).orientation),
              ],
            ),
          );
        });
  }

  Widget _map(BuildContext context, ActivityAreaMapController controller,
      MapController mapController, Orientation orientation) {
    return Obx(() => SizedBox(
          width: screenWidth(context),
          height: screenHeight(context),
          child: FlutterMap(
              mapController: mapController,
              options: MapOptions(
                initialCenter: controller.currentPosition.value == null
                    ? const LatLng(40.507289, -105.093355)
                    : LatLng(controller.currentPosition.value!.latitude,
                        controller.currentPosition.value!.longitude),
                initialZoom: 12,
                onMapReady: () {
                  controller.mapController = mapController;
                },
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/mapbox/satellite-streets-v11/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
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
