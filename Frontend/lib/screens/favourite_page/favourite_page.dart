import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List chairImage = [
    AppIcon.favourirePageChair1(),
    AppIcon.favourirePageChair2(),
    AppIcon.favourirePageChair3(),
    AppIcon.favourirePageChair4()
  ];
  List chairName = [
    'Rotating Lounge\nChair',
    'Trapeziam Arm \nChair',
    'Corada D3 Lounge\nChair',
    'Pearl Beading Fur \nTextured'
  ];
  List price = ['\$39.00', '\$36.00', '\$45.21', '\$29.68'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      appBar: AppBar(
        backgroundColor: context.theme.cardColor,
        elevation: 0,
        toolbarHeight: 70,
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
                'Favourite'.introTitleText(context),
              ],
            ).marginOnly(top: 10),
            CircleAvatar(
              backgroundColor: context.theme.backgroundColor,
              radius: 25,
              child: Icon(
                Icons.favorite_border_outlined,
                color: AppColor.intoColor,
              ),
            ).marginOnly(right: 10, top: 10)
          ],
        ),
      ),
      body: WillPopScope(onWillPop:()async{
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
            child: Column(children: [
              // Container(
              //   height: 160,
              //   width: 156,
              //   color: Colors.blueGrey,
              // ),
              Container(

                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 280),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: context.theme.backgroundColor,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: chairImage[index],
                                )),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                chairName[index],
                                style: TextStyle(
                                    color: context.theme.textTheme.headline1?.color,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ).marginOnly(top: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              '${price[index]}'.pricechairText1(),
                            ],
                          ).marginOnly(top: 10)
                        ],
                      ),
                    );
                  },
                ),
              )
            ]).marginOnly(left: 10,right: 10),
          ),
        ),
      ),
    );
  }
}
