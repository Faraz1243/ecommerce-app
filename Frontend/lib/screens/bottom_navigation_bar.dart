import 'package:flutter/material.dart';
import 'package:furniture_app/screens/profile_page/profile_page.dart';
import 'package:furniture_app/screens/scan_page/scan_page.dart';
import 'package:furniture_app/screens/shoppingpage/shopping_page.dart';
import 'package:get/get.dart';

import '../constant/app_color.dart';
import '../constant/app_icon.dart';
import 'favourite_page/favourite_page.dart';
import 'homepage/home_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomePage(),
    FavouritePage(),
    ShoppingPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List iconsList = [
    Icons.home,
    Icons.favorite_border_outlined,
    Icons.shopping_cart_outlined,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 10,
        color: context.theme.cardColor,
        child: GestureDetector(
          child: BottomAppBar(
            color: context.theme.cardColor,
            shape: CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                      if(_selectedIndex == 0)
                        {
                          _onItemTapped(_selectedIndex);
                        }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: _selectedIndex == 0
                              ? AppColor.intoColor
                              : AppColor.deselect,
                        ).marginOnly(bottom: 0),
                        Text('Home',
                            style: TextStyle(
                                color: _selectedIndex == 0?AppColor.intoColor:AppColor.deselect,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                    if(_selectedIndex == 1)
                    {
                      _onItemTapped(_selectedIndex);
                    }
                  });
                },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color:  _selectedIndex == 1?AppColor.intoColor:AppColor.deselect,
                        ),
                        Text('Favourite',
                            style: TextStyle(
                                color:  _selectedIndex == 1?AppColor.intoColor:AppColor.deselect,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                    if(_selectedIndex == 2)
                    {
                      //_onItemTapped(_selectedIndex);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return ShoppingPage();
                      },));
                    }
                  });
                },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color:  _selectedIndex == 2?AppColor.intoColor:AppColor.deselect,
                        ).marginOnly(bottom: 0),
                        Text('Cart',
                            style: TextStyle(
                                color:  _selectedIndex == 2?AppColor.intoColor:AppColor.deselect,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                    if(_selectedIndex == 3)
                    {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return ProfilePage();
                      },));
                      // _onItemTapped(_selectedIndex);
                    }
                  });
                },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: _selectedIndex == 3?AppColor.intoColor:AppColor.deselect,
                        ).marginOnly(bottom: 0),
                        Text('Profile',
                            style: TextStyle(
                                color: _selectedIndex == 3?AppColor.intoColor:AppColor.deselect,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
