// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/text_strings.dart';
import 'package:votting_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:votting_app/src/features/authentication/screens/on_boarding/on_bording_widget.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

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
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage2,
            title: tOnBoardingSubTitle2,
            subTitle: tOnBoardingSubTitle2,
            counterText: tOnBoardingCounter2,
            bgColor: tOnBoardingPage2Color,
            height: size.height),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tOnBoardingImage3,
            title: tOnBoardingSubTitle3,
            subTitle: tOnBoardingSubTitle3,
            counterText: tOnBoardingCounter3,
            bgColor: tOnBoardingPage3Color,
            height: size.height),
      )
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            onPageChangeCallback: OnPageChangeCallback,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black26),
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            right: 20.0,
            child: TextButton(
              onPressed: () => controller.jumpToPage(page: 2),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xff272727),
                // dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void OnPageChangeCallback(int activePageIndex) {

    setState(() {
    currentPage = activePageIndex;
    });
  }
}
