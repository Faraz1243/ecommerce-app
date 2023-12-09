import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  List image = [
    AppIcon.shoppingPageImage1(),
    AppIcon.shoppingPageImage2(),
    AppIcon.shoppingPageImage3(),
    AppIcon.categoriesPage(),
    AppIcon.chairImage2()
  ];
  List chairName = [
    'Levi Armchair',
    'hiro arm Chair',
    'Slipcove Armchair',
    'Rose Armchair',
    'Besen Egge Chair',
  ];
  List chairT = [
    'Cultured White',
    'Cultured White',
    'Hatil-Loren',
    'Regal Furniture',
    'Partex Furniture'
  ];
  List priceList = [
    '\$279.95',
    '\$258.91',
    '\$369.86',
    '\$258.91',
    '\$369.86',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xffF9F9F9),
        elevation: 0,
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
                'Popular'.introTitleText(context),
              ],
            ).marginOnly(top: 10),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
            ).marginOnly(right: 10, top: 10)
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
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
            child: Column(
              children: [
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                      height: 104,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.deselect.withOpacity(0.3),
                                image: DecorationImage(image: image[index])),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: ['${chairName[index]}'.nameText(context)],
                              ).marginOnly(left: 10),
                              Row(
                                children: ['${chairT[index]}'.TegSubText()],
                              ).marginOnly(
                                left: 10,
                              ),
                              Row(
                                children: [
                                  '${priceList[index]}'.pricechairText1()
                                ],
                              ).marginOnly(left: 10, top: 10),
                            ],
                          ).marginOnly(right: 40),
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColor.intoColor,
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                          ).marginOnly(right: 10)
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
