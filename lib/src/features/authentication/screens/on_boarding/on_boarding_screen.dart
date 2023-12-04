// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/text_strings.dart';
import 'package:votting_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:votting_app/src/features/authentication/screens/on_boarding/on_bording_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage1,
            title: tOnBoardingSubTitle1,
            subTitle: tOnBoardingSubTitle1,
            counterText: tOnBoardingCounter1,
            bgColor: tOnBoardingPage1Color,
            height: size.height),
        Size: size,
      )
    ];

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              OnBoardingPage(Size: size),
              Container(
                color: tOnBoardingPage2Color,
              ),
              Container(
                color: tOnBoardingPage3Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
