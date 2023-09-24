import 'package:design_ui/views/drawer/controller/font_controller.dart';
import 'package:design_ui/views/drawer/controller/theme_controller.dart';
import 'package:design_ui/views/drawer/drawer_screen.dart';
import 'package:design_ui/views/shop/view/home_shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'views/drawer/controller/languege_controller.dart';

void main() {
  runApp(const MyApp());
}

ThemeModeController themeModeController = Get.put(ThemeModeController());
FontController fontController = Get.put(FontController());
TraslateLanguege traslateLanguege = Get.put(TraslateLanguege());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeShop(),
        theme: themeModeController.theme,
        initialRoute: traslateLanguege.initlanguege().toString(),
        translations: LocalModel(),
        locale: traslateLanguege.english.value
            ? const Locale('en', 'US')
            : const Locale('KH', 'KH'),
      );
    });
  }
}
