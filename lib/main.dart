import 'package:chat_app/Config/PagePath.dart';
import 'package:chat_app/Config/Themes.dart';
import 'package:chat_app/Pages/Auth/AuthPage.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:chat_app/Pages/splashPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAanNLYLLHauI-IgMAgM42fsBgVPrUIFBI",
          authDomain: "sampark-app-aede3.firebaseapp.com",
          projectId: "sampark-app-aede3",
          storageBucket: "sampark-app-aede3.appspot.com",
          messagingSenderId: "137919762393",
          appId: "1:137919762393:web:b025e90ee442e74dbd13c8",
          measurementId: "G-ZSV3RLYCE7"));
  } else {
   await Firebase.initializeApp();
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


 @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAMPARK',
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home:  SplacePage(),
    );
  }
}
