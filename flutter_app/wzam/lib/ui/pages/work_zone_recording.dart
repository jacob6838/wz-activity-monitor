import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/recording_controller.dart';
import 'package:wzam/ui/pages/home.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';

//This is the main map page that is used while doing a recording
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
                Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('Work Zone Recording'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.offAll(() => Home());
              }
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Get.to(() => SettingsPage());
                }
              ),
            ],
          ),
          body: Obx(() => Stack(
            children: [
              _map(context, controller, mapController, MediaQuery.of(context).orientation),
              ...mapButtons(context, controller),
              ...controller.inWorkZone.value ? inWorkZoneScreen(context, controller) : outOfWorkZoneScreen(context, controller),
            ],
          ),
        ));
      }
    );
  }

  Widget _map(BuildContext context, RecordingController controller, MapController mapController,
      Orientation orientation) {
    return Obx(() => Positioned(
        top: 0,
        width: screenWidth(context) ,
        height: screenHeight(context) * 0.7,
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

  List<Widget> mapButtons(BuildContext context, RecordingController controller) {
    return [
      Positioned (  
        right: 10,
        top: 15,
        child: Column (  
          children: [  
            ElevatedButton(  
              onPressed: () {
                controller.mapZoom.value = controller.mapZoom.value + 1;
                controller.updateMap();
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, backgroundColor: lightGrey, fixedSize: Size(40, 40), minimumSize: Size(40, 40)),
              child: Icon(Icons.add, size: 20),
            ),
            verticalSpaceTiny,
            ElevatedButton(  
              onPressed: () {
                controller.mapZoom.value = controller.mapZoom.value - 1;
                controller.updateMap();
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, backgroundColor: lightGrey, fixedSize: Size(40, 40), minimumSize: Size(40, 40)),
              child: Icon(Icons.remove),
            ),
          ]
        )
      )
    ];
  }

  List<Widget> outOfWorkZoneScreen(BuildContext context, RecordingController controller) {
    return [
      //Bottom Line Left
      Positioned(  
        bottom: 0,
        left: 0,
        width: screenWidth(context) * .30,
        child: Container(
          width: screenWidth(context) * .65,
          height: 100,
          color: lightGrey,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, padding: EdgeInsets.zero),
            onPressed: () {},
            child: Opacity(  
              opacity: 0.5,
              child: Image.asset('assets/images/workers_present.png', height: 90),
            )
          ),
        ),
      ),

      //Bottom Line Middle
      Positioned(  
        bottom: 0,
        left: screenWidth(context) * .30,
        width: screenWidth(context) * .35,
        child: Container(
          height: 100,
          color: lightGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack( 
                alignment: Alignment.center, 
                children: [
                  Opacity(  
                    opacity: 0.5,
                    child: Image.asset('assets/images/speed_limit.png', scale: 2),
                  ),
                  Text("${controller.currentSpeedLimit.value}", style: style_three.copyWith(color: darkGrey, fontWeight: FontWeight.w600)),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(  
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder()),
                    onPressed: null,
                    child: const Opacity (
                      opacity: 0.5,
                      child: Icon(Icons.add, size: 20),
                    )
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder()),
                    onPressed: null,
                    child: const Opacity (
                      opacity: 0.5,
                      child: Icon(Icons.remove, size: 20),
                    ),
                  ),
                ]
              ),
            ]
          ),
        ),
      ),

      //Bottom Line Right
      Positioned(  
        bottom: 0,
        right: 0,
        width: screenWidth(context) * .35,
        child: Container(  
          height: 100,
          color: controller.updatingMap ? primaryColor : mediumGrey,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0),
            onPressed: controller.updatingMap ? () {
              controller.inWorkZone.value ? controller.stopWorkZoneRecording() : controller.startWorkZoneRecording();
            } : null,
            child: Text(controller.updatingMap ? 'Start Work Zone' : 'Recording Completed', style: style_three.copyWith(fontWeight: FontWeight.w600, fontSize: 19), textAlign: TextAlign.center) , 
          ),
        )
      ),
      
      //Second Row
      Positioned(
        bottom: 130,
        child: Container(
          width: screenWidth(context),
          height: 70,
          color: lightGrey,
          child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...createLaneButtons(controller)
            ]
          ),
        )),
      ),

      //Top Row - label
      Positioned(  
        bottom: 200,
        child: Container(  
          width: screenWidth(context),
          height: 30,
          color: darkGrey,
          child: Text("Lane Management", style: style_three.copyWith(color: lightGrey, fontWeight: FontWeight.w600, fontSize: 19), textAlign: TextAlign.center),
        )
      ),

      //Bottom Row - label
      Positioned(  
        bottom: 100,
        child: Container(  
          width: screenWidth(context),
          height: 30,
          color: darkGrey,
        )
      ),
    ];
  }

  List<Widget> inWorkZoneScreen(BuildContext context, RecordingController controller) {
    return [
      //Bottom Line Left
      Positioned(  
        bottom: 0,
        left: 0,
        width: screenWidth(context) * .30,
        child: Container(
          width: screenWidth(context) * .65,
          height: 100,
          color: lightGrey,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, padding: EdgeInsets.zero),
            onPressed: controller.inWorkZone.value ? () {
              controller.toggleWorkersPresent();
            } : null,
            child: controller.workersPresent.value ? Image.asset('assets/images/workers_present.png', height: 90) : Image.asset('assets/images/workers_not_present.png', height: 90),
          ),
        ),
      ),

      //Bottom Line Middle
      Positioned(  
        bottom: 0,
        left: screenWidth(context) * .30,
        width: screenWidth(context) * .35,
        child: Container(
          height: 100,
          color: lightGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack( 
                alignment: Alignment.center, 
                children: [
                  Image.asset('assets/images/speed_limit.png', scale: 2),
                  Text("${controller.currentSpeedLimit.value}", style: style_three.copyWith(fontWeight: FontWeight.w600)),
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(  
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder()),
                    onPressed: () {
                      controller.speedLimitChanging(5);
                    },
                    child: Icon(Icons.add, size: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder()),
                    onPressed: () {
                      controller.speedLimitChanging(-5);
                    },
                    child: Icon(Icons.remove, size: 20),
                  ),
                ]
              ),
            ]
          ),
        ),
      ),

      //Bottom Line Right
      Positioned(  
        bottom: 0,
        right: 0,
        width: screenWidth(context) * .35,
        child: Container(  
          height: 100,
          color: primaryColor,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () {
              controller.inWorkZone.value ? controller.stopWorkZoneRecording() : controller.startWorkZoneRecording();
            },
            child: Text('End Work Zone', style: style_three.copyWith(fontWeight: FontWeight.w600), textAlign: TextAlign.center), 
          ),
        )
      ),
      
      //Second Row
      Positioned(
        bottom: 130,
        child: Container(
          width: screenWidth(context),
          height: 70,
          color: lightGrey,
          child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...createLaneButtons(controller)
            ]
          ),
        )),
      ),

      //Top Row - label
      Positioned(  
        bottom: 200,
        child: Container(  
          width: screenWidth(context),
          height: 30,
          color: darkGrey,
          child: Text("Lane Management", style: style_three.copyWith(color: lightGrey, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
        )
      ),

      //Bottom Row - label
      Positioned(  
        bottom: 100,
        child: Container(  
          width: screenWidth(context),
          height: 30,
          color: darkGrey,
        )
      ),
    ];
  }

  List<Widget> createLaneButtons(RecordingController controller) {
    List<Widget> laneButtons = [];
    for (int i = 0; i < controller.lanesOpened.length; i++) {
      laneButtons.add(ElevatedButton(
        onPressed: controller.inWorkZone.value ? () {
          controller.lanesChanging(i);
        }: null,
        //child: controller.lanesOpened[i] ? Text('Lane ${i+1} Open') : Text('Lane ${i+1} Closed'),
        style: ElevatedButton.styleFrom(backgroundColor: controller.lanesOpened[i] ? Colors.green : Colors.red, padding: EdgeInsets.zero, shape: CircleBorder()),
        child: controller.lanesOpened[i] ? Image.asset('assets/images/lane.png', scale: 2) : Image.asset('assets/images/closed_lane.png', scale: 2),
        //style: controller.lanesOpened[i] ? ElevatedButton.styleFrom(backgroundColor: Colors.green) : ElevatedButton.styleFrom(backgroundColor: Colors.grey[600]),
      ));
    }
    return laneButtons;
  }
}
