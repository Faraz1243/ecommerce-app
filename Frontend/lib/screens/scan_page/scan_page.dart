import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNavigationBarPage();
          },
        ));
        return true;
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AppIcon.imageScan(),
          fit: BoxFit.fitWidth,
        )),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 44,


                    decoration: BoxDecoration(
                        color: Color(0xff101817).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Point your camera at furniture',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ).marginOnly(left: 10,right: 10),
                    alignment: Alignment.center,
                  ),
                ],
              ).marginOnly(top: 50),
              SizedBox(
                height: height / 25,
              ),
              Stack(children: [
                AppIcon.scanF().marginOnly(top: 20),
                AppIcon.scanBox().marginOnly(top: 200)
              ]),
              SizedBox(
                height: height / 7,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20,bottom: 25,top: 10),
               height: 100,

                decoration: BoxDecoration(
                    color: context.theme.backgroundColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.deselect.withOpacity(0.3),
                          image: DecorationImage(
                              image: AppIcon.shoppingPageImage3())),
                    ),
                    Column(
                      children: [
                        Row(
                          children: ['Minimalist Chair'.nameText(context)],
                        ).marginOnly(left: 10, top: 15),
                        Row(
                          children: ['Regal Do Lobo'.TegSubText()],
                        ).marginOnly(right: 10),
                        Row(
                          children: [
                            '\$79.90'.homePageText(context),
                            Icon(
                              Icons.star,
                              color: Color(0xffEAC92C),
                            ),
                            '4.6'.homePageText(context),
                          ],
                        ).marginOnly(top: 15)
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColor.intoColor,
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                      ),
                    ).marginOnly(right: 20)
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    ));
  }
}
