import 'package:chat_app/Config/PagePath.dart';
import 'package:chat_app/Config/Themes.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:chat_app/Pages/splashPage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SAMPARK',
       theme: lightTheme,
       getPages: pagePath,
       darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const WelcomePage(),
    );
  }
}
