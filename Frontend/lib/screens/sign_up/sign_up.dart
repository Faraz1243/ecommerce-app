import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../login_page/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      appBar: AppBar( toolbarHeight: 60,
          elevation: 0,
          backgroundColor:context.theme.cardColor,title:  Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            child: InkWell(onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              },));
            },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: context.theme.backgroundColor,
                child: Icon(
                  Icons.arrow_back,
                  color: context.theme.textTheme.headline1?.color,
                ),
              ),
            ),
          ),
        ],
      )),
      body: WillPopScope(onWillPop:() async{
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        ));
        return true;
      },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [

                Container(
                  height: height / 25,
                ),
                Row(
                  children: [
                    'Create Account'.TitelText(context),
                  ],
                ).marginOnly(
                  left: 22,
                ),
                Row(
                  children: [
                    'Let’s create account together'.SubTitelText(),
                  ],
                ).marginOnly(left: 22, top: 10),

                Row(
                  children: [
                    'First Name'.TegText(context),
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
                      controller: firstNameController,
                      cursorColor: Color(0xff7E7E7E),
                      decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                    ),
                  ),
                ).marginOnly(top: 10, right: 20),

                Row(
                  children: [
                    'Last Name'.TegText(context),
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
                      controller: lastNameController,
                      cursorColor: Color(0xff7E7E7E),
                      decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Color(0xff7E7E7E))),
                    ),
                  ),
                ).marginOnly(top: 10, right: 20),

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
                    'Enter your password'.TegText(context),
                  ],
                ).marginOnly(left: 22, top: 30),
                Container(
                  decoration: BoxDecoration(
                      color:  context.theme.backgroundColor,
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
                          // print('------------>Login Page');
                          // Navigator.pushReplacement(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return LoginPage();
                          //   },
                          // ));
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
                ).marginOnly(top: 25),
                GestureDetector(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  },));
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'Already have an account? '.TegSubText(),
                      'Sign in'.TegText(context)
                    ],
                  ),
                ),
                Container(
                  height: height / 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
