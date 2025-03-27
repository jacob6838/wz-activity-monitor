import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wzam/models/activity_area.dart';
import 'package:wzam/models/archive_directory.dart';
import 'package:wzam/models/project.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/models/report.dart';
import 'package:http/http.dart' as http;
import 'package:wzam/models/road_section.dart';
import 'package:wzam/services/auth_service.dart';

class FileStorageService extends GetxService {

  static Future<String> _readDataFromFile(File file) async {
    return file.readAsString();
  }

  static Future<String> _getDocsDir({String subdirectory = "road-config"}) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/$subdirectory";
    return path;
  }

  static Future<String?> _getDownloadsDirectory({String subdirectory = ""}) async {
    final directory = await getDownloadsDirectory();
    if (directory == null) {
      return null;
    }
    final path = "${directory.path}/$subdirectory";
    return path;
  }

  static Future<String> _getTempDir({String subdirectory = "road-config"}) async {
    final directory = await getTemporaryDirectory();
    final path = "${directory.path}/$subdirectory";
    return path;
  }

  static Future<String> _getDirectory(ArchiveDirectory directory, String subdirectory) async {
    // defaults to application documents
    switch (directory) {
      case ArchiveDirectory.APPLICATION_DOCUMENTS:
        return _getDocsDir();
      case ArchiveDirectory.DOWNLOADS:
        return await _getDownloadsDirectory(subdirectory: subdirectory) ?? _getDocsDir();
      case ArchiveDirectory.TEMPORARY:
        return _getTempDir();
    }
  }

  Future<String> _getFilePath(String name, ArchiveDirectory directory, String subdirectory) async {
    String path = await _getDirectory(directory, subdirectory);
    return '$path/$name';
  }

  Future<List<File>> listFiles(ArchiveDirectory directory, {String? subdirectory}) async {
    final path = await _getDirectory(directory, subdirectory ?? "");
    final dir = Directory(path + (subdirectory == null ? "" : "/$subdirectory"));
    if (!await dir.exists()) {
      return [];
    }
    return dir.list().where((v) => v is File).map((v) => v as File).toList();
  }

  Future<File?> getFile(String? name) async {
    final path = await _getDocsDir();
    File file = File('$path/$name');
    if (!await file.exists()) {
      return null;
    }
    return file;
  }
  Future<String> createFile(
      {String? fileName, ArchiveDirectory directory = ArchiveDirectory.DOWNLOADS, String subdirectory = ""}) async {
    String fileNameLocal = fileName ?? 'wiens_test_${DateTime.now().toUtc().toIso8601String()}.jsonl';
    final String filePath = await _getFilePath(fileNameLocal, directory, subdirectory);
    File file = File(filePath);
    if (!await file.exists()) {
      await file.create(recursive: true);
    } 
    return fileNameLocal;
  }

  Future<void> writeToFile(String fileName, String data, String subdirectory) async {
    var path = await _getDownloadsDirectory(subdirectory: subdirectory);
    path = '$path/$fileName';
    File file = File(path);
    await file.writeAsString(data);
  }

  Future<List<String>> getConfigFileNames() async {
    final path = await _getDownloadsDirectory();
    if (path == null) {
      return [];
    }
    final dir = Directory(path);
    if (!await dir.exists()) {
      return [];
    }
    return dir.list().where((v) => v is File).map((v) => v.path.split('/').last).toList();
  }

  Future<void> saveReport(Report report, bool alreadyUploaded) async {
    final String reportJson = jsonEncode(report);
    final String fileName = 'report_${report.report_name}_${DateTime.now().toUtc().toIso8601String()}.json';
    await createFile(fileName: fileName, subdirectory: alreadyUploaded ? 'reports' : 'reports_local').then((fileName) async {
      await writeToFile(fileName, reportJson, alreadyUploaded ? 'reports' : 'reports_local');
    });
  }

  Future<void> saveRecording(Recording recording, bool alreadyUploaded) async {
    final String recordingJson = jsonEncode(recording);
    final String fileName = 'recording_${recording.recording_name}_${DateTime.now().toUtc().toIso8601String()}.json';
    await createFile(fileName: fileName, subdirectory: alreadyUploaded ? 'recordings' : 'recordings_local').then((fileName) async {
      await writeToFile(fileName, recordingJson, alreadyUploaded ? 'recordings' : 'recordings_local');
    });
  }

  Future<void> saveProject(Project project) async {
    final String reportJson = jsonEncode(project);
    final String fileName = 'project_${project.name}_${DateTime.now().toUtc().toIso8601String()}.json';
    await createFile(fileName: fileName, subdirectory: 'projects').then((fileName) async {
      await writeToFile(fileName, reportJson, 'projects');
    });
  }

  Future<void> saveRoadSection(RoadSection roadsection) async {
    final String reportJson = jsonEncode(roadsection);
    final String fileName = 'project_${roadsection.segment_name}_${DateTime.now().toUtc().toIso8601String()}.json';
    await createFile(fileName: fileName, subdirectory: 'road_sections').then((fileName) async {
      await writeToFile(fileName, reportJson, 'road_sections');
    });
  }

  Future<void> saveActivityArea(ActivityArea activityArea) async {
    final String reportJson = jsonEncode(activityArea);
    final String fileName = 'activity_area_${activityArea.area_name}_${DateTime.now().toUtc().toIso8601String()}.json';
    await createFile(fileName: fileName, subdirectory: 'activity_areas').then((fileName) async {
      await writeToFile(fileName, reportJson, 'activity_areas');
    });
  }

  Future<List<Report>> getReportFiles(String subdirectory) async {
    final String directoryPath = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(directoryPath);
    if (!await dir.exists()) {
      throw Exception("Directory does not exist");
    }
    final List<FileSystemEntity> entities = await dir.list().toList();
    final List<File> files = entities.whereType<File>().toList();
    List<Report> reports = convertFilesToReports(files);
    return reports;
  }

  Future<List<Recording>> getRecordingFiles(String subdirectory) async {
    final String directoryPath = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(directoryPath);
    if (!await dir.exists()) {
      //throw Exception("Directory does not exist");
    } else{
      final List<FileSystemEntity> entities = await dir.list().toList();
      final List<File> files = entities.whereType<File>().toList();
      List<Recording> recordings = convertFilesToRecordings(files);
      return recordings;
    }
    return [];
  }

  Future<List<Project>> getProjectFiles(String subdirectory) async {
    final String directoryPath = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(directoryPath);
    if (!await dir.exists()) {
      //throw Exception("Directory does not exist");
      await dir.create(recursive: true);
    }
    final List<FileSystemEntity> entities = await dir.list().toList();
    final List<File> files = entities.whereType<File>().toList();
    List<Project> projects = convertFilesToProjects(files);
    print(projects.length);
    return projects;
  }

  Future<List<RoadSection>> getRoadSectionFiles(String subdirectory) async {
    final String directoryPath = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(directoryPath);
    if (!await dir.exists()) {
      //throw Exception("Directory does not exist");
      await dir.create(recursive: true);
    }
    final List<FileSystemEntity> entities = await dir.list().toList();
    final List<File> files = entities.whereType<File>().toList();
    List<RoadSection> roadsections = convertFilesToRoadSections(files);
    return roadsections;
  }

  Future<List<ActivityArea>> getActivityAreaFiles(String subdirectory) async {
    final String directoryPath = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(directoryPath);
    if (!await dir.exists()) {
      //throw Exception("Directory does not exist");
      await dir.create(recursive: true);
    }
    final List<FileSystemEntity> entities = await dir.list().toList();
    final List<File> files = entities.whereType<File>().toList();
    List<ActivityArea> activityAreas = convertFilesToActivityAreas(files);
    return activityAreas;
  }

  List<Report> convertFilesToReports(List<File> files) {
    List<Report> reports = [];
    for (File file in files) {
      String reportJson = file.readAsStringSync();
      Map<String, dynamic> reportMap = jsonDecode(reportJson);

      if (reportMap.containsKey('id')) {
        ReportWithId report = ReportWithId.fromJson(reportMap);
        reports.add(report);
      } else {
        Report report = Report.fromJson(reportMap);
        reports.add(report);
      }
    }
    return reports;
  }

  List<Project> convertFilesToProjects(List<File> files) {
    List<Project> projects = [];
    print(files.length);
    for (File file in files) {
      String projectJson = file.readAsStringSync();
      Map<String, dynamic> projectMap = jsonDecode(projectJson);

      if (projectMap.containsKey('id')) {
        ProjectWithId project = ProjectWithId.fromJson(projectMap);
        projects.add(project);
      } else {
        Project project = Project.fromJson(projectMap);
        projects.add(project);
      }
    }
    print(projects.length);
    return projects;
  }

  List<RoadSection> convertFilesToRoadSections(List<File> files) {
    List<RoadSection> roadsections = [];
    print(files.length);
    for (File file in files) {
      String roadSectionJson = file.readAsStringSync();
      Map<String, dynamic> roadSectionMap = jsonDecode(roadSectionJson);

      if (roadSectionMap.containsKey('id')) {
        RoadSectionWithId roadSectionWithId = RoadSectionWithId.fromJson(roadSectionMap);
        roadsections.add(roadSectionWithId);
      } else {
        RoadSection roadsection = RoadSection.fromJson(roadSectionMap);
        roadsections.add(roadsection);
      }
    }
    return roadsections;
  }

  List<ActivityArea> convertFilesToActivityAreas(List<File> files) {
    List<ActivityArea> activityAreas = [];
    print(files.length);
    for (File file in files) {
      String activityAreasJson = file.readAsStringSync();
      Map<String, dynamic> activityAreaMap = jsonDecode(activityAreasJson);

      if (activityAreaMap.containsKey('id')) {
        ActivityAreaWithId roadSectionWithId = ActivityAreaWithId.fromJson(activityAreaMap);
        activityAreas.add(roadSectionWithId);
      } else {
        ActivityArea activityArea = ActivityArea.fromJson(activityAreaMap);
        activityAreas.add(activityArea);
      }
    }
    return activityAreas;
  }

  Future<void> downloadReportsFromServer() async {
    //Map<String, String> headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    AuthService authService = Get.find<AuthService>();
    final url = Uri.parse('https://wzamapi.azurewebsites.net/reports'); //<-- TODO: change so url is not hardcoded like this?
    //final headers = {'Content-Type': 'application/json', 'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    final headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        print('Report gathered successfully');
        await saveReports(response.body);
      } else {
        print('Failed to get report: ${response.statusCode}');
      }
    } catch (e) {
      print('Error getting report: $e');
    }
  }

  Future<void> downloadProjectsFromServer() async {
    //Map<String, String> headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    AuthService authService = Get.find<AuthService>();
    final url = Uri.parse('https://wzamapi.azurewebsites.net/projects'); //<-- TODO: change so url is not hardcoded like this?
    final headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        print('Project gathered successfully');
        await saveProjects(response.body);
      } else {
        print('Failed to get projects: ${response.statusCode}');
      }
    } catch (e) {
      print('Error getting projects: $e');
    }
  }

  Future<void> downloadRoadSectionsFromServer() async {
    //Map<String, String> headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    AuthService authService = Get.find<AuthService>();
    final url = Uri.parse('https://wzamapi.azurewebsites.net/road_sections'); //<-- TODO: change so url is not hardcoded like this?
    final headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        print('Road Section gathered successfully');
        await saveRoadSections(response.body);
      } else {
        print('Failed to get road sections: ${response.statusCode}');
      }
    } catch (e) {
      print('Error getting road sections: $e');
    }
  }

  Future<void> downloadActivityAreasFromServer() async {
    AuthService authService = Get.find<AuthService>();
    final url = Uri.parse('https://wzamapi.azurewebsites.net/activity_areas'); //<-- TODO: change so url is not hardcoded like this?
    final headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        print('Activity Area gathered successfully');
        await saveActivityAreas(response.body);
      } else {
        print('Failed to get activity areas: ${response.statusCode}');
      }
    } catch (e) {
      print('Error getting activity areas: $e');
    }
  }

  Future<void> downloadRecordingsFromServer() async {
    AuthService authService = Get.find<AuthService>();
    final url = Uri.parse('https://wzamapi.azurewebsites.net/recordings'); //<-- TODO: change so url is not hardcoded like this?
    final headers = {'Authorization': 'Bearer ${await authService.getAccessToken()}'};
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        print('Recording gathered successfully');
        await saveRecordings(response.body);
      } else {
        print('Failed to get recording: ${response.statusCode}');
      }
    } catch (e) {
      print('Error getting recording: $e');
    }
  }

  Future saveReportsTwo(String responseBody) async{
    await deleteAllReports();
    List<dynamic> reportsJson = jsonDecode(responseBody);
    List<ReportWithId> reports = reportsJson.map((report) => ReportWithId.fromJson(report)).toList();
    List<Report> reportsWithoutId = reports.map((report) => Report(
      project_id: report.project_id,
      segment_id: report.segment_id,
      area_id: report.area_id,
      report_name: report.report_name,
      types_of_work: report.types_of_work,
      workers_present: report.workers_present,
      start_date: report.start_date,
      end_date: report.end_date,
      report_date: report.report_date,
      area_type: report.area_type,
      mobility_speed_mph: report.mobility_speed_mph,
      geometry_type: report.geometry_type,
      geometry: report.geometry,
      geometry_line_width: report.geometry_line_width,
      license_plate: report.license_plate,
      surface_type: report.surface_type,
      //point: report.point
    )).toList();
    for (Report report in reportsWithoutId){
      await saveReport(report, true);
    }
  }

  Future saveReports(String responseBody) async{
    await deleteAllReports();
    List<dynamic> reportsJson = jsonDecode(responseBody);
    List<ReportWithId> reports = reportsJson.map((report) => ReportWithId.fromJson(report)).toList();
    List<Report> reportsTwo = reports;
    print(reportsTwo.length);
    for (Report report in reportsTwo){
      await saveReport(report, true);
    }
  }

  Future saveRecordings(String responseBody) async{
    await deleteAllRecordings();
    List<dynamic> recordingsJson = jsonDecode(responseBody);
    List<RecordingWithId> recordings = recordingsJson.map((recording) => RecordingWithId.fromJson(recording)).toList();
    List<Recording> recordingsWithoutId = recordings.map((report) => Recording(
      project_id: report.project_id,
      segment_id: report.segment_id,
      area_id: report.area_id,
      recording_name: report.recording_name,
      types_of_work: report.types_of_work,
      start_date: report.start_date,
      end_date: report.end_date,
      recording_date: report.recording_date,
      area_type: report.area_type,
      mobility_speed_mph: report.mobility_speed_mph,
      points: report.points
    )).toList();
    for (Recording recording in recordingsWithoutId){
      await saveRecording(recording, true);
    }
  }

  Future saveProjects(String responseBody) async{
    await deleteAllProjects();
    List<dynamic> projectJson = jsonDecode(responseBody);
    List<ProjectWithId> projects = projectJson.map((project) => ProjectWithId.fromJson(project)).toList();
    List<Project> projectsTwo = projects;
    print(projectsTwo.length);
    for (Project project in projectsTwo){
      await saveProject(project);
      print(project.geometry[0][1]);
      print(project.geometry[0][0]);
    }
  }

  Future saveRoadSections(String responseBody) async{
    await deleteAllRoadSections();
    List<dynamic> roadSectionsJson = jsonDecode(responseBody);
    List<RoadSectionWithId> roadSections = roadSectionsJson.map((roadsection) => RoadSectionWithId.fromJson(roadsection)).toList();
    List<RoadSection> roadSectionsTwo = roadSections;
    for (RoadSection roadsection in roadSectionsTwo){
      await saveRoadSection(roadsection);
    }
  }

  Future saveActivityAreas(String responseBody) async {
    await deleteAllRoadSections();
    List<dynamic> activityAreasJson = jsonDecode(responseBody);
    List<ActivityAreaWithId> activityAreas = activityAreasJson.map((activityArea) => ActivityAreaWithId.fromJson(activityArea)).toList();
    List<ActivityArea> activityAreasTwo = activityAreas;
    for (ActivityArea activityArea in activityAreasTwo){
      await saveActivityArea(activityArea);
    }
  }


  Future deleteAllReports() async {
    String directoryPath = 'reports'; //TODO: combine with deleteAllRecordings
    String path = await _getDownloadsDirectory(subdirectory: directoryPath) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        file.deleteSync();
      } else if (file is Directory) {
        file.deleteSync(recursive: true);
      }
    });
  }

  Future deleteAllRecordings() async {
    String directoryPath = 'recordings';
    String path = await _getDownloadsDirectory(subdirectory: directoryPath) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        file.deleteSync();
      } else if (file is Directory) {
        file.deleteSync(recursive: true);
      }
    });
  }

  Future deleteAllProjects() async { //TODO: combine with deleteAllReports
    String directoryPath = 'projects';
    String path = await _getDownloadsDirectory(subdirectory: directoryPath) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        file.deleteSync();
      } else if (file is Directory) {
        file.deleteSync(recursive: true);
      }
    });
  }

  Future deleteAllRoadSections() async { //TODO: combine with deleteAllReports
    String directoryPath = 'road_sections';
    String path = await _getDownloadsDirectory(subdirectory: directoryPath) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        file.deleteSync();
      } else if (file is Directory) {
        file.deleteSync(recursive: true);
      }
    });
  }

  Future deleteReport(Report report, String subdirectory) async {
    String path = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        if (file.path.contains(report.report_name)) {
          file.deleteSync();
        }
      }
    });
  }

  Future deleteRecording(Recording recording, String subdirectory) async {
    String path = await _getDownloadsDirectory(subdirectory: subdirectory) ?? "";
    final dir = Directory(path);
    if (!dir.existsSync()) {
      return;
    }
    dir.listSync().forEach((file) {
      if (file is File) {
        if (file.path.contains(recording.recording_name)) {
          file.deleteSync();
        }
      }
    });
  }

  List<Recording> convertFilesToRecordings(List<File> files) {
    List<Recording> recordings = [];
    for (File file in files) {
      String recordingJson = file.readAsStringSync();
      Map<String, dynamic> reportMap = jsonDecode(recordingJson);
      Recording report = Recording.fromJson(reportMap);
      recordings.add(report);
    }
    return recordings;
  }

}
