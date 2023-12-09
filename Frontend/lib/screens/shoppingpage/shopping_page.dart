import 'package:flutter/material.dart';
import 'package:furniture_app/extenstion/text_extension.dart';

import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';
import 'check_out_page.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int _counter = 1;
  int _counter1 = 1;
  int _counter2 = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  void _decrementCounter1() {
    setState(() {
      if (_counter1 > 1) {
        _counter1--;
      }
    });
  }

  void _decrementCounter2() {
    setState(() {
      if (_counter2 > 1) {
        _counter2--;
      }
    });
  }

  List image = [
    AppIcon.shoppingPageImage1(),
    AppIcon.shoppingPageImage2(),
    AppIcon.shoppingPageImage3()
  ];
  List chaitList = ['Minimalist Chair', 'Hallingdal Chair', 'Hiro Armchair'];
  List price = ['\$279.95', '\$258.91', '\$369.86'];

  @override
  Widget build(BuildContext context) {
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
                    return const BottomNavigationBarPage();
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
                'Shopping'.introTitleText(context),
              ],
            ).marginOnly(top: 10),
            CircleAvatar(
              backgroundColor: context.theme.backgroundColor,
              radius: 25,
              child: AppIcon.deleteSvg(context),
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
                'Order Summary'.nameText(context),
              ],
            ).marginOnly(left: 20, top: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Subtotal'.SubTitelText(),
                '\$926.99'.pricechairText1()
              ],
            ).marginOnly(left: 20, top: 10, right: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Shipping Cost'.SubTitelText(),
                '\$26.00'.pricechairText1()
              ],
            ).marginOnly(left: 20, top: 10, right: 20),
            const Divider(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Total payment'.nameText(context),
                '\$956.90'.pricechairText1()
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
                        return const CheckOutPage();
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
                            return const CheckOutPage();
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          'Check Out  '.getText(),
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
              return const BottomNavigationBarPage();
            },
          ));
          return true;
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                //             return BottomNavigationBarPage();
                //           },
                //         ));
                //       },
                //       child: const CircleAvatar(
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
                //         'Shopping'.introTitleText(),
                //       ],
                //     ).marginOnly(top: 10),
                //     CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: 25,
                //       child: AppIcon.deleteSvg(),
                //     ).marginOnly(right: 10, top: 10)
                //   ],
                // ),
                // Container(
                //   margin: EdgeInsets.only(left: 10, right: 10),
                //   height: 104,
                //   decoration: BoxDecoration(
                //       color: Colors.white, borderRadius: BorderRadius.circular(10)),
                //   child: Row(
                //     children: [
                //       Container(
                //         margin: EdgeInsets.only(left: 20),
                //         height: 72,
                //         width: 72,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: AppColor.deselect.withOpacity(0.3),
                //             image: DecorationImage(
                //                 image: AppIcon.shoppingPageImage1())),
                //       ),
                //       Column(
                //         children: [
                //           Row(
                //             children: ['Minimalist Chair'.nameText()],
                //           ).marginOnly(left: 10, top: 15),
                //           Row(
                //             children: ['Regal Do Lobo'.TegSubText()],
                //           ).marginOnly(right: 10),
                //           Row(
                //             children: ['279.95'.priceText()],
                //           ).marginOnly(right: 50, top: 15)
                //         ],
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             child: Row(
                //               children: [
                //                 GestureDetector(
                //                   onTap: () {},
                //                   child: CircleAvatar(
                //                     radius: 14,
                //                     backgroundColor:
                //                         Color(0xff828A89).withOpacity(0.4),
                //                     child: AppIcon.minus(),
                //                   ).marginOnly(right: 10),
                //                 ),
                //                 '04'.TegText(),
                //                 CircleAvatar(
                //                   radius: 14,
                //                   backgroundColor: AppColor.intoColor,
                //                   child: Center(
                //                     child: Icon(
                //                       Icons.add,
                //                       color: Colors.white,
                //                     ),
                //                   ),
                //                 ).marginOnly(left: 10)
                //               ],
                //             ),
                //           ),
                //         ],
                //       ).marginOnly(left: 20),
                //     ],
                //   ),
                // ),
                // ListView.builder(
                //   physics: BouncingScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: 3,
                //   itemBuilder: (context, index) {
                //     return Container(
                //       margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                //       height: 104,
                //       decoration: BoxDecoration(
                //           color: context.theme.backgroundColor,
                //           borderRadius: BorderRadius.circular(10)),
                //       child: Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.only(left: 20),
                //             height: 72,
                //             width: 72,
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(10),
                //                 color: AppColor.deselect.withOpacity(0.3),
                //                 image: DecorationImage(image: image[index])),
                //           ),
                //           Column(
                //             children: [
                //               Row(
                //                 children: [
                //                   '${chaitList[index]}'.nameText(context)
                //                 ],
                //               ).marginOnly(left: 10, top: 15),
                //               Row(
                //                 children: ['Regal Do Lobo'.TegSubText()],
                //               ).marginOnly(right: 10),
                //               Row(
                //                 children: ['${price[index]}'.priceText()],
                //               ).marginOnly(right: 50, top: 15)
                //             ],
                //           ),
                //           Spacer(),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               Container(
                //                 child: Row(
                //                   children: [
                //                     GestureDetector(
                //                       onTap: () {
                //                         _decrementCounter();
                //                       },
                //                       child: CircleAvatar(
                //                         radius: 14,
                //                         backgroundColor:
                //                             Color(0xff828A89).withOpacity(0.4),
                //                         child: AppIcon.minus(),
                //                       ).marginOnly(right: 10),
                //                     ),
                //                     '${_counter}'.TegText(context),
                //                     GestureDetector(
                //                       onTap: () {
                //                         _incrementCounter();
                //                       },
                //                       child: CircleAvatar(
                //                         radius: 14,
                //                         backgroundColor: AppColor.intoColor,
                //                         child: Center(
                //                           child: Icon(
                //                             Icons.add,
                //                             color: Colors.white,
                //                           ),
                //                         ),
                //                       ).marginOnly(left: 10),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ).marginOnly(right: 20),
                //         ],
                //       ),
                //     );
                //   },
                // ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 104,
                  decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.deselect.withOpacity(0.3),
                            image: DecorationImage(
                              image: AppIcon.shoppingPageImage1(),
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                            children: ['Minimalist Chair'.nameText(context)],
                          ).marginOnly(left: 10, top: 15),
                          Row(
                            children: ['Regal Do Lobo'.TegSubText()],
                          ).marginOnly(right: 10),
                          Row(
                            children: ['\$279.95'.priceText()],
                          ).marginOnly(right: 50, top: 15)
                        ],
                      ),
                      const Spacer(),
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
                                    radius: 14,
                                    backgroundColor:
                                        const Color(0xff828A89).withOpacity(0.4),
                                    child: AppIcon.minus(),
                                  ).marginOnly(right: 10),
                                ),
                                '${_counter}'.TegText(context),
                                GestureDetector(
                                  onTap: () {
                                    _incrementCounter();
                                  },
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: AppColor.intoColor,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ).marginOnly(left: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(right: 20),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 104,
                  decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.deselect.withOpacity(0.3),
                            image: DecorationImage(
                              image: AppIcon.shoppingPageImage2(),
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                            children: ['Hallingdal Chair'.nameText(context)],
                          ).marginOnly(left: 10, top: 15),
                          Row(
                            children: ['Regal Do Lobo'.TegSubText()],
                          ).marginOnly(right: 10),
                          Row(
                            children: ['\$258.91'.priceText()],
                          ).marginOnly(right: 50, top: 15)
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _decrementCounter1();
                                  },
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor:
                                        const Color(0xff828A89).withOpacity(0.4),
                                    child: AppIcon.minus(),
                                  ).marginOnly(right: 10),
                                ),
                                '${_counter1}'.TegText(context),
                                GestureDetector(
                                  onTap: () {
                                    _incrementCounter1();
                                  },
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: AppColor.intoColor,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ).marginOnly(left: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(right: 20),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 104,
                  decoration: BoxDecoration(
                      color: context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: 72,
                        width: 72,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.deselect.withOpacity(0.3),
                            image: DecorationImage(
                              image: AppIcon.shoppingPageImage3(),
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                            children: ['Hiro Armchair'.nameText(context)],
                          ).marginOnly(left: 10, top: 15),
                          Row(
                            children: ['Regal Do Lobo'.TegSubText()],
                          ).marginOnly(right: 10),
                          Row(
                            children: ['\$258.91'.priceText()],
                          ).marginOnly(right: 50, top: 15)
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _decrementCounter2();
                                  },
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor:
                                        const Color(0xff828A89).withOpacity(0.4),
                                    child: AppIcon.minus(),
                                  ).marginOnly(right: 10),
                                ),
                                '${_counter2}'.TegText(context),
                                GestureDetector(
                                  onTap: () {
                                    _incrementCounter2();
                                  },
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundColor: AppColor.intoColor,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ).marginOnly(left: 10),
                                )
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(right: 20),
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
}
