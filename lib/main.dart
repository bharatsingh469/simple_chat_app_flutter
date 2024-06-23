import 'package:chat_app/Config/Themes.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:chat_app/Pages/splashPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAMPARK',
       theme: lightTheme,
       darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const WelcomePage(),
    );
  }
}
