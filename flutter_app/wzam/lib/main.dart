import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/ui/pages/load_screen.dart';
import 'package:wzam/ui/styles/theme_setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WZAM',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Load(),
    );
  }
}
