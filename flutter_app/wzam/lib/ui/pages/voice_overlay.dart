import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/models/stt_commands.dart';
import 'package:wzam/services/speech_service.dart';
import 'package:wzam/services/wake_word_service.dart';

class VoiceOverlay extends StatelessWidget {
  const VoiceOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final SpeechService speechService = Get.find<SpeechService>();
    final WakeWordService wakeWordService = Get.find<WakeWordService>();

    // wakeWordService.commandStream.any((WakeWordCommand command) {
    //   print("Home Page Wake Word Command: ${command.text}");
    //   // Show a toast notification
    //   Fluttertoast.showToast(
    //     msg: "Wake Word Command: ${command.text}",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.BOTTOM,
    //     backgroundColor: Colors.black,
    //     textColor: Colors.white,
    //     fontSize: 16.0,
    //   );
    //   speechService.stopListening();
    //   Future.delayed(Duration(seconds: 2), () {
    //     speechService.startListening();
    //   });
    //   Future.delayed(Duration(seconds: 10), () {
    //     wakeWordService.startListening();
    //   });
    //   return true;
    // });
    // wakeWordService.initialize();
    speechService.initializeSpeech();
    // print("Home Page");
    // speechService.commandStream.listen((SttCommand command) {
    //   print("Home Page Command: ${command.text}");
    //   if (command.text == "create report") {
    //     Get.to(() => ReportPage());
    //   } else if (command.text == "map work zone") {
    //     Get.to(() => RecordingConfiguration());
    //   } else if (command.text == "view reports") {
    //     Get.to(() => ViewReports());
    //   } else {
    //     speechService.speak("Command Not Found, Please try again");
    //   }
    // });

    return Obx(() => Stack(
          children: [
            // Background overlay
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Display listening status
                    if (speechService.isListening.value)
                      const Icon(Icons.mic, size: 100, color: Colors.red)
                    else
                      const Icon(Icons.mic_off, size: 100, color: Colors.grey),

                    const SizedBox(height: 16),

                    // Display recognized text
                    Text(
                      speechService.isListening.value
                          ? "Listening..."
                          : "Tap the microphone to start listening",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 16),

                    // Display error messages or results
                    if (!speechService.hasSpeech.value)
                      const Text(
                        "Speech recognition is not available.",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                        textAlign: TextAlign.center,
                      )
                    else
                      StreamBuilder<String>(
                        stream: speechService.commandStream
                            .map((command) => command.confirmationString),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              "Confirm Command: ${snapshot.data}",
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            );
                          } else {
                            return const Text("No command recognized yet.",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center);
                          }
                        },
                      ),
                  ],
                ),
              ),
            ),

            // Microphone button at the bottom
            Positioned(
              bottom: 32,
              left: 0,
              right: 0,
              child: Center(
                child: FloatingActionButton(
                  onPressed: () async {
                    if (speechService.isListening.value) {
                      await speechService.stopListening();
                    } else {
                      await speechService.startListening();
                    }
                  },
                  backgroundColor: speechService.isListening.value
                      ? Colors.red
                      : Colors.blue,
                  child: Icon(
                    speechService.isListening.value
                        ? Icons.mic
                        : Icons.mic_none,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
