import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    brightness: Brightness.light,
    cardColor: const Color(0xffF0F0F2),
    unselectedWidgetColor: const Color(0xff3E3E3E),
    backgroundColor: Colors.white,
    /// con color
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.black),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    cardColor:const Color(0xff090C0B),
    unselectedWidgetColor: const Color(0xffFFFFFF),
    backgroundColor: const Color(0xff1B201E),
    /// con color
    colorScheme:
        ThemeData().colorScheme.copyWith(primary: const Color(0xff17181A)),
    textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),


        ),
  );
}
