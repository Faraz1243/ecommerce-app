import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';
import '../homepage/home_page.dart';
import '../sign_up/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: context.theme.cardColor,
      body: SafeArea(
          child: Center(
            child: Column(
        children: [
            // Container(
            //   height: height / 30,
            // ),
            Container(
              height: height / 8,
            ),
            Row(
              children: [
                'Welcome Back'.TitelText(context),
              ],
            ).marginOnly(
              left: 22,
            ),

            Row(
              children: [
                'Please Enter Your Credentials.'.SubTitelText(),
              ],
            ).marginOnly(left: 22, top: 10),

            Row(
              children: [
                'Email'.TegText(context),
              ],
            ).marginOnly(left: 22, top: 30),
            Container(
              decoration: BoxDecoration(
                  color: context.theme.backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 15),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  controller: emailController,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                ),
              ),
            ).marginOnly(top: 10, right: 20),
            Row(
              children: [
                'Password'.TegText(context),
              ],
            ).marginOnly(left: 22, top: 30),
            Container(
              decoration: BoxDecoration(
                  color: context.theme.backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 15),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  controller: passwordController,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                ),
              ),
            ).marginOnly(top: 10, right: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: 'Forgot Password?'.TegText(context),
                ).marginOnly(right: 20)
              ],
            ).marginOnly(top: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: AppColor.intoColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      print('------------>Login Page');
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return BottomNavigationBarPage();
                        },
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        'Sign in'.getText(),
                      ],
                    ),
                  ),
                )
              ],
            ).marginOnly(top: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  'Don’t have an account? '.TegSubText(),
                  'Sign Up!'.TegText(context)
                ],
              ),
            ),
            Container(
              height: height / 25,
            ),
        ],
      ),
          )),
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
