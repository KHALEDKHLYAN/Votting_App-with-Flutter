// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unused_import
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/sizes.dart';
import 'package:votting_app/src/constansts/text_strings.dart';
import 'package:votting_app/src/features/authentication/controls/splash_screen_controller.dart';
import 'package:votting_app/src/features/authentication/screens/welcom/welcom_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    SplashScreenController.find.startAnimation();


    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              width: 95.0,
              height: 90.0,
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashTopIcon)),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 80,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.bodyMedium, ),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.bodyMedium)
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              // top: 0,
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  Image(image: AssetImage(tSplashImage), height: size.height*0.5,width: size.height*0.5 ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              width: 100.0,
              height: 100.0,
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: tDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: tPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}