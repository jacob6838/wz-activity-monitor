import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/login_controller.dart';
import 'package:wzam/services/secure_storage.dart';
import 'package:wzam/services/shared_prefs.dart';
import 'package:wzam/ui/pages/login.dart';

class SettingsController extends GetxController {
  SettingsController();
  SharedPrefs sharedPrefs = SharedPrefs();
  SecureStorage secureStorage = SecureStorage();
  LoginController loginController = Get.find<LoginController>();

  Rx<bool> darkModeState = Get.isDarkMode.obs;

  RxString username = ''.obs;
  RxString password = ''.obs;
  RxString keycloakEndpoint = ''.obs;
  RxString keycloakRealm = ''.obs;
  RxString keycloakClient = ''.obs;
  RxString keycloakClientSecret = ''.obs;
  RxBool settingsChanged = false.obs;

  initialize() async {
    username.value = await secureStorage.getUsername();
    password.value = await secureStorage.getPassword();
    keycloakEndpoint.value = await secureStorage.getKeycloakEndpoint();
    keycloakRealm.value = await secureStorage.getRealm();
    keycloakClient.value = await secureStorage.getClient();
    keycloakClientSecret.value = await secureStorage.getClientSecret();
    bool? darkMode = await sharedPrefs.getDarkModeFromPrefs();
    if (darkMode != null) {
      if (darkMode) {
        Get.changeThemeMode(ThemeMode.dark);
        darkModeState.value = true;
      } else {
        Get.changeThemeMode(ThemeMode.light);
        darkModeState.value = false;
      }
    } else {
      Get.changeThemeMode(ThemeMode.system);
      darkModeState.value = Get.isDarkMode;
    }
  }

  Future logout() async {
    await loginController.logout();
    Get.offAll(() => LogIn());
  }

  Future saveAndLogout() async {
    await loginController.logout();
    await secureStorage.setKeycloakEndpoint(keycloakEndpoint.value);
    await secureStorage.setRealm(keycloakRealm.value);
    await secureStorage.setClient(keycloakClient.value);
    await secureStorage.setClientSecret(keycloakClientSecret.value);
    Get.offAll(() => LogIn());
  }

  @override
  void onInit() async {
    await initialize();
    super.onInit();
  }

  void switchModeState() async {
    darkModeState.value = !darkModeState.value;
    if (darkModeState.value) {
      Get.changeThemeMode(ThemeMode.dark);
      await sharedPrefs.saveDarkModeToPrefs(darkModeState.value);
    } else {
      Get.changeThemeMode(ThemeMode.light);
      await sharedPrefs.saveDarkModeToPrefs(darkModeState.value);
    }
  }
}

