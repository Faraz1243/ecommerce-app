import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

int selectedIndex = 0;

class SearchScreenController extends GetxController {
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

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final SearchController = Get.put(SearchScreenController());

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

  List pName = ['Armchair', 'Sofa', 'Bed', 'Light'];

  List pPrice = ['\$424.00', '\$561.00', '\$645.21', '\$929.68'];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:  context.theme.cardColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: context.theme.cardColor,
        title: Container(
          decoration: BoxDecoration(
              color: context.theme.backgroundColor, borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextField(
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
            child: Column(children: [
              // Container(
              //   height: height / 40,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Recently searched'.introTitleText(context),
                  'Clear'.TegSubText()
                ],
              ).marginOnly(top: 10, left: 20, right: 20),
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
                          SearchController.onChang(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: SearchController.selectedIndex.value == index
                                ? AppColor.intoColor
                                :  context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 40,
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Text(
                                '${pName[index]}',
                                style: TextStyle(
                                    color: SearchController.selectedIndex.value ==
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
              }).marginOnly(top: 10),
              Container(
                height: 516,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 240),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color:  context.theme.backgroundColor,
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
                                    color: context.theme.textTheme.headline1?.color ,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              '${pPrice[index]}'.pricechairText1(),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ]).marginOnly(left: 10,right: 10),
          ),
        ),
      ),
    );
  }

  TextEditingController searchp = TextEditingController();
}
