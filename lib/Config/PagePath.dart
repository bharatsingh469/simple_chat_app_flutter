import 'package:chat_app/Pages/Auth/AuthPage.dart';
import 'package:chat_app/Pages/Chat/ChatPage.dart';
import 'package:chat_app/Pages/HomePage/HomePage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
   GetPage(
    name: "/homePage",
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
   GetPage(
    name: "/chatPage",
    page: () => ChatPage(),
    transition: Transition.rightToLeft,
  ),
 
  // GetPage(
  //   name: "/profilePage",
  //   page: () => ProfilePage(),
  //   transition: Transition.rightToLeft,
  // ),
  // GetPage(
  //   name: "/contactPage",
  //   page: () => ContactPage(),
  //   transition: Transition.rightToLeft,
  // ),
  // GetPage(
  //   name: "/updateProfilePage",
  //   page: () => UserUpdateProfile(),
  //   transition: Transition.rightToLeft,
  // ),
];
