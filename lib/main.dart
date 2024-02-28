import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_project/screen/about_us/about_us.dart';
import 'package:hotel_project/screen/home_screen/home_screen.dart';
import 'package:hotel_project/screen/sign_in_admin_screen/sign_in_screen.dart';
import 'package:hotel_project/screen/sign_in_user_screen/sign_in_user_screen.dart';
import 'package:hotel_project/screen/sign_up_admin_screen/sign_up_admin_screen.dart';
import 'screen/rooms_screen/rooms_screen.dart';
import 'screen/sign_up_user_screen/sign_up_user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInUserScreen(),
    );
  }
}
