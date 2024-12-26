import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/recording_controller.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';

class WorkZoneRecording extends StatelessWidget {
  const WorkZoneRecording({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RecordingController>(tag: 'thisone');
    final mapController = MapController();

    return FutureBuilder(
      future: controller.initialize(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Work Zone Recording'),
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
                //map(context, controller, mapController, MediaQuery.of(context).orientation),
                Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Work Zone Recording'),
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
              Obx(() => Column(
                children: [
                  verticalSpaceMedium,
                  ElevatedButton(
                    onPressed: () {
                      controller.recording.value ? controller.stopWorkZoneRecording() : controller.startWorkZoneRecording();
                    },
                    child: controller.recording.value ? const Text('End of Work Zone') : const Text('Start Work Zone'),
                  ),
                  ElevatedButton(
                    onPressed: controller.recording.value ? () {
                      controller.toggleWorkersPresent();
                    } : null,
                    child: controller.workersPresent.value ? const Text('Workers are no longer present') : const Text('Workers are Present'),
                  ),
                ],
              )),
            ],
          ),
        );
      }
    );
  }

  Widget _map(BuildContext context, RecordingController controller, MapController mapController,
      Orientation orientation) {
    return Obx(() => SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: controller.currentPosition.value == null
                  ? LatLng(40.507289, -105.093355)
                  : LatLng(controller.currentPosition.value!.latitude, controller.currentPosition.value!.longitude),
              initialZoom: 17,
              onMapReady: () {
                controller.mapController = mapController;
                controller.startListeningToLocation();
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
