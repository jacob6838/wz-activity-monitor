import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wzam/models/stt_commands.dart';
import 'package:wzam/models/wake_word_commands.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/speech_service.dart';
import 'package:wzam/services/wake_word_service.dart';
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
  final SpeechService speechService = Get.find<SpeechService>();
  final WakeWordService wakeWordService = Get.find<WakeWordService>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    wakeWordService.commandStream.any((WakeWordCommand command) {
      print("Home Page Wake Word Command: ${command.text}");
      // Show a toast notification
      Fluttertoast.showToast(
        msg: "Wake Word Command: ${command.text}",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      speechService.stopListening();
      Future.delayed(Duration(seconds: 2), () {
        speechService.startListening();
      });
      Future.delayed(Duration(seconds: 10), () {
        wakeWordService.startListening();
      });
      return true;
    });
    wakeWordService.initialize();
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
                context: context),
            verticalSpaceMedium,
            _button(
                onPressed: () {
                  Get.to(() => RecordingConfiguration());
                },
                title: 'Map Work Zone',
                context: context),
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
              child: Obx(() => Text(speechService.isListening.value
                  ? 'Listening...'
                  : 'Start Voice Command')),
            ),
            Obx(() => Text("Has Speech: ${speechService.hasSpeech.value}")),
            Obx(() => Text("Is Listening: ${speechService.isListening.value}")),
            Obx(() => Text(
                "Is Wake Listening: ${wakeWordService.isListening.value}")),
            Obx(() => Text("Wake Message: ${wakeWordService.message.value}")),
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
