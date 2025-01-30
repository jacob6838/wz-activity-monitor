import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wzam/controllers/login_controller.dart';
import 'package:wzam/services/auth_service.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/screen_size.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_input.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LogIn extends StatelessWidget {
  final LoginController _controller = Get.find<LoginController>();
  final AuthService authController = Get.find<AuthService>();
  LogIn({super.key});

  final profileName = TextEditingController();
  final profileKeycloak = TextEditingController();
  final profileCimms = TextEditingController();
  final profileRealm = TextEditingController();
  final profileClient = TextEditingController();
  final profileClientSecret = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Get.to(() => SettingsPage());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/wzam_abr.png', scale: 3),
          verticalSpaceLarge,
          WZAMInputField(
            controller: _controller.usernameController,
            placeholder: 'Username',
          ),
          verticalSpaceMedium,
          WZAMInputField(
            controller: _controller.passwordController,
            placeholder: 'Password',
          ),
          verticalSpaceSmall,
          SizedBox(
            width: screenWidthPercentage(context, percentage: 0.75),
            child: InkWell(
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () async {
                Uri url = Uri.parse('https://www.neaeraconsulting.com/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ),
          verticalSpaceLarge,
          SizedBox(
            width: screenWidthPercentage(context, percentage: 0.5),
            child: ElevatedButton(
              child: const Text('Log In'),
              onPressed: () async {
                await _controller.login();
              },
            ),
          ),
        ]),
      ),
    );
  }
}
