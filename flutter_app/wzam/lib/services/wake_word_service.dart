import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:wzam/controllers/settings_controller.dart';
import 'package:flutter_wake_word/flutter_wake_word.dart';
import 'package:flutter_wake_word/use_model.dart';
import 'package:flutter_wake_word/instance_config.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wzam/models/wake_word_commands.dart';

class WakeWordService extends GetxService {
  // Static variables
  final Logger _logger = Logger();
  final SettingsController settingsController = Get.find<SettingsController>();

  Rx<bool> hasSpeech = Rx<bool>(false);
  Rx<bool> isListening = Rx<bool>(false);
  Rx<String> message = Rx<String>('Listening to WakeWord...');
  Rx<String> _platformVersion = Rx<String>('Unknown');
  final _flutterWakeWordPlugin = FlutterWakeWord();

  final useModel = UseModel(); // Single instance of UseModel

  // Location Stream
  final StreamController<WakeWordCommand> _commandController =
      StreamController<WakeWordCommand>.broadcast();
  Stream<WakeWordCommand> get commandStream => _commandController.stream;

  final List<InstanceConfig> instanceConfigs = [
    InstanceConfig(
      id: WakeWordCommand.heyWorkZone.text,
      modelName: 'need_help_now.onnx',
      threshold: 0.9999,
      bufferCnt: 3,
      sticky: false,
    ),
  ];

  Future<void> initializeKeywordDetection(List<InstanceConfig> configs) async {
    try {
      print("After requestAudioPermissions:");

      print("useModel == : $useModel");
      await useModel.setKeywordDetectionLicense(
          "MTc0NDY2NDQwMDAwMA==-m4g05tL50nMcnOp4mu6NghsgkfXk1ZNVTPo26+2/Z0E=");
      print("After useModel.setKeywordDetectionLicense:");

      await useModel.loadModel(configs, onWakeWordDetected);
      print("After useModel.loadModel:");
    } catch (e) {
      print("Error initializing keyword detection: $e");
    }
  }

  Future<void> openSettings() async {
    if (await Permission.microphone.isPermanentlyDenied) {
      print('Microphone permission permanently denied.');
      await openAppSettings();
    } else {
      print('Microphone permission denied.');
    }
  }

  Future<void> requestAudioPermissions() async {
    var status = await Permission.microphone.status;

    if (status.isDenied) {
      print('No Microphone permission requesting:');
      status = await Permission.microphone.request();
    }

    if (status.isGranted) {
      print('Microphone permission granted.');
      if (Platform.isAndroid) {
        var foregroundServicePermission =
            await Permission.systemAlertWindow.request();
        if (!foregroundServicePermission.isGranted) {
          foregroundServicePermission =
              await Permission.systemAlertWindow.request();
        }
      }
      await initializeKeywordDetection(instanceConfigs);
    } else {
      print('Microphone permission denied.');
      openSettings();
    }
  }

  void initialize() {
    // startMemoryMonitoring();
    initPlatformState();
    requestAudioPermissions();
  }

  void startListening() {
    useModel.startListening();
    message.value = "Listening to WakeWord...";
  }

  void stopListening({String? word}) {
    useModel.stopListening();
    message.value = "Stopped Listening to WakeWord... $word";
  }

  void onWakeWordDetected(String wakeWord) {
    print("onWakeWordDetected(): $wakeWord");
    print("Calling stopListening(): $wakeWord");
    _logger.i("WakeWord '$wakeWord' DETECTED");
    stopListening(word: wakeWord);
    _commandController.add(WakeWordCommand.heyWorkZone);
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await _flutterWakeWordPlugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    _platformVersion.value = platformVersion;
  }
}
