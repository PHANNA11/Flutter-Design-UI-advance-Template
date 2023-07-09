import 'package:design_ui/views/drawer/drawer_screen.dart';
import 'package:design_ui/views/shop/view/home_shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeShop(),
    );
  }
}
