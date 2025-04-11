import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:wzam/controllers/settings_controller.dart';
import 'package:wzam/models/stt_commands.dart';

class SpeechService extends GetxService {
  // Static variables
  final Logger _logger = Logger();
  final SpeechToText _sttEngine = SpeechToText();
  final FlutterTts _ttsEngine = FlutterTts();
  final SettingsController settingsController = Get.find<SettingsController>();

  Rx<bool> hasSpeech = Rx<bool>(false);
  Rx<bool> isListening = Rx<bool>(false);
  Rx<String?> errorMessage = Rx<String?>(null);

  // Command Stream
  final StreamController<SttCommand> _commandController =
      StreamController<SttCommand>.broadcast();
  Stream<SttCommand> get commandStream => _commandController.stream;

  Future<void> initializeSpeech({bool reinitialize = false}) async {
    if (isListening.value && !reinitialize) {
      _logger.d("Exiting initializeSpeech: ${isListening.value} $reinitialize");
      return;
    }
    try {
      hasSpeech.value = await _sttEngine.initialize(
        onStatus: (status) {
          _logger.d("Speech status: $status");
          if (status == "listening") {
            isListening.value = true;
            errorMessage.value = null;
          } else if (status == "notListening") {
            isListening.value = false;
            errorMessage.value = null;
          } else if (status == "done") {
            isListening.value = false;
            errorMessage.value = null;
          }
        },
        onError: (error) {
          _logger.e("Speech error: $error");
          errorMessage.value = error.errorMsg;
        },
      );

//  TODO: && settingsController.listeningEnabled.value
      if (hasSpeech.value) {
        _listen();
      } else {
        _logger
            .w("Speech recognition is not available or disabled in settings.");
      }
    } catch (e) {
      _logger.e("Error initializing speech: $e");
      hasSpeech.value = false;
      errorMessage.value = "Error initializing speech: $e";
    }
  }

  // Method to speak the text
  Future<void> speak(String text) async {
    await _ttsEngine.setLanguage("en-US");
    await _ttsEngine.setSpeechRate(0.8);
    await _ttsEngine.speak(text);
  }

  // Method to listen for voice commands
  Future<void> _listen({bool announceCommands = false}) async {
    _logger.d("Listening for voice commands... ${isListening.value}");
    if (!isListening.value) {
      isListening.value = true;
      _sttEngine.listen(
        onResult: (result) async {
          _logger.i("Received voice command: ${result.recognizedWords}");
          SttCommand? command = await parseCommandText(result.recognizedWords);
          if (command != null) {
            if (announceCommands) {
              speak("Confirmed ${command.confirmationString}");
            }
            if (command == SttCommand.stop) {
              stopListening();
            }
            _commandController.add(command);
          }
        },
        listenFor: Duration(seconds: 30),
      );
    }
  }

  Future<SttCommand?> parseCommandText(String text) async {
    text = text
        .toLowerCase(); // Normalize the input text for case-insensitive matching
    for (final command in SttCommand.values) {
      if (command.comparisonStrings.any((comparisonString) =>
          text.contains(comparisonString.toLowerCase()))) {
        return command; // Return the first matching command
      }
    }
    return null; // Return null if no command matches
  }

  Future<void> startListening() async {
    await _listen();
  }

  Future<void> stopListening() async {
    isListening.value = false;
    await _sttEngine.stop();
  }
}
