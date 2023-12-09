import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:furniture_app/screens/shoppingpage/trackorderpage.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:  context.theme.backgroundColor,
      bottomSheet: Container(
        height: 528,
        decoration: BoxDecoration(
            color:   context.theme.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: AppColor.intoColor,
                  child: Icon(Icons.check, color: Colors.white, size: 40),
                ),
              ],
            ).marginOnly(top: 20),
             Text(
              'Thank you for\n   your order',
              style: TextStyle(
                fontFamily: 'Switzer',
                  color: context.theme.textTheme.headline1?.color,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ).marginOnly(top: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                """Your order been place successfully!\nyou can track the dwlivery in the order\nsection"""
                    .TegSubText()
              ],
            ).marginOnly(top: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {

                },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border:Border.all(color: AppColor.deselect.withOpacity(0.3)),
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return BottomNavigationBarPage();
                        },));


                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          ' Back Home'.SubTitelText(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ).marginOnly(top: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return TrackOrderPage();
                  },));

                },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: AppColor.intoColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return TrackOrderPage();
                        },));

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          'Track your order'.getText(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ).marginOnly(top: 15,bottom: 20),
            'You can order somethings Also'.TegText(context)
          ],
        ),
      ),
      body: WillPopScope(onWillPop:() async{
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNavigationBarPage();
          },
        ));
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
                      backgroundColor:context.theme.cardColor,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: context.theme.textTheme.headline1?.color,
                      ),
                    ).marginOnly(left: 10, top: 10),
                  ),
                  Row(
                    children: [
                      'Success'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: context.theme.backgroundColor,
                    radius: 25,
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
