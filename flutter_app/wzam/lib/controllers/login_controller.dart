import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/notification_controller.dart';
import 'package:wzam/controllers/view_recordings_controller.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/services/auth_service.dart';
import 'package:wzam/services/location_service.dart';
import 'package:wzam/services/secure_storage.dart';
import 'package:wzam/services/wake_word_service.dart';
import 'package:wzam/ui/pages/home.dart';
import 'package:wzam/ui/pages/login.dart';
import 'package:wzam/services/speech_service.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  AuthService authService = Get.put(AuthService());
  SecureStorage secureStorage = Get.find<SecureStorage>();

  Rx<bool> isLoading = false.obs;

  Rx<bool> profileEntered = false.obs;

  Rx<bool> loggedIn = false.obs;

  LoginController();

  Future<void> init() async {
    usernameController.text = await authService.getUsername();
    passwordController.text = await authService.getPassword();
    Get.offAll(() => LogIn());
  }

  Future<int> attemptLogIn(
      String username,
      String password,
      String keycloakEndpoint,
      String realm,
      String client,
      String clientSecret) async {
    return await authService.authenticateUser(
        username, password, keycloakEndpoint, realm, client, clientSecret);
  }

  Future login() async {
    bool success = false;
    isLoading.value = true;
    String keycloakEndpoint = await secureStorage.getKeycloakEndpoint();
    String realm = await secureStorage.getRealm();
    String client = await secureStorage.getClient();
    String clientSecret = await secureStorage.getClientSecret();

    await attemptLogIn(usernameController.text, passwordController.text,
            keycloakEndpoint, realm, client, clientSecret)
        .then((code) {
      switch (code) {
        case 200:
          success = true;
          break;
        case 401:
          NotificationController()
              .queueNotification('Login', 'Invalid username or password');
        case 403:
          NotificationController().queueNotification('Login', 'Login Failed');
          break;
        case 408:
          NotificationController()
              .queueNotification('Login', 'Request Timed Out');
          break;
        default:
          NotificationController()
              .queueNotification('Login', 'Unknown error: $code');
          break;
      }
    });
    if (success) {
      await onLogin();
    }
    isLoading.value = false;
  }

  Future onLogin() async {
    await authService.setPassword(passwordController.text);
    await authService.setUsername(usernameController.text);
    Get.put(LocationService());
    Get.put(SpeechService());
    Get.put(WakeWordService());
    ViewReportsController viewReportsController =
        Get.put(ViewReportsController());
    ViewRecordingsController viewRecordingsController =
        Get.put(ViewRecordingsController());
    await viewReportsController.initialize();
    await viewRecordingsController.loadInRecordings();
    loggedIn.value = true;
    Get.offAll(() => Home());
  }

  Future logout() async {
    await authService.logoutUser();
    await authService.clear();
    usernameController.clear();
    passwordController.clear();
    loggedIn.value = false;
  }
}
