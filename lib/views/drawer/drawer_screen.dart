import 'package:design_ui/views/drawer/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: ListView(children: [
        const Align(
          child: Text(
            'User Profile',
            style: TextStyle(fontSize: 28, fontFamily: 'bokor'),
          ),
        ),
        DrawerWidget().cardUser(),
        DrawerWidget().menuIcon(),
        DrawerWidget().ListMenu()
      ])),
    );
  }
}
