import 'package:design_ui/main.dart';
import 'package:design_ui/views/drawer/controller/font_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget textWidget(
    {String? title, Color? color, double? textSize, FontWeight? fontWeight}) {
  return GetBuilder<FontController>(
    init: fontController,
    builder: (controller) => Text(
      title ?? '',
      style: TextStyle(
          fontFamily: fontController.fontTheme.toString(),
          color: color,
          fontSize: textSize ?? 16,
          fontWeight: fontWeight),
    ),
  );
}
