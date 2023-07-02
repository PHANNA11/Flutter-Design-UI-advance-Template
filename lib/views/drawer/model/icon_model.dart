import 'package:flutter/material.dart';
// To parse this JSON data, do
//
//     final iconModel = iconModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<IconModel> iconModelFromJson(String str) =>
    List<IconModel>.from(json.decode(str).map((x) => IconModel.fromJson(x)));

String iconModelToJson(List<IconModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IconModel {
  String title;
  dynamic icon;

  IconModel({
    required this.title,
    required this.icon,
  });

  factory IconModel.fromJson(Map<String, dynamic> json) => IconModel(
        title: json["title"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "icon": icon,
      };
}
