import 'package:design_ui/app_style/app_size.dart';
import 'package:design_ui/views/drawer/data/drawer_data.dart';
import 'package:design_ui/views/drawer/model/setting_model.dart';
import 'package:design_ui/views/drawer/setting.dart';
import 'package:design_ui/views/shop/view/home_shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends AppSize {
  Widget cardUser() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: bottonSaveColor,
          borderRadius: BorderRadius.circular(decorationS10),
        ),
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                        'https://z-p3-scontent.fpnh5-2.fna.fbcdn.net/v/t39.30808-6/357063386_1030335738131139_3105454237751046143_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFh541mec5iL8Qa7dXF8Fko7avsHd0wDbrtq-wd3TANuqb-pgU4RPttyvUlLCaSTJHCi4wzG7qyJ6iBDqRDKioj&_nc_ohc=-1GC23jNh-AAX98GXMi&_nc_zt=23&_nc_ht=z-p3-scontent.fpnh5-2.fna&oh=00_AfClPhTW7YYO5Dctap5i9v9KYXFq6yONitCsScU55GNI5w&oe=64A66B96'),
                  ),
                  title: Text(
                    'Mr. Dash',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Flutter Dev'),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('3345'),
                        Text('6542'),
                        Text('2222'),
                        Text('0988'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Track'),
                        Text('Something'),
                        Text('data'),
                        Text('file'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget menuIcon() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: drawerDataList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeShop(),
                ));
          },
          child: Column(
            children: [
              cicleAvatarIconWidget(
                  icons: drawerDataList[index].icon, maxRadius: 35),
              Text(
                drawerDataList[index].title,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cicleAvatarIconWidget(
      {IconData? icons = Icons.local_cafe_sharp,
      double? maxRadius = 25,
      Color? color = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
      child: CircleAvatar(
        backgroundColor: color,
        maxRadius: maxRadius,
        child: Icon(
          icons,
          size: 30,
        ),
      ),
    );
  }

  Widget ListMenu() {
    return Flexible(
      child: Wrap(
        children: List.generate(settingDataList.length,
            (index) => cardItem(settingDataList[index])),
      ),
    );
  }

  Widget cardItem(SettingModel settingModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(() => SettingScreen());
        },
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: mianAppColor,
            borderRadius: BorderRadius.circular(decorationS15),
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: cicleAvatarIconWidget(
                      maxRadius: 30,
                      icons: settingModel.icon,
                      color: settingModel.color)),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      settingModel.title,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      settingModel.subtitle,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
