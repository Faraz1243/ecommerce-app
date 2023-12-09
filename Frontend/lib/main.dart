import 'package:flutter/material.dart';
import 'package:furniture_app/screens/Splashscreen/Splash_Screen.dart';
import 'package:furniture_app/screens/bottom_navigation_bar.dart';

import 'package:furniture_app/theme/app_theme.dart';
import 'package:furniture_app/theme/theme_service.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: SplashScreen(),
    );
  }
}
