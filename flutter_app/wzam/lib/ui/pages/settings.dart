import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/controllers/login_controller.dart';
import 'package:wzam/controllers/settings_controller.dart';
import 'package:wzam/ui/styles/spacing.dart';
import 'package:wzam/ui/styles/widgets/wzam_app_bar.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';


class SettingsPage extends StatelessWidget {
  late final SettingsController controller;
  late final LoginController loginController;
  final TextEditingController keycloakController = TextEditingController();
  final TextEditingController realmController = TextEditingController();
  final TextEditingController clientController = TextEditingController();
  final TextEditingController clientSecretController = TextEditingController(); 
  
  SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    controller = Get.find<SettingsController>(); 
    loginController = Get.find<LoginController>();
    return FutureBuilder(
        future: controller.initialize(),
        builder: (BuildContext context, AsyncSnapshot snapshot) { 
          keycloakController.text = controller.keycloakEndpoint.value;
          realmController.text = controller.keycloakRealm.value;
          clientController.text = controller.keycloakClient.value;
          clientSecretController.text = controller.keycloakClientSecret.value;
          return Scaffold(
            appBar: WZAMAppBar(
              title: "Settings Page",
              settings: true,
            ),
            body: Obx(() => Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(children: [
                loginController.loggedIn.value ? _accountSection() : Container(),
                loginController.loggedIn.value ? verticalSpaceMedium : Container(),
                _keycloakSection(),
                verticalSpaceMedium,
                _appearanceSection(),
                verticalSpaceMedium,
                loginController.loggedIn.value ? _logoutButton() : Container(),
              ]),
            ),
            )
          );
        });
  }

  Widget _accountSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _headerElement("Account", Icons.person),
        TextField(
          decoration: const InputDecoration(labelText: 'Username'),
          readOnly: true,
          onChanged: (value) async {
            if (value != controller.username.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
        TextField(
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
          readOnly: true,
          onChanged: (value) async {
            if (value != controller.password.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
      ],
    );
  }

  Widget _keycloakSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _headerElement("Keycloak", Icons.key),
        TextField(
          decoration: const InputDecoration(labelText: 'Keycloak Endpoint'),
          controller: keycloakController,
          onChanged: (value) async {
            if (value != controller.keycloakEndpoint.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
        TextField(
          decoration: const InputDecoration(labelText: 'Keycloak Realm'),
          controller: realmController,
          onChanged: (value) async {
            if (value != controller.keycloakRealm.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
        TextField(
          decoration: const InputDecoration(labelText: 'Keycloak Client'),
          controller: clientController,
          onChanged: (value) async {
            if (value != controller.keycloakClient.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
        TextField(
          decoration: const InputDecoration(labelText: 'Keycloak Client Secret'),
          controller: clientSecretController,
          onChanged: (value) async {
            if (value != controller.keycloakClientSecret.value) {
              controller.settingsChanged.value = true;
            }
          },
        ),
        verticalSpaceMedium,
        Row(
          children: [
            ElevatedButton(
              onPressed: controller.settingsChanged.value
                  ? () async {
                      if (!_inputValid()) {
                        Get.snackbar('Error', 'One or more fields are empty');
                        return;
                      } else {
                        loginController.loggedIn.value ? saveLoggedIn() : saveNewKeycloak();
                      }
                    }
                  : null,
              child: const Text("Save Changes"),
            ),
            horizontalSpaceMedium,
            ElevatedButton(
              onPressed: controller.settingsChanged.value
                  ? () async {
                      keycloakController.text = controller.keycloakEndpoint.value;
                      realmController.text = controller.keycloakRealm.value;
                      clientController.text = controller.keycloakClient.value;
                      clientSecretController.text = controller.keycloakClientSecret.value;
                      controller.settingsChanged.value = false;
                    }
                  : null,
              child: const Text("Undo Changes"),
            ),
          ],
        )
      ],
    );
  }

  Widget _appearanceSection() {
    return Column(
      children: [
        _headerElement("Appearance", Icons.image),
        _appearanceSettings(),
      ],
    );
  }

  Widget _appearanceSettings() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          SwitchListTile(
              title: const Text("Dark Mode"),
              value: controller.darkModeState.value,
              onChanged: (value) {
                controller.switchModeState();
              }),
          ],
        )
    );
  }

  ElevatedButton _logoutButton() {
    return ElevatedButton(
      onPressed: () async {
        await controller.logout();
      },
      child: const Text("Logout"),
    );
  }

  bool _inputValid() {
    if (keycloakController.text.isEmpty) {
      return false;
    }
    if (realmController.text.isEmpty) {
      return false;
    }
    if (clientController.text.isEmpty) {
      return false;
    }
    if (clientSecretController.text.isEmpty) {
      return false;
    }
    return true;
  }

  Widget _headerElement(String sectionTitle, IconData icon) {
    return Column(
      children: [
        Row(children: [
          Icon(icon, color: Colors.orange), //change color to match theme
          const SizedBox(width: 10),
          Text(sectionTitle,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ]),
        const Divider(height: 20, thickness: 1),
      ],
    );
  }

  Future saveLoggedIn() async {
    Get.dialog(logoutAlert());
  }

  Future saveNewKeycloak() async {
    controller.keycloakEndpoint.value = keycloakController.text;
    await controller.secureStorage
      .setKeycloakEndpoint(keycloakController.text);
    controller.keycloakRealm.value = realmController.text;
    await controller.secureStorage.setRealm(realmController.text);
    controller.keycloakClient.value = clientController.text;
    await controller.secureStorage.setClient(clientController.text);
    controller.keycloakClientSecret.value = clientSecretController.text;
    await controller.secureStorage.setClientSecret(clientSecretController.text);
    controller.settingsChanged.value = false;
  }

  AlertDialog logoutAlert() {
    return AlertDialog(
      content: const Text('Changing keycloak settings will log you out. Are you sure you want to continue?'),
      actions: <Widget>[
        ClickableText(
          text: 'Cancel',
          onTap: () {
            Get.back();
          },
        ),
        ClickableText(
          text: 'Save and Logout',
          onTap: () {
            //saveNewKeycloak();
            //Get.back();
            controller.keycloakEndpoint.value = keycloakController.text;
            controller.keycloakRealm.value = realmController.text;
            controller.keycloakClient.value = clientController.text;
            controller.keycloakClientSecret.value = clientSecretController.text;
            controller.saveAndLogout();
          },
        )
      ],
    );
  }
}

