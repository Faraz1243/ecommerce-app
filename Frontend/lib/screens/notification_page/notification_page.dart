import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:furniture_app/extenstion/text_extension.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../bottom_navigation_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List image = [
    AppIcon.shoppingPageImage1(),
    AppIcon.shoppingPageImage2(),
    AppIcon.shoppingPageImage3(),
    AppIcon.lockImage(),
  ];
  List chairName = [
    'your order will be ship.once\nwe get confirl address',
    'special offer on bean upto 46% \noff all the products',
    'new products you may like are\navailable go and show now.',
    'your order 3 summery green \nchiar has been shipped!',
  ];
  List chairT = [
    '16 minute ago',
    '26 minute ago',
    '49 minute ago',
    '16 days ago',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(onWillPop: () async{
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return BottomNavigationBarPage();
          },
        ));
        return true;
      },
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
                      'Notifications'.introTitleText(context),
                    ],
                  ).marginOnly(top: 10),
                  Container(
                    child: 'Clear all'.SubTitelText(),
                  ).marginOnly(right: 10, top: 10)
                ],
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Slidable(
                    direction: Axis.horizontal,
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            setState(() {
                              // chairName.removeAt(index);
                            });
                          },
                          backgroundColor:  context.theme.backgroundColor,
                          icon: Icons.delete,


                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                      height: 104,
                      decoration: BoxDecoration(
                          color:  context.theme.backgroundColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                children: [Text('${chairName[index]}', style: TextStyle(
                                    color: context.theme.textTheme.headline1?.color, fontWeight: FontWeight.w400, fontSize: 14),)],
                              ).marginOnly(left: 10),
                              Row(
                                children: ['${chairT[index]}'.TegSubText()],
                              ).marginOnly(right: 10, top: 5, left: 10),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
