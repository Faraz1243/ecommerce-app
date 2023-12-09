import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:furniture_app/screens/shoppingpage/shopping_page.dart';

import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../payment_page/payment_page.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  String? address;
  String? payment;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: context.theme.cardColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return ShoppingPage();
                  },
                ));
              },
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
                'Checkout'.introTitleText(context),
              ],
            ).marginOnly(top: 10),
            CircleAvatar(
              backgroundColor: context.theme.cardColor,
              radius: 25,
            ).marginOnly(right: 10, top: 10)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 230,
        color: context.theme.cardColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                'Amount'.nameText(context),
              ],
            ).marginOnly(left: 20, top: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Item Total'.SubTitelText(),
                '\$367.65'.pricechairText1()
              ],
            ).marginOnly(left: 20, top: 10, right: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Delivery Fee'.SubTitelText(),
                '\$80'.pricechairText1()
              ],
            ).marginOnly(left: 20, top: 10, right: 20),
            Divider(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Total'.nameText(context),
                '\$447.99'.pricechairText1()
              ],
            ).marginOnly(left: 20, top: 15, right: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    print('xcfcfvb');
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return PaymentPage();
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
                            return PaymentPage();
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          'Payment'.getText(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ).marginOnly(top: 15),
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return ShoppingPage();
            },
          ));
          return true;
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.pushReplacement(context, MaterialPageRoute(
                //           builder: (context) {
                //             return ShoppingPage();
                //           },
                //         ));
                //       },
                //       child: CircleAvatar(
                //         backgroundColor: Colors.white,
                //         radius: 25,
                //         child: Icon(
                //           Icons.arrow_back,
                //           color: Colors.black,
                //         ),
                //       ).marginOnly(left: 10, top: 10),
                //     ),
                //     Row(
                //       children: [
                //         'Checkout'.introTitleText(),
                //       ],
                //     ).marginOnly(top: 10),
                //     CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: 25,
                //     ).marginOnly(right: 10, top: 10)
                //   ],
                // ),
                Row(
                  children: ['Shipping To'.introTitleText(context)],
                ).marginOnly(left: 15, top: 15),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  height: 100,

                  decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: RadioListTile(
                    title: Text(
                      "Home Address",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: context.theme.textTheme.headline1?.color),
                    ).marginOnly(bottom: 10),
                    subtitle: Text('(269) 444-6853\nRoad Number 5649 Akali',style: TextStyle(
                        color: Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 16),),
                    value: "male",
                    activeColor: AppColor.intoColor,
                    groupValue: address,
                    onChanged: (value) {
                      setState(() {
                        address = value.toString();
                      });
                    },
                  ).marginOnly(top: 10),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  height: 100,

                  decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: RadioListTile(
                    title: Text("Office Address",  style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: context.theme.textTheme.headline1?.color)).marginOnly(bottom: 10),
                    subtitle: Text('259- 444-6853\n1578 H Blog Shekh Para',style:   TextStyle(
                        color: Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 16),),
                    value: "female",
                    groupValue: address,
                    activeColor: AppColor.intoColor,
                    onChanged: (value) {
                      setState(() {
                        address = value.toString();
                      });
                    },
                  ).marginOnly(top: 10),
                ),
                Row(
                  children: ['Payment Method'.introTitleText(context)],
                ).marginOnly(top: 10, left: 10),
                ListTile(
                  title: Text(
                    'Credit Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: context.theme.textTheme.headline1?.color),
                  ),
                  leading: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColor.deselect.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: AppIcon.masterCardSvg().marginAll(10),
                  ),
                  trailing: Radio(
                      value: 'masterCardSvg',
                      activeColor: AppColor.intoColor,
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                ).marginOnly(top: 10, left: 10, right: 10),
                ListTile(
                  title: Text(
                    'Credit Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: context.theme.textTheme.headline1?.color),
                  ),
                  leading: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColor.deselect.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: AppIcon.paypalSvg().marginAll(10),
                  ),
                  trailing: Radio(
                      value: payment,
                      activeColor: AppColor.intoColor,
                      groupValue: 'Paypal',
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                ).marginOnly(top: 10, left: 10, right: 10),
                ListTile(
                  title: Text(
                    'Paypal',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: context.theme.textTheme.headline1?.color),
                  ),
                  leading: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColor.deselect.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: AppIcon.applePaySvd(context).marginAll(10),
                  ),
                  trailing: Radio(
                      value: Text(
                        'Apple Pay',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: context.theme.textTheme.headline1?.color),
                      ),
                      activeColor: AppColor.intoColor,
                      groupValue: payment,
                      onChanged: (value) {
                        setState(() {
                          payment = value.toString();
                        });
                      }),
                ).marginOnly(top: 10, left: 10, right: 10),
                ListTile(
                  title: Text(
                    'All 12 Methods',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: context.theme.textTheme.headline1?.color),
                  ),
                  leading: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColor.deselect.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.more_horiz),
                  ),
                  trailing:
                      Icon(Icons.arrow_forward_ios_sharp).marginOnly(right: 10),
                ).marginOnly(top: 10, left: 10, right: 10),
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
}
