import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/work_zone_area_selection_controller.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';

class WorkZoneAreaSelection extends StatelessWidget {
  const WorkZoneAreaSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WorkZoneAreaSelectionController();
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
              Column(
                children: [
                  verticalSpaceMedium,
                  _dropdownField("Geometry Type", context, controller),
                  ElevatedButton(
                    onPressed: () {
                      controller.saveWorkZoneGeometry();
                    },
                    child: const Text('Save Work Zone Geometry'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.points.clear();
                      controller.updateMarkerLayer();
                    },
                    child: const Text('Clear Points'),
                  )
                ],
              )
            ],
          ),
        );
      }
    );
  }

  Widget _map(BuildContext context, WorkZoneAreaSelectionController controller, MapController mapController,
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

  Widget _dropdownField(String labelText, BuildContext context, WorkZoneAreaSelectionController controller) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      isExpanded: true,
      menuMaxHeight: screenHeightPercentage(context, percentage: 0.5),
      dropdownColor: Theme.of(context).dialogBackgroundColor,
      items: controller.geometryTypes.map((e) => DropdownMenuItem(
        value: e,
        child: Text(e),
      )).toList(),
      onChanged: (value) async {
        controller.geometryType = value.toString();
      }
    );
  }
}
