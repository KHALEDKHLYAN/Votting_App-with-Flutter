// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/sizes.dart';
import 'package:votting_app/src/constansts/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(tWelcomeScreenImage),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(
                    tWelcomeTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      
                      child: Text(
                        tLogin.toUpperCase(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      
                      child: Text(
                        tSignUp.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
