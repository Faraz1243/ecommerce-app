import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';

import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../shoppingpage/check_out_page.dart';
import '../shoppingpage/success_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      bottomNavigationBar: Container(
        height: 154,
        decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'Total payment'.introTitleText(context),
              Text(
                '\$86.680',
                style: TextStyle(
                    color: Color(0xffF2A666),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              )
            ],
          ).marginOnly(left: 15, right: 15, top: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return SuccessPage();
                    },
                  ));
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
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return SuccessPage();
                        },
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        'payment'.getText(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ).marginOnly(top: 25),
        ]),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return CheckOutPage();
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
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: context.theme.backgroundColor,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: context.theme.textTheme.headline1?.color,
                      ),
                    ).marginOnly(left: 10, top: 10),
                  ),
                  Row(
                    children: [
                      'Payment'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: context.theme.cardColor,
                    radius: 25,
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
              Image(image: AppIcon.cardImage()).marginOnly(top: 15),
              Row(
                children: ['Choose payment method'.introTitleText(context)],
              ).marginOnly(top: 15, left: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 44,
                    width: 60,
                    child: AppIcon.masterCardSvg().marginAll(8),
                    decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 44,
                    width: 60,
                    child: AppIcon.paypalSvg().marginAll(8),
                    decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 44,
                    width: 60,
                    child: AppIcon.applePaySvd(context).marginAll(8),
                    decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15, right: 15),
                    height: 44,
                    width: 60,
                    child: Icon(Icons.more_horiz),
                    decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ],
              ),
              Row(
                children: ['Promo code'.introTitleText(context)],
              ).marginOnly(top: 15, left: 20),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: context.theme.backgroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Promo code'.pageViewSubText(),
                    Container(
                      height: 34,
                      width: 75,
                      decoration: BoxDecoration(
                          color: AppColor.intoColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Apply',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            fontFamily: 'Switzer',
                            color: Colors.white),
                      ),
                      alignment: Alignment.center,
                    )
                  ],
                ).marginOnly(left: 10, right: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
