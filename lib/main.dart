import 'package:design_ui/views/drawer/controller/theme_controller.dart';
import 'package:design_ui/views/drawer/drawer_screen.dart';
import 'package:design_ui/views/shop/view/home_shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

ThemeModeController themeModeController = Get.put(ThemeModeController());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (context) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeShop(),
        theme: themeModeController.theme,
      );
    });
  }
}
