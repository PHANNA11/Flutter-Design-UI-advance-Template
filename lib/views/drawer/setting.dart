import 'package:design_ui/main.dart';
import 'package:design_ui/views/drawer/controller/theme_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ខ្មែរ / English',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Light Mode / Dark Mode',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CupertinoSwitch(
                  value: themeModeController.isDark,
                  onChanged: (value) {
                    themeModeController.changeTheme(value);
                  },
                ),
              ],
            )
          ]),
        ),
      );
    });
  }
}
