import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/report_location_selection_controller.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/text_styles.dart';

//This is the map that pops up while making a report to place the workers location
class ReportLocationSelection extends StatelessWidget {
  const ReportLocationSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ReportLocationSelectionController();
    final mapController = MapController();

    return FutureBuilder(
      future: controller.initialize(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Work Zone Area Selection'),
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
            title: const Text('Work Zone Area Selection'),
          ),
          body: Stack(
            children: [
              _map(context, controller, mapController, MediaQuery.of(context).orientation),
              Positioned(  
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white.withOpacity(0.6),
                    ),
                    width: screenWidth(context) - 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Tap on the map to select the location of the work zone area', style: style_three, textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ),
              Positioned(  
                bottom: 0,
                left: 20,
                right: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      controller.saveReportLocationPoint();
                    },
                    child: const Text('Save Report Location Point'),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }

  Widget _map(BuildContext context, ReportLocationSelectionController controller, MapController mapController,
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
              initialZoom: 20,
              onMapReady: () {
                controller.mapController = mapController;
              },
              onTap: (TapPosition position, LatLng latlng) {
                controller.addMarker(position, latlng);
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
              controller.markerLayer.value,
            ]),
    ));
  }
}
