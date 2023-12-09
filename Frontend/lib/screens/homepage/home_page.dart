import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:furniture_app/screens/homepage/pageview_homepage.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:getwidget/getwidget.dart';
import '../../constant/app_assets.dart';
import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../../theme/theme_service.dart';
import '../categories_page/categories_page.dart';
import '../filter_page/filter_page.dart';
import '../notification_page/notification_page.dart';
import '../popular_page/popular_page.dart';
import '../profile_page/profile_page.dart';
import '../reviews_page/reviews_page.dart';
import '../searchPage/search_page.dart';
import '../settingsPage/setting_page.dart';
import '../view_product_page/view_product_page.dart';

int selectedIndex = 0;

class HomeScreenController extends GetxController {
  Rx<PageController> pageController = PageController().obs;
  RxInt selectedIndex = 0.obs;

  onChang(int index) {
    selectedIndex.value = index;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // getUser();
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    List pName = ['Armchair', 'Sofa', 'Bed', 'Light'];
    final height = MediaQuery.of(context).size.height;
    final homeController = Get.put(HomeScreenController());


    return Scaffold(
      backgroundColor: context.theme.cardColor,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: context.theme.cardColor,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ));
                },
                child: CircleAvatar(
                  backgroundImage: AppIcon.userImage(),
                ).marginOnly(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: 'Welcome'.TegSubText(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: 'Besnik Doe'.nameText(context),
                  )
                ],
              ).marginOnly(right: 80),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return NotificationPage();
                    },
                  ));
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: context.theme.backgroundColor,
                  child: AppIcon.vectorimage(context),
                ).marginOnly(left: 50),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              // Container(
              //   child: Row(
              //     children: [
              //       GestureDetector(
              //         onTap: () {
              //           Navigator.pushReplacement(context, MaterialPageRoute(
              //             builder: (context) {
              //               return ProfilePage();
              //             },
              //           ));
              //         },
              //         child: CircleAvatar(
              //           backgroundImage: AppIcon.userImage(),
              //         ).marginOnly(left: 15),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         children: [
              //           Container(
              //             child: 'Welcome'.TegSubText(),
              //           ),
              //           Container(
              //             margin: EdgeInsets.only(top: 10),
              //             child: 'Besnik Doe'.nameText(),
              //           )
              //         ],
              //       ).marginOnly(left: 20),
              //       GestureDetector(
              //         onTap: () {
              //           Navigator.pushReplacement(context, MaterialPageRoute(
              //             builder: (context) {
              //               return NotificationPage();
              //             },
              //           ));
              //         },
              //         child: CircleAvatar(
              //           radius: 20,
              //           backgroundColor: AppColor.appBackgroundColor,
              //           child: AppIcon.vectorimage(),
              //         ).marginOnly(left: 150),
              //       )
              //     ],
              //   ),
              // ),

              Container(
                height: height / 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: context.theme.backgroundColor,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextField(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return SearchPage();
                      },
                    ));
                  },
                  controller: searchp,
                  cursorColor: Color(0xff7E7E7E),
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Search Item',
                      suffixIcon: Icon(Icons.more_horiz),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                height: height / 40,
              ),
              Row(
                children: ['Special Offers'.homePageText(context)],
              ).marginOnly(left: 20),
              // Container(
              //   height: 150,
              //   width: 300,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       image: DecorationImage(
              //           image: AppIcon.pageViewImage(), fit: BoxFit.fill)),
              //   child: Column(
              //     children: [
              //       Row(
              //         children: ['25% discount'.pageViewtext()],
              //       ).marginOnly(left: 16, top: 16),
              //       Row(
              //         children: ['For a cozy yellow set!'.pageViewSubText()],
              //       ).marginOnly(left: 16),
              //       Row(
              //         children: [
              //           Container(
              //             height: 40,
              //             width: 100,
              //             decoration: BoxDecoration(
              //                 color: AppColor.intoColor,
              //                 borderRadius: BorderRadius.circular(25)),
              //             child: Row(mainAxisAlignment: MainAxisAlignment.center,
              //               children: ['Learn More'.pageViewButtonText()],
              //             ),
              //           ),
              //         ],
              //       ).marginOnly(left: 16, top: 25)
              //     ],
              //   ),
              // ),
              Container(
                height: height / 40,
              ),
              Container(
                width: 350,
                height: 150,
                child: PageView(
                  scrollDirection: Axis.horizontal,

                  // physics: const AlwaysScrollableScrollPhysics(
                  //     parent: BouncingScrollPhysics()),
                  controller: homeController.pageController.value,
                  children: const [
                    PageViewHomepage(),
                    PageViewHomepage1(),
                    PageViewHomepage2()
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height / 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: SmoothPageIndicator(
                          controller: homeController.pageController.value,
                          // PageController
                          count: 3,
                          effect: WormEffect(
                              dotWidth: 10,
                              dotHeight: 10,
                              activeDotColor: AppColor.intoColor,
                              dotColor: Color(0xff98B7B3)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: height / 40,
              ),
              Obx(() {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      pName.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return CategoriesPage();
                            },
                          ));
                          homeController.onChang(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: homeController.selectedIndex.value == index
                                ? AppColor.intoColor
                                : context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 40,
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.table,
                                color:
                                    homeController.selectedIndex.value == index
                                        ? AppColor.appBackgroundColor
                                        : Color(0xff767D7C),
                              ),
                              Center(
                                  child: Text(
                                '${pName[index]}',
                                style: TextStyle(
                                    color: homeController.selectedIndex.value ==
                                            index
                                        ? AppColor.appBackgroundColor
                                        : Color(0xff767D7C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              )).marginOnly(left: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
              Container(
                height: height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Most Interested'.homePageText(context),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) {
                            return const ViewProductPage();
                          },
                        ));
                      },
                      child: Container(child: 'View All'.priceText())),
                ],
              ).marginOnly(left: 20, right: 20),
              // Row(
              //   children: [
              //     Container(
              //       height: 254,
              //       width: 221,
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(15)),
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 120,
              //             width: 86,
              //             decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                     image: AssetImage(AppAssets.chairImage))),
              //           ).marginOnly(top: 15),
              //           Row(
              //             children: ['Ox Mathis Chair'.homePageText()],
              //           ).marginOnly(top: 15, left: 15),
              //           Row(
              //             children: ['Hans j. wegner'.TegSubText()],
              //           ).marginOnly(top: 5, left: 15),
              //           Row(
              //             children: ['9.99'.pricechairText()],
              //           ).marginOnly(top: 20, left: 15),
              //         ],
              //       ),
              //     ),
              //   ],
              // ).marginOnly(left: 20),
              Container(
                height: height / 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return ViewProductPage();
                    },
                  ));
                },
                child: Container(
                  height: 254,

                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 254,
                        width: 221,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppAssets.chairImage))),
                            ).marginOnly(top: 15),
                            Row(
                              children: [
                                'Ox Mathis Chair'.homePageText(context)
                              ],
                            ).marginOnly(top: 15, left: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                'Hans j. wegner'.TegSubText(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return ViewProductPage();
                                      },
                                    ));
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColor.intoColor,
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ).marginOnly(right: 20),
                                )
                              ],
                            ).marginOnly(left: 15),
                            Row(
                              children: ['\$9.99'.pricechairText()],
                            ).marginOnly(top: 20, left: 15),
                          ],
                        ),
                      );
                    },
                  ),
                ).marginOnly(left: 10),
              ),
              Container(
                height: height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Popular'.homePageText(context),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return PopularPage();
                          },
                        ));
                      },
                      child: Container(
                        child: 'View All'.priceText(),
                      ))
                ],
              ).marginOnly(left: 20, right: 20),
              Container(
                height: height / 40,
              ),
              Container(
                height: 104,

                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 104,
                      width: 226,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: context.theme.backgroundColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                                color: Color(0xffE0E0E2),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AppIcon.chairImage1())),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  'Swoon Lounge'.homePageText(context)
                                ],
                              ).marginOnly(left: 15, top: 20),
                              Row(
                                children: ['Regal Do Lobo'.pageViewSubText()],
                              ).marginOnly(right: 5, top: 5),
                              Row(
                                children: ['\$136.79'.pricechairText1()],
                              ).marginOnly(right: 35, top: 15),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ).marginOnly(left: 10),
              Container(
                height: height / 30,
              ),

            ],
          ),
        ),
      ),
    );
  }


  TextEditingController searchp = TextEditingController();
}


