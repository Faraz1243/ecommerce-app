import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNavigationBarPage();
          },
        ));

        return true;
      },
      child: Scaffold(
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
                  'Reviews'.introTitleText(context),
                ],
              ).marginOnly(top: 10),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
              ).marginOnly(right: 10, top: 10)
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: context.theme.backgroundColor,
              borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: TextField(
            onTap: () {},
            controller: comment,
            cursorColor: Color(0xff7E7E7E),
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: 'Add a Comment',
              suffixIcon: Icon(Icons.send_outlined),
            ),
          ).marginOnly(left: 10),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 120,

                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: ['4.6'.TitelText(context)],
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 16,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Color(0xffEAC92C),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ).marginOnly(left: 10, top: 10),
                          const Text(
                            '367 reviews',
                            style: TextStyle(
                                color: Color(0xff828A89),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ).marginOnly(top: 10, left: 10)
                        ],
                      ).marginOnly(right: 15, top: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              '5 Starts'.reviewText(context),
                              Container(
                                width: 131,
                                height: 11,
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    color: Color(0xff0C8A7B),
                                    backgroundColor:
                                        Color(0xffF0F0F2), //<-- SEE HERE
                                  ),
                                ),
                              ).marginOnly(left: 10, right: 5),
                              '86%'.reviewsubText()
                            ],
                          ).marginOnly(left: 5),
                          Row(
                            children: [
                              '4 Starts'.reviewText(context),
                              Container(
                                width: 131,
                                height: 11,
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: LinearProgressIndicator(

                                    value: 0.30,
                                    color: Color(0xff0C8A7B),
                                    backgroundColor:
                                        Color(0xffF0F0F2), //<-- SEE HERE
                                  ),
                                ),
                              ).marginOnly(left: 10, right: 5),
                              '16%'.reviewsubText()
                            ],
                          ).marginOnly(top: 7,left: 5),
                          Row(
                            children: [
                              '3 Starts'.reviewText(context),
                              Container(
                                width: 131,
                                height: 11,
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: LinearProgressIndicator(

                                    value: 0.20,
                                    color: Color(0xff0C8A7B),
                                    backgroundColor:
                                        Color(0xffF0F0F2), //<-- SEE HERE
                                  ),
                                ),
                              ).marginOnly(left: 10, right: 5),
                              '12%'.reviewsubText()
                            ],
                          ).marginOnly(top: 7,left: 5),
                          Row(
                            children: [
                              '2 Starts'.reviewText(context),
                              Container(
                                width: 131,
                                height: 11,
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: LinearProgressIndicator(

                                    value: 0.12,
                                    color: Color(0xff0C8A7B),
                                    backgroundColor:
                                        Color(0xffF0F0F2), //<-- SEE HERE
                                  ),
                                ),
                              ).marginOnly(left: 10, right: 5),
                              '  8%'.reviewsubText()
                            ],
                          ).marginOnly(top: 7,left: 5),
                          Row(
                            children: [
                              '1 Starts'.reviewText(context),
                              Container(
                                width: 131,
                                height: 11,
                                child: const ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  child: LinearProgressIndicator(

                                    value: 0.08,
                                    color: Color(0xff0C8A7B),
                                    backgroundColor:
                                        Color(0xffF0F0F2), //<-- SEE HERE
                                  ),
                                ),
                              ).marginOnly(left: 10, right: 5),
                              '  4%'.reviewsubText()
                            ],
                          ).marginOnly(top: 7,left: 5),
                        ],
                      )
                    ],
                  ),
                ).marginOnly(top: 10,left: 10,right: 10),
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
                            'Write a Review'.getText(),
                          ],
                        ),
                      ),
                    )
                  ],
                ).marginOnly(top: 15),
                Container(
                  height: 174,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            backgroundImage: AppIcon.reviewUserimage1(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Angelina Anderson',
                                style: TextStyle(
                                    color: context
                                        .theme.textTheme.headline1?.color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ).marginOnly(left: 10),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 16,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Color(0xffEAC92C),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ).marginOnly(left: 10, top: 5),
                            ],
                          ).marginOnly(right: 30),
                          '16 minute ago'.reviewsubText(),
                        ],
                      ).marginOnly(left: 10, right: 10),
                      const Text(
                        """
                              nice studio, the app where You can
                              buy Your furniture with just a top
                              without any hassle_ products are
                              realy awesome.....""",
                        style: TextStyle(
                            color: Color(0xff828A89),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        textAlign: TextAlign.start,
                      ).marginOnly(right: 27, top: 5),
                      Row(
                        children: const [
                          Text(
                            'Read More',
                            style: TextStyle(
                              color: Color(0xff0C8A7B),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ).marginOnly(left: 110, top: 10)
                    ],
                  ),
                ),
                Container(
                  height: 174,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            backgroundImage: AppIcon.reviewUserimage2(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anila Erin Maha',
                                style: TextStyle(
                                    color: context
                                        .theme.textTheme.headline1?.color,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ).marginOnly(left: 10),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    itemSize: 16,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Color(0xffEAC92C),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ).marginOnly(left: 10, top: 5),
                            ],
                          ).marginOnly(right: 30),
                          '16 minute ago'.reviewsubText(),
                        ],
                      ).marginOnly(left: 10, right: 10),
                      const Text(
                        """
                         Exellent place to discuss your 
                         furniture ideas and get good
                         suggetions and details.""",
                        style: TextStyle(
                            color: Color(0xff828A89),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        textAlign: TextAlign.start,
                      ).marginOnly(right: 27, top: 5),
                      Row(
                        children: const [
                          Text(
                            'Read More',
                            style: TextStyle(
                              color: Color(0xff0C8A7B),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ).marginOnly(left: 110, top: 10)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextEditingController comment = TextEditingController();
}
