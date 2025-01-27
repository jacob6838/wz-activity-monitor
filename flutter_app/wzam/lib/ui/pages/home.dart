import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/recording_configuration.dart';
import 'package:wzam/ui/pages/report_generator.dart';
import 'package:wzam/ui/pages/view_reports.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';


class Home extends StatelessWidget {
  Home({super.key});
  final FileStorageService fileStorageService = Get.find<FileStorageService>();
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
        title: 'Work Zone Activity Mapper',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            //Create a report button
            _button( 
              onPressed: () {
                Get.to(() => ReportPage());
              },
              title: 'Create Report',
              context: context
            ),
            verticalSpaceMedium,
            //Create a recording button
            _button(
              onPressed: () {
                Get.to(() => RecordingConfiguration());
              },
              title: 'Map Work Zone',
              context: context
            ),
            verticalSpaceMedium,
            //View the reports map button
            _button(
              onPressed: () {
                Get.to(() => const ViewReports());
              },
              title: 'View Reports',
              context: context
            ),
          ]
        ),
      ),
    );
  }

  SizedBox _button({required void Function()? onPressed, required String title, required BuildContext context}) {
    return SizedBox(
      width: screenWidthPercentage(context, percentage: 0.75),
      child: ElevatedButton(
        onPressed: onPressed,
        child: WZAMText.styleFour(title),
      ),
    );
  }
}