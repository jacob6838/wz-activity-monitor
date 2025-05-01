import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/app_state_controller.dart';
import 'package:wzam/services/push_notification_service.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';


class LiveReportPage extends StatelessWidget {
  LiveReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    AppStateController  appStateController = Get.find<AppStateController>();
    return Scaffold(
      appBar: WZAMAppBar(
        title: 'Live Report',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Obx(() => ElevatedButton(
              child: appStateController.liveReporting.value ? const Text("Stop the Live Reporting Session") : const Text("Start Live Reporting"),
              onPressed: () async {
                appStateController.liveReporting.value = !appStateController.liveReporting.value;
              }
            )),
          ]
        ),
      ),
    );
  }
}