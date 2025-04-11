import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/models/project.dart';
import 'package:wzam/services/file_storage.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Project>>(
      future: _getProjects(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No projects available.'));
        } else {
          final projects = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Select a Project'),
            ),
            body: ListView.builder(
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    title: Text(project.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      '${project.description}\nStart: ${formatDateTime(project.start_date)}\nEnd: ${formatDateTime(project.end_date)}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    isThreeLine: true,
                    onTap: () {
                      Get.back(result: project); // Return the selected project
                    },
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  String formatDateTime(int millisSinceEpoch) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(millisSinceEpoch);
    return '${dateTime.year}-${dateTime.month}-${dateTime.day} ${dateTime.hour}:${dateTime.minute}';
  }

  Future<List<ProjectWithId>> _getProjects() async {
    FileStorageService fileService = Get.find<FileStorageService>();
    return await fileService.downloadProjectsFromServer();
  }
}
