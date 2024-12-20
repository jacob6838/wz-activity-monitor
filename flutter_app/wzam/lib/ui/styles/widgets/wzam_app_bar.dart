import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wzam/ui/pages/settings.dart';
import 'package:wzam/ui/styles/widgets/wzam_text.dart';

class WZAMAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final bool lockedHorizontal;
  final bool settings;

  WZAMAppBar({
    Key? key,
    this.title,
    this.lockedHorizontal = false,
    this.settings = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar standardAppBar = AppBar(
      title: WZAMText.styleTwo(title ?? ''),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Get.to(() => SettingsPage());
          }
        ),
      ],
    );

    AppBar settingsAppBar = AppBar(
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          }
        ),
      title: WZAMText.styleTwo(title ?? ''),
    );
    
    if (settings) {
      return settingsAppBar;
    } else {
      return standardAppBar;
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

}