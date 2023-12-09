import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List image = [
    AppIcon.shoppingPageImage1(),
    AppIcon.shoppingPageImage2(),
    AppIcon.shoppingPageImage3(),
    AppIcon.categoriesPage(),
    AppIcon.shoppingPageImage1(),
  ];
  List chairName = [
    'Minimalist Chair',
    'hiro arm Chair',
    'florence Chair',
    'pearlystic Chair',
    'arm oxer Chair'
  ];
  List chairT = [
    '126 products',
    '236 products',
    '375 products',
    '296 products',
    '946 products'
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.cardColor,
      body: SingleChildScrollView(
        physics:  BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Row(
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
                    child:  CircleAvatar(
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
                      'Categories'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: context.theme.backgroundColor,
                    radius: 25,
                    child: Icon(Icons.shopping_bag_outlined,color: context.theme.textTheme.headline1?.color,),
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    height: 104,
                    decoration: BoxDecoration(
                        color: context.theme.backgroundColor,
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
                          children: [
                            Row(
                              children: ['${chairName[index]}'.nameText(context)],
                            ).marginOnly(bottom: 10),
                            Row(
                              children: ['${chairT[index]}'.TegSubText()],
                            ).marginOnly(right: 10),
                          ],
                        ).marginOnly(right: 50),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppColor.deselect,
                        ).marginOnly(right: 15)
                      ],
                    ),
                  );
                },
              ),
              Container(
                height: height / 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
