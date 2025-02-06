import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:intl/intl.dart';


class ViewRecordings extends StatelessWidget {

  List<Recording> recordings = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadInRecordings(),
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
            padding: const EdgeInsets.all(24.0),
            child: ListView(  
              children: [
                ..._getRecordingsList()
              ],
            ),
          )
        );
      }
    );
  }

  Future<void> loadInRecordings() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    recordings = await fileService.getRecordingFiles('recordings');
  }

  List<Widget> _getRecordingsList() {
    List<Widget> recordingsList = [];
    for (Recording recording in recordings) {
      recordingsList.add(
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.black, width: 1.0)
          ),
          title: Text(recording.recording_name),
          subtitle: _formattedDate(recording.recording_date),
          onTap: () {
            //Get.to(() => ViewRecording(recording: recording));
          },
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
