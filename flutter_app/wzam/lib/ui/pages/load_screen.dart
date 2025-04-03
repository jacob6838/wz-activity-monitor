import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/login_controller.dart';
import 'package:wzam/controllers/settings_controller.dart';
import 'package:wzam/controllers/view_recordings_controller.dart';
import 'package:wzam/controllers/view_reports_controller.dart';
import 'package:wzam/services/auth_service.dart';
import 'package:wzam/services/file_storage.dart';
import 'package:wzam/services/secure_storage.dart';
import 'package:wzam/services/shared_prefs.dart';

class Load extends StatelessWidget {

  Future _init() async {
    LoginController controller = Get.find<LoginController>();
    SharedPrefs sharedPrefs = Get.put(SharedPrefs());
    await dotenv.load(fileName: '.env');
    await controller.init();
    await sharedPrefs.setPrefs();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(SecureStorage());
    Get.put(AuthService());
    Get.put(LoginController());
    Get.put(SettingsController());
    Get.put(FileStorageService());
    return FutureBuilder(
      future: _init(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/load_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      }
    );
  }
}
