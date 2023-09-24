import 'package:design_ui/main.dart';
import 'package:design_ui/views/drawer/controller/font_controller.dart';
import 'package:design_ui/views/drawer/controller/theme_controller.dart';
import 'package:design_ui/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'controller/languege_controller.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  FontController fontController = Get.put(FontController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FontController>(builder: (context) {
      return SimpleBuilder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'setting'.tr,
              style: TextStyle(fontFamily: fontController.fontTheme.toString()),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              GetBuilder<TraslateLanguege>(
                  init: traslateLanguege,
                  builder: (context) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textWidget(title: 'ខ្មែរ​ / English'),
                        CupertinoSwitch(
                          value: traslateLanguege.english.value,
                          onChanged: (value) async {
                            var localeEng = const Locale('en', 'US');
                            var localeKh = const Locale('KH', 'KH');
                            traslateLanguege.switchLanguege(value.obs);
                            Get.updateLocale(value ? localeEng : localeKh);
                          },
                        ),
                      ],
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textWidget(title: 'Light Mode / Dark Mode'),
                  CupertinoSwitch(
                    value: themeModeController.isDark,
                    onChanged: (value) {
                      themeModeController.changeTheme(value);
                    },
                  ),
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Wrap(
                  children: List.generate(
                      fontController.listFont.length,
                      (index) => ListTile(
                            onTap: () {
                              fontController.changeFontThem(
                                  fontController.listFont[index].obs);
                            },
                            title: Text(
                              fontController.listFont[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily:
                                      fontController.listFont[index].toString(),
                                  fontSize: 26),
                            ),
                            trailing: fontController.listFont[index] ==
                                    fontController.fontTheme.value
                                ? const CircleAvatar(
                                    maxRadius: 12,
                                    child: Icon(Icons.done),
                                  )
                                : SizedBox(),
                          )),
                ),
              ),
            ]),
          ),
        );
      });
    });
  }
}
