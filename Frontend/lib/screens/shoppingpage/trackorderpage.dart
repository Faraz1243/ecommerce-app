import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(onWillPop: () async{
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNavigationBarPage();
          },
        ));
        return true;
      },
        child: Scaffold(
          bottomSheet: Container(
            height: 409,
            decoration: BoxDecoration(
                color: context.theme.cardColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20), topLeft: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 84,

                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AppIcon.userImage1(),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mansurul',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  )
                                ],
                              ).marginOnly(left: 0, top: 15),
                              Row(
                                children: [
                                  Text(
                                    'Drive - AD 4856 AUE',
                                    style: TextStyle(
                                        color: Color(0xff828A89),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  )
                                ],
                              ).marginOnly(
                                left: 23,
                              )
                            ],
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff0C8A7B),
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ).marginOnly(left: 40)
                        ],
                      ),
                    )
                  ],
                ).marginOnly(left: 20, top: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColor.deselect.withOpacity(0.3),
                      child: Icon(
                        Icons.access_time_filled_rounded,
                        color: context.theme.textTheme.headline1?.color,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Garmanian Cuisine',
                              style: TextStyle(
                                  color: context.theme.textTheme.headline1?.color,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )
                          ],
                        ).marginOnly(left: 0, top: 15),
                        Row(
                          children: [
                            Text(
                              'Houseing State  |  16:40',
                              style: TextStyle(
                                  color: Color(0xff828A89),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            )
                          ],
                        ).marginOnly(
                          left: 23,
                        )
                      ],
                    ),
                  ],
                ).marginOnly(left: 20, top: 20),
                Row(
                  children: [AppIcon.lineSvg()],
                ).marginOnly(top: 5,left: 40),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColor.deselect.withOpacity(0.3),
                      child: Icon(
                        Icons.location_on,
                        color: context.theme.textTheme.headline1?.color,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'East 58th Street, BDT',
                              style: TextStyle(
                                  color: context.theme.textTheme.headline1?.color,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )
                          ],
                        ).marginOnly(left: 10, top: 15),
                        Row(
                          children: [
                            Text(
                              'House  |  18:08',
                              style: TextStyle(
                                  color: Color(0xff828A89),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            )
                          ],
                        ).marginOnly(
                          left: 23,
                        )
                      ],
                    ),
                  ],
                ).marginOnly(left: 20, top: 20),
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

                              'Order Received'.getText(),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ).marginOnly(top: 25,bottom: 20),
              ],
            ),
          ),
          body: Stack(
            children: [
              Image(image: AppIcon.trackOrderImage()),
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
                    ).marginOnly(left: 10),
                  ),
                  Row(
                    children: [
                      'Track Order'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
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
