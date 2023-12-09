import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../bottom_navigation_bar.dart';

class FilterScreenController extends GetxController {
  Rx<PageController> pageController = PageController().obs;
  RxInt selectedIndex = 0.obs;

  onChang(int index) {
    selectedIndex.value = index;
    update();
  }

  onChangColor(int index) {
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

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List pName = ['Partex', 'Regal Furniture', 'Hatil'];
  final FilteController = Get.put(FilterScreenController());
  final colorController = Get.put(FilterScreenController());
  List colorNameList = ['Green', 'Yellow', 'Black', 'Gray'];
  List colorList = [
    Color(0xff0C8A7B),
    Color(0xffF2A666),
    Color(0xff101817),
    Color(0xff828A89)
  ];
  List numberList = ['5','4','3','2','1'];
  RangeValues _currentRangeValues = const RangeValues(256, 25973);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: Row(
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
                  'Apply Filter'.getText(),
                ],
              ),
            ),
          )
        ],
      ).marginOnly(top: 15),
      body: WillPopScope(onWillPop: () async{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return BottomNavigationBarPage();
        },));
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
                    child:  CircleAvatar(
                      backgroundColor:  context.theme.backgroundColor,
                      radius: 25,
                      child: Icon(
                        Icons.arrow_back,
                        color: context.theme.textTheme.headline1?.color,
                      ),
                    ).marginOnly(left: 10, top: 10),
                  ),
                  Row(
                    children: [
                      'Filter'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 25,
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ['Brand'.introTitleText(context), 'View all'.pricechairText()],
              ).marginOnly(left: 20, right: 20,top: 15),
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
                          FilteController.onChang(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: FilteController.selectedIndex.value == index
                                ? AppColor.intoColor
                                :  context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: Text(
                                '${pName[index]}',
                                style: TextStyle(
                                    color: FilteController.selectedIndex.value ==
                                            index
                                        ? AppColor.appBackgroundColor
                                        : Color(0xff767D7C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              )).marginOnly(left: 10),
                              Icon(
                                Icons.check,
                                size: 15,
                                color:
                                    FilteController.selectedIndex.value == index
                                        ? AppColor.appBackgroundColor
                                        : Color(0xff767D7C),
                              ).marginOnly(right: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).marginOnly(top: 10),
              Divider(
                height: 10,
              ).marginOnly(top: 10),
              Row(
                children: ['Color'.introTitleText(context)],
              ).marginOnly(left: 20, right: 20),
              Obx(() {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      colorNameList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          colorController.onChangColor(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: colorController.selectedIndex.value == index
                                ?  context.theme.backgroundColor
                                :  context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 32,
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: colorList[index],
                              ).marginOnly(left: 10),
                              Center(
                                  child: Text(
                                '${colorNameList[index]}',
                                style: TextStyle(
                                    color: colorController.selectedIndex.value ==
                                            index
                                        ?context.theme.textTheme.headline1?.color
                                        : Color(0xff767D7C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              )).marginOnly(left: 10),
                              Icon(
                                Icons.check,
                                size: 15,
                                color:
                                    colorController.selectedIndex.value == index
                                        ? context.theme.textTheme.headline1?.color
                                        : Color(0xff828A89),
                              ).marginOnly(right: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).marginOnly(top: 10),
              Divider(
                height: 10,
              ).marginOnly(top: 20, bottom: 20),
              Row(
                children: ['Price Range'.introTitleText(context)],
              ).marginOnly(left: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: ['\$256'.TegText(context), '\$25,973'.TegText(context)],
              ).marginOnly(left: 20,right: 20,top: 20),
              RangeSlider(
                values: _currentRangeValues,
                max: 25973,
                min: 256,
                divisions: 10,
                activeColor: Color(0xff0C8A7B),
                inactiveColor: AppColor.deselect.withOpacity(0.2),
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              Divider(
                height: 10,
              ).marginOnly(top: 20, bottom: 20),
              Row(children: ['Customer Review'.introTitleText(context)],).marginOnly(left: 20),
              Obx(() {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      numberList.length,
                          (index) => GestureDetector(
                        onTap: () {
                          colorController.onChangColor(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: colorController.selectedIndex.value == index
                                ? AppColor.intoColor
                                :  context.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 32,
                          width: 54,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(
                                Icons.star_rate,
                                size: 15,
                                color:
                                colorController.selectedIndex.value == index
                                    ? Colors.white
                                    : Color(0xffEAC92C),
                              ).marginOnly(right: 10),
                              Text('${numberList[index]}',style: TextStyle(
                                  color:  colorController.selectedIndex.value == index
                                      ? Colors.white
                                      : Color(0xff828A89), fontWeight: FontWeight.w400, fontSize: 14),)

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).marginOnly(top: 10),
            ],
          ),
        ),
      ),
    );
  }
}
