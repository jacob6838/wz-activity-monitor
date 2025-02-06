import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


class ViewRecordings extends StatelessWidget {

  List<Recording> recordings = [];
  List<Recording> unUploadedRecordings = [];

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
          body: Column(
            children: [
              SizedBox(
                height: screenHeight(context) * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ListView(  
                    children: [
                      ..._getRecordingsList(context),
                    ],
                  ),
                ),
              ),
              Expanded(  
                child: Container(),
              ),
              ElevatedButton(
                onPressed: () async {
                  //await downloadRecordingsFromServer();
                },
                child: const Text('Load Recordings'),
              ),
              verticalSpaceSmall,
              ElevatedButton(  
                onPressed: unUploadedRecordings.isEmpty ? null : () async {
                  await uploadLocalRecordings();
                  Get.forceAppUpdate();
                },
                child: const Text('Upload Recordings'),
              ),
              verticalSpaceLarge
            ],
          )
        );
      }
    );
  }

  Future<void> loadInRecordings() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    recordings = await fileService.getRecordingFiles('recordings');
    unUploadedRecordings = await fileService.getRecordingFiles('recordings_local');
  }

  List<Widget> _getRecordingsList(BuildContext context) {
    List<Widget> recordingsList = [];
    for (Recording recording in recordings) {
      recordingsList.add(
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Theme.of(context).hintColor ,width: 1.0)
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
    for (Recording recording in unUploadedRecordings) {
      recordingsList.add(
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: primaryColor, width: 1.0)
          ),
          title: Text(recording.recording_name, style: TextStyle(color: primaryColor)),
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

  Future<void> uploadLocalRecordings() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    for (Recording recording in unUploadedRecordings) {
      await postRecording(recording, fileService);
    }
    await loadInRecordings();
  }

  Future<void> postRecording(Recording recording, FileStorageService fileStorageService) async {
    final url = Uri.parse('https://wzamapi.azurewebsites.net/recordings');
    final headers = {'Content-Type': 'application/json'};
    try {
      final response = await http.post(url, 
        headers: headers, 
        body: json.encode( 
          {
            "project_id": recording.project_id,
            "segment_id": recording.segment_id,
            "area_id": recording.area_id,
            "recording_name": recording.recording_name,
            "types_of_work": recording.types_of_work.map((e) => e.toJson()).toList(),
            "start_date": 0,
            "end_date": 0,
            "recording_date": 0,
            "area_type": recording.area_type.toString().split('.').last,
            "mobility_speed_mph": recording.mobility_speed_mph,
            'points': recording.points.map((point) => {
              'date': point.date,
              'num_satellites': point.numSatellites,
              'accuracy': point.accuracy,
              'latitude': point.latitude,
              'longitude': point.longitude,
              'altitude': point.altitude,
              'speed': point.speed,
              'heading': point.heading,
              'num_lanes': point.numLanes,
              'markings': point.markings?.map((marking) => marking.toJson()).toList(),
            }).toList(),
          }
        )
      );
      if (response.statusCode == 200) {
        print('Recording posted successfully');
        await fileStorageService.saveRecording(recording, true);
        await fileStorageService.deleteRecording(recording, 'recordings_local');
      } else {
        print('Failed to post recording: ${response.statusCode}'); //TODO: add notification
      }
    } catch (e) {
      print('Error posting recording: $e'); //TODO: add notification
    }
  }
}
