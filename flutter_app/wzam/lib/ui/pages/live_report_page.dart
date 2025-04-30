import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/view_recordings_controller.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/services/push_notification_service.dart';
import 'package:wzam/ui/pages/recording_configuration.dart';
import 'package:wzam/ui/pages/report_generator.dart';
import 'package:wzam/ui/pages/view_projects.dart';
import 'package:wzam/ui/pages/view_recordings.dart';
import 'package:wzam/ui/pages/view_reports.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';


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
    return Scaffold(
      appBar: WZAMAppBar(
        title: 'Live Report',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            const Text("hi", style: style_three),
            verticalSpaceMedium,
            ElevatedButton(
              child: const Text("Start Live Location"),
              onPressed: () async {
                //LocationService locationService = Get.find<LocationService>();
                //await locationService.startLocationUpdates();
                PushNotificationService pushNotificationService = Get.find<PushNotificationService>();
                pushNotificationService.showLocationNotification(title: "Live Report", payload: "Live Recording", delaySeconds: 5);
              }
            ),
          ]
        ),
      ),
    );
  }
}