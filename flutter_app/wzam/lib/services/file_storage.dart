import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wzam/models/archive_directory.dart';
import 'package:wzam/models/recording.dart';
import 'package:wzam/models/report.dart';

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
    } else{
      print("booooooooo");
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

  void saveReport(Report report) {
    final String reportJson = jsonEncode(report);
    final String fileName = 'report_${DateTime.now().toUtc().toIso8601String()}.json';
    createFile(fileName: fileName, subdirectory: 'reports').then((fileName) {
      writeToFile(fileName, reportJson, 'reports');
    });
  }

  void saveRecording(Recording recording) {
    final String recordingJson = jsonEncode(recording);
    final String fileName = 'recording_${DateTime.now().toUtc().toIso8601String()}.json';
    createFile(fileName: fileName, subdirectory: 'recordings').then((fileName) {
      writeToFile(fileName, recordingJson, 'recordings');
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

  List<Report> convertFilesToReports(List<File> files) {
    List<Report> reports = [];
    for (File file in files) {
      String reportJson = file.readAsStringSync();
      Map<String, dynamic> reportMap = jsonDecode(reportJson);
      Report report = Report.fromJson(reportMap);
      reports.add(report);
    }
    return reports;
  }

}
