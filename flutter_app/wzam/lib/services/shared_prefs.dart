import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  SharedPrefs();
  SharedPreferences? _prefs;
  static const String _keyDarkTheme = "darkTheme";

  Future initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  Future saveDarkModeToPrefs(bool darkMode) async {
    await initPrefs();
    _prefs?.setBool(_keyDarkTheme, darkMode);
  }

  Future<bool?> getDarkModeFromPrefs() async {
    await initPrefs();
    return _prefs?.getBool(_keyDarkTheme);
  }


  Future setPrefs() async {
    await initPrefs();
    bool? darkMode = await getDarkModeFromPrefs();
    if (darkMode != null) {
      if (darkMode) {
        Get.changeThemeMode(ThemeMode.dark);
      } else {
        Get.changeThemeMode(ThemeMode.light);
      }
    } else {
      Get.changeThemeMode(ThemeMode.system);
    }
  }
}
