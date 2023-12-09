import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';
import '../reviews_page/reviews_page.dart';

class ViewProductPage extends StatefulWidget {
  const ViewProductPage({Key? key}) : super(key: key);

  @override
  State<ViewProductPage> createState() => _ViewProductPageState();
}

class _ViewProductPageState extends State<ViewProductPage> {
  int _counter = 1;
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor:  context.theme.backgroundColor,
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
                backgroundColor:  context.theme.backgroundColor,
                radius: 25,
                child: Icon(
                  Icons.arrow_back,
                  color: context.theme.textTheme.headline1?.color,
                ),
              ).marginOnly(left: 10, top: 10),
            ),
            CircleAvatar(
              backgroundColor:  context.theme.backgroundColor,
              radius: 25,
              child: Icon(
                Icons.favorite_border_outlined,
                color:context.theme.textTheme.headline1?.color,
              ),
            ).marginOnly(right: 10, top: 10)
          ],
        ),
      ),
      backgroundColor: context.theme.backgroundColor,
      bottomNavigationBar: Container(
        height: 154,
        decoration: BoxDecoration(
            color: context.theme.backgroundColor ,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _decrementCounter();
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xff828A89).withOpacity(0.4),
                        child: AppIcon.minus(),
                      ).marginOnly(right: 10),
                    ),
                    '${_counter}'.TegText(context),
                    GestureDetector(onTap: () {
                      _incrementCounter();
                    },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColor.intoColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ).marginOnly(left: 10),
                    )
                  ],
                ),
              ),
              Row(
                children: ['Total : \$90.900'.homePageText(context)],
              ).marginOnly(right: 20)
            ],
          ).marginOnly(left: 20, top: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: AppColor.intoColor,
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ).marginOnly(right: 10),
                      'Add To Card'.getText(),
                    ],
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
              return BottomNavigationBarPage();
            },
          ));
          return true;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 236,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AppIcon.viewPageImage())),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    'Ox Mathis Furniture\nModern Style'.viewPageText(context),
                    Text(
                      '\$90.99',
                      style: TextStyle(
                          color: Color(0xffF2A666),
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                    ).marginOnly(right: 10)
                  ],
                ).marginOnly(left: 15, top: 10),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xff828A89),
                    ).marginOnly(),
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      child: '341 Seen'.TegSubText(),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xff828A89),
                    ).marginOnly(left: 5, right: 5),
                    Container(
                      child: '294 Liked'.TegSubText(),
                    ),
                  ],
                ).marginOnly(left: 10, top: 10),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 25,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color(0xffEAC92C),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AppIcon.stackImage1(),
                          ),
                          CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AppIcon.stackImage2())
                              .marginOnly(left: 25),
                          GestureDetector(onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return
                                      ReviewsPage();
                                  },
                                ));
                          },
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColor.intoColor,
                              child: Text(
                                '+24',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ).marginOnly(left: 50),
                          ),
                        ],
                      ),
                    ).marginOnly( bottom: 20,right: 20),
                  ],
                ).marginOnly(left: 10),
                Row(
                  children: ['Description'.introTitleText(context)],
                ).marginOnly(left: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    '''The Swedish Designer Monica Forstar’s \nStyle Is Characterised By her Enternal love\n For New Materials and Beautiful Pure Shapes.'''
                        .TegSubText()
                  ],
                ).marginOnly(right: 10, top: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
