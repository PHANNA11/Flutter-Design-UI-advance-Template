import 'dart:convert';

import 'package:design_ui/views/drawer/model/icon_model.dart';
import 'package:flutter/material.dart';

import '../model/setting_model.dart';

final drawerDataMap = [
  {
    "title": "Wallet",
    "icon": Icons.currency_bitcoin,
  },
  {
    "title": "Message",
    "icon": Icons.chat,
  },
  {
    "title": "Delivery",
    "icon": Icons.delivery_dining,
  },
  {
    "title": "Service",
    "icon": Icons.chat_bubble,
  }
];

final drawerItemDataMap = [
  {
    "title": "Address",
    "subtitle": "USD",
    "color": Colors.yellow,
    "icon": Icons.currency_bitcoin,
  },
  {
    "title": "Setting",
    "subtitle": "USD",
    "color": Colors.yellow,
    "icon": Icons.currency_bitcoin,
  },
  {
    "title": "General",
    "subtitle": "USD",
    "color": Colors.yellow,
    "icon": Icons.currency_bitcoin,
  },
  {
    "title": "Notification",
    "subtitle": "USD",
    "color": Colors.yellow,
    "icon": Icons.currency_bitcoin,
  },
  {
    "title": "Support",
    "subtitle": "USD",
    "color": Colors.yellow,
    "icon": Icons.currency_bitcoin,
  },
];
List<IconModel> drawerDataList =
    drawerDataMap.map((e) => IconModel.fromJson(e)).toList();
List<SettingModel> settingDataList =
    drawerItemDataMap.map((e) => SettingModel.fromJson(e)).toList();
