// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:votting_app/src/features/authentication/screens/welcom/welcom_screen.dart';

import '../screens/on_boarding/on_boarding_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();


  RxBool animate = false.obs;


  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    // Get.to(const WelcomeScreen());
    Get.to(()=>  WelcomeScreen());
  }
}