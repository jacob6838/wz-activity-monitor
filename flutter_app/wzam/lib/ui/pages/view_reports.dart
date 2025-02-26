import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/screen_size.dart';


class ViewReports extends StatelessWidget {
  const ViewReports({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ViewReportsController());
    final mapController = MapController();

    return FutureBuilder(
      future: controller.initialize(context),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Report Viewer'),
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
            title: const Text('Report Viewer'),
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
              Positioned(  
                bottom: 40,
                left: 20,
                right: 20,
                child: Obx(() => Column(
                  children: [
                    ElevatedButton(  
                      onPressed: () async{
                        await controller.downloadReportsFromServer();
                      },
                      child: const Text('Load Reports'),
                    ),
                    ElevatedButton(  
                      onPressed: controller.areThereLocalReports.value ? () async{
                        await controller.uploadLocalReports();
                      } : null,
                      child: const Text('Upload Local Reports'),
                    ),
                  ],
                )),
              ),
              Obx(() => controller.tryingToUpload.value ?
                Center(child: CircularProgressIndicator()): Container()),
            ],
          ),
        );
      }
    );
  }

  Widget _map(BuildContext context, ViewReportsController controller, MapController mapController,
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
              initialZoom: 17,
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
              controller.polygonLayer.value,
              controller.polylineLayer.value,
              controller.markerLayer.value,
            ]),
    ));
  }
}
