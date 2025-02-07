import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/settings_controller.dart';
import 'package:wzam/ui/pages/home.dart';

class VoiceService extends GetxService {
  // Static variables
  final RxBool _listeningSettings = SettingsController().listeningEnabled;
}
