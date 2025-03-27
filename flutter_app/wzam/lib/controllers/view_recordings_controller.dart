import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/models/report.dart';
import 'package:wzam/models/wzdx_models.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/location_service.dart';
import 'package:intl/intl.dart';
import 'package:wzam/ui/styles/app_colors.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/text_styles.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';
import 'package:http/http.dart' as http;

class ViewRecordingsController extends GetxController {
  
  RxList<Recording> recordings = <Recording>[].obs;
  RxList<Recording> unUploadedRecordings = <Recording>[].obs;
  RxBool areThereLocalRecordings = false.obs;

  Future<void> loadInRecordings() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    recordings.value  = await fileService.getRecordingFiles('recordings');
    unUploadedRecordings.value = await fileService.getRecordingFiles('recordings_local');
    if (unUploadedRecordings.isNotEmpty) {
      areThereLocalRecordings.value = true;
    }
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
              'num_satellites': point.num_satellites,
              'accuracy': point.accuracy,
              'latitude': point.latitude,
              'longitude': point.longitude,
              'altitude': point.altitude,
              'speed': point.speed,
              'heading': point.heading,
              'num_lanes': point.num_lanes,
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
        NotificationController().queueNotification('Failed to upload Recording', 'Check your internet and try again');
        
      }
    } catch (e) {
      print('Error posting recording: $e'); //TODO: add notification
      NotificationController().queueNotification('Failed to upload Recording', 'Check your internet and try again');
    }
  }
  
  Future<void> downloadRecordingsFromServer() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    await fileService.downloadRecordingsFromServer();
    await loadInRecordings();
  }
}


