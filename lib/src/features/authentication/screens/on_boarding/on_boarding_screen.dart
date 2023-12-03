
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/sizes.dart';
import 'package:votting_app/src/constansts/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                padding: EdgeInsets.all(tDefaultSize),
                color: tOnBoardingPage1Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(tOnBoardingImage1),height: size.height*0.5,),
                  Column(
                    children: [
                      Text(tOnBoardingTitle1, style: Theme.of(context).textTheme.headline3,),
                      Text(tOnBoardingSubTitle1, textAlign: TextAlign.center,),
                    ],
                  ),
                  Text(tOnBoardingCounter1),
                ],
              ),),
              Container(color: tOnBoardingPage2Color,),
              Container(color: tOnBoardingPage3Color,),
            ],
          ),
        ],
      ),
    );
  }
}