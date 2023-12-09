import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: AppColor.intoColor,
                borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  'Change Password'.getText(),
                ],
              ),
            ),
          )
        ],
      ).marginOnly(top: 15) ,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ).marginOnly(left: 10, top: 10),
                ),
                Row(
                  children: [
                    'Change Password'.introTitleText(context),
                  ],
                ).marginOnly(top: 10),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                ).marginOnly(right: 10, top: 10)
              ],
            ),
            Row(
              children: [
                'Current Password'.TegText(context),
              ],
            ).marginOnly(left: 22, top: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 15),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  controller: currentPassword,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                ),
              ),
            ).marginOnly(top: 10, right: 20,bottom: 10),
            Row(
              children: [
                'New Password'.TegText(context),
              ],
            ).marginOnly(left: 22,top: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 15),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  controller: newPassword,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                ),
              ),
            ).marginOnly(top: 10, right: 20,bottom: 10),
            Row(
              children: [
                'Confirm New Password'.TegText(context),
              ],
            ).marginOnly(left: 22,top: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 15),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  controller: newPassword,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter New Password',
                      hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                ),
              ),
            ).marginOnly(top: 10, right: 20,bottom: 10),
          ],
        ),
      ),
    );
  }
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();
}
