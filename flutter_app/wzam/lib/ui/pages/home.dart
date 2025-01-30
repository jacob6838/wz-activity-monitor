import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:get/get.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/ui/pages/recording_configuration.dart';
import 'package:wzam/ui/pages/report_generator.dart';
import 'package:wzam/ui/pages/view_reports.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';
import 'package:wzam/controllers/settings_controller.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FileStorageService fileStorageService = Get.find<FileStorageService>();
  final FlutterTts flutterTts = FlutterTts(); // Text-to-speech instance
  late stt.SpeechToText _speech; // Speech-to-text instance
  bool _isListening = false; // To track if the app is listening
  String _command = ""; // Captured voice command
  final SettingsController settingsController = Get.find<SettingsController>();

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    print("initstate");
  }

  Future<void> _initializeSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (status) {
        debugPrint("Speech status: $status");
        if (status == "listening") {
          setState(() {
            _isListening = true;
          });
        } else if (status == "notListening") {
          setState(() {
            _isListening = false;
          });
        }
      },
      onError: (error) {
        debugPrint("Speech error: $error");
      },
    );

    if (available && settingsController.listeningEnabled.value) {
      _listen();
    } else {
      debugPrint(
          "Speech recognition is not available or disabled in settings.");
    }
  }

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
            _button(
              onPressed: () {
                _speak("Create Report");
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
                if (settingsController.listeningEnabled.value) {
                  _listen();
                } else {
                  Get.snackbar('Voice Commands Disabled',
                      'Please enable voice commands in Settings.');
                }
              },
              child:
                  Text(_isListening ? 'Listening...' : 'Start Voice Command'),
            )
          ],
        ),
      ),
    );
  }

  // Method to speak the text
  Future<void> _speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }

  // Method to listen for voice commands
  Future<void> _listen() async {
    print(_isListening);
    if (!_isListening && await _speech.initialize()) {
      setState(() => _isListening = true);
      _speech.listen(onResult: (result) {
        setState(() {
          _command = result.recognizedWords;
          if (_command.toLowerCase() == "create report") {
            _speak("Navigating to Create Report");
            Get.to(() => ReportPage());
          } else if (_command.toLowerCase() == "map work zone") {
            _speak("Navigating to Map Work Zone");
            Get.to(() => RecordingConfiguration());
          } else if (_command.toLowerCase() == "view reports") {
            _speak("Navigating to View Reports");
            Get.to(() => ViewReports());
          } else {
            _speak("Command Not Found, Please try again");
          }
        });
      });
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
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
