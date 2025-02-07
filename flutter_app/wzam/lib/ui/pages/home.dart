import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wzam/models/stt_commands.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/speech_service.dart';
import 'package:wzam/ui/pages/recording_configuration.dart';
import 'package:wzam/ui/pages/report_generator.dart';
import 'package:wzam/ui/pages/view_reports.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';
import 'package:wzam/controllers/settings_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final FileStorageService fileStorageService = Get.find<FileStorageService>();
  bool _isListening = false; // To track if the app is listening
  String _command = ""; // Captured voice command
  final SettingsController settingsController = Get.find<SettingsController>();
  final SpeechService speechService = Get.find<SpeechService>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    speechService.initializeSpeech();
    print("Home Page");
    speechService.commandStream.listen((SttCommand command) {
      print("Home Page Command: ${command.text}");
      if (command.text == "create report") {
        Get.to(() => ReportPage());
      } else if (command.text == "map work zone") {
        Get.to(() => RecordingConfiguration());
      } else if (command.text == "view reports") {
        Get.to(() => ViewReports());
      } else {
        speechService.speak("Command Not Found, Please try again");
      }
    });
    return Scaffold(
      appBar: WZAMAppBar(
        title: 'Work Zone Activity Mapper',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button(
              onPressed: () {
                print("Create Report");
                Get.to(() => ReportPage());
              },
              title: 'Create Report',
              context: context,
            ),
            verticalSpaceMedium,
            _button(
              onPressed: () {
                Get.to(() => RecordingConfiguration());
              },
              title: 'Map Work Zone',
              context: context,
            ),
            verticalSpaceMedium,
            _button(
              onPressed: () {
                Get.to(() => const ViewReports());
              },
              title: 'View Reports',
              context: context,
            ),
            verticalSpaceMedium,
            ElevatedButton(
              onPressed: () {
                if (speechService.isListening.value) {
                  speechService.stopListening();
                } else {
                  speechService.startListening();
                  Get.snackbar('Voice Commands Disabled',
                      'Please enable voice commands in Settings.');
                }
              },
              child:
                  Text(_isListening ? 'Listening...' : 'Start Voice Command'),
            ),
            Obx(() => Text("Has Speech: ${speechService.hasSpeech.value}")),
            Obx(() => Text("Is Listening: ${speechService.isListening.value}")),
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          onPressed: () {
            if (speechService.isListening.value) {
              print("Stop Listening");
              speechService.stopListening();
            } else {
              print("Start Listening");
              speechService.startListening();
            }
          },
          tooltip: 'Listen',
          child:
              Icon(speechService.isListening.value ? Icons.mic : Icons.mic_off),
        ),
      ),
    );
  }

  @override
  void dispose() {
    speechService.stopListening();
  }

  SizedBox _button({
    required void Function()? onPressed,
    required String title,
    required BuildContext context,
  }) {
    return SizedBox(
      width: screenWidthPercentage(context, percentage: 0.75),
      child: ElevatedButton(
        onPressed: onPressed,
        child: WZAMText.styleFour(title),
      ),
    );
  }
}
