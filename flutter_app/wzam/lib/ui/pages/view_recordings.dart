import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/controllers/view_recordings_controller.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:wzam/ui/styles/text_styles.dart';


class ViewRecordings extends StatelessWidget {

  final ViewRecordingsController controller = Get.find<ViewRecordingsController>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.loadInRecordings(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Recordings'),
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
            title: const Text('Recordings'),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Get.to(() => SettingsPage());
                }
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(() => Column(
              children: [
                Expanded(  
                  child: ListView(  
                    children: [
                      ..._getRecordingsList(context),
                    ],
                  )  
                ),
                verticalSpaceMedium,
                ElevatedButton(
                  onPressed: () async {
                    await controller.downloadRecordingsFromServer();
                    Get.forceAppUpdate(); //TODO: Make this better so you don't have to force update
                  },
                  child: const Text('Load Recordings'),
                ),
                verticalSpaceSmall,
                ElevatedButton(  
                  onPressed: controller.unUploadedRecordings.isEmpty ? null : () async {
                    await controller.uploadLocalRecordings();
                    Get.forceAppUpdate(); //TODO: Make this better so you don't have to force update
                  },
                  child: const Text('Upload Local Recordings'),
                ),
              ],
            ),
          )
        ));
      }
    );
  }

  List<Widget> _getRecordingsList(BuildContext context) {
    List<Widget> recordingsList = [];
    for (Recording recording in controller.recordings) {
      recordingsList.add(
        Container(  
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Theme.of(context).hintColor ,width: 1.0)
          ),
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recording.recording_name, style: style_four),
                _formattedDate(recording.recording_date),
              ],
            ),
          ),
        )
      );
      recordingsList.add(verticalSpaceSmall);
    }
    for (Recording recording in controller.unUploadedRecordings) {
      recordingsList.add(
        Container(  
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Theme.of(context).primaryColor, width: 1.0)
          ),
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recording.recording_name, style: style_four),
                _formattedDate(recording.recording_date),
              ],
            ),
          ),
        )
      );
      recordingsList.add(verticalSpaceSmall);
    }
    return recordingsList;
  }

  Text _formattedDate(int date) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date);
    String formattedStartDate = DateFormat.yMd().add_jm().format(dateTime);
    return Text(formattedStartDate);
  }
}
