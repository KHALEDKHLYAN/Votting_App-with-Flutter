// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/sizes.dart';
import 'package:votting_app/src/constansts/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Positioned(
          top: 0,
          left: 0,
          child: Image(image: AssetImage(tSplashTopIcon)),
        ),
        Positioned(
          top: 80,
          left: tDefaultSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tAppName,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                tAppTagLine,
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
