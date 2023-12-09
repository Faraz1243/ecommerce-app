import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get_utils/get_utils.dart';
import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';
import '../profile_page/profile_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      body: WillPopScope(onWillPop:() async{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return ProfilePage();
        },));
        return true;
      },
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return BottomNavigationBarPage();
                      },));
                    },
                    child: CircleAvatar(
                      backgroundColor: context.theme.cardColor,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: context.theme.textTheme.headline1!.color,
                      ),
                    ).marginOnly(left: 10, top: 10),
                  ),
                  Row(
                    children: [
                      'Settings'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 25,
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                height: 56,

                decoration: BoxDecoration(
                    color: context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: AppColor.deselect,
                    ).marginOnly(left: 25),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: 'Notifications'.homePageText(context))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                height: 56,

                decoration: BoxDecoration(
                    color:context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: AppColor.deselect,
                    ).marginOnly(left: 25),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: 'Email Settings'.homePageText(context))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                height: 56,

                decoration: BoxDecoration(
                    color: context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.map,
                      color: AppColor.deselect,
                    ).marginOnly(left: 25),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: 'manage addresses'.homePageText(context))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                height: 56,

                decoration: BoxDecoration(
                    color: context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.wallet,
                      color: AppColor.deselect,
                    ).marginOnly(left: 25),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: 'manage payment'.homePageText(context))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                height: 56,

                decoration: BoxDecoration(
                    color:context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    AppIcon.dataControlSvg().marginOnly(left: 25),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: 'manage payment'.homePageText(context))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
