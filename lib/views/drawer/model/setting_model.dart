// To parse this JSON data, do
//
//     final settingModel = settingModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<SettingModel> settingModelFromJson(String str) => List<SettingModel>.from(
    json.decode(str).map((x) => SettingModel.fromJson(x)));

String settingModelToJson(List<SettingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SettingModel {
  String title;
  String subtitle;
  dynamic color;
  dynamic icon;

  SettingModel({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
  });

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        title: json["title"],
        subtitle: json["subtitle"],
        color: json["color"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "color": color,
        "icon": icon,
      };
}
