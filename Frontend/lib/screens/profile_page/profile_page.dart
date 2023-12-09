import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../../theme/theme_service.dart';
import '../bottom_navigation_bar.dart';
import '../settingsPage/setting_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Log Out',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xffEA3549)),
          ).marginOnly(bottom: 20),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: context.theme.cardColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return BottomNavigationBarPage();
                  },
                ));
              },
              child: CircleAvatar(
                backgroundColor:   context.theme.backgroundColor,
                radius: 25,
                child: Icon(
                  Icons.arrow_back,
                  color: context.theme.textTheme.headline1?.color,
                ),
              ).marginOnly(left: 10, top: 10),
            ),
            Row(
              children: [
                'Profile'.introTitleText(context),
              ],
            ).marginOnly(top: 10),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 25,
            ).marginOnly(right: 10, top: 10)
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return BottomNavigationBarPage();
            },
          ));
          return true;
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AppIcon.userImage(),
                ).marginOnly(top: 20),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: 'Mansurul Hoque'.introTitleText(context),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: 'mansurul952@gmail.com'.TegSubText(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: AppColor.deselect,
                      ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Profile'.homePageText(context))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.color_lens,
                        color: AppColor.deselect,
                      ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Theme'.homePageText(context)),
                      Spacer(),
                      CupertinoSwitch(
                        activeColor: AppColor.intoColor,
                        value: switchValue,
                        onChanged: (value) {
                          setState(() {
                            switchValue = value;
                            ThemeService().switchTheme();
                          });
                        },
                      ).marginOnly(right: 10),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.payment,
                        color: AppColor.deselect,
                      ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Payment Methods'.homePageText(context))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      AppIcon.orderSvg().marginOnly(left: 25),
                      //Icon(Icons.payment,color: AppColor.deselect,).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Order history'.homePageText(context))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // AppIcon.orderSvg().marginOnly(left: 25),
                      Icon(
                        Icons.delivery_dining,
                        color: AppColor.deselect,
                      ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Delivery Address'.homePageText(context))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      AppIcon.supportSvg().marginOnly(left: 25),
                      // Icon(
                      //   Icons.delivery_dining,
                      //   color: AppColor.deselect,
                      // ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Support Center'.homePageText(context))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 56,

                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // AppIcon.orderSvg().marginOnly(left: 25),
                      Icon(
                        Icons.policy_outlined,
                        color: AppColor.deselect,
                      ).marginOnly(left: 25),
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: 'Legal Policy'.homePageText(context))
                    ],
                  ),
                ),
                GestureDetector(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return SettingPage();
                  },));
                },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 56,

                    decoration: BoxDecoration(
                        color:  context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        // AppIcon.orderSvg().marginOnly(left: 25),
                        Icon(
                          Icons.settings,
                          color: AppColor.deselect,
                        ).marginOnly(left: 25),
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: 'Settings'.homePageText(context))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ).marginOnly(left: 20, right: 20),
          ),
        ),
      ),
    );
  }

}
