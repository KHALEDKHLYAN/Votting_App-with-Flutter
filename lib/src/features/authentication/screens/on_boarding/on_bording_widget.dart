// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/image_strings.dart';
import 'package:votting_app/src/constansts/sizes.dart';
import 'package:votting_app/src/constansts/text_strings.dart';
import 'package:votting_app/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
    final OnBoardingModel model;

  const OnBoardingPageWidget( {
    super.key,
    // ignore: non_constant_identifier_names
    required this.model,
  });

  @override
  Widget build(BuildContext context) {

  
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(model.image), height: model.height*0.4),
            Column(
              children: [
                Text(model.title,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(model.subTitle, textAlign: TextAlign.center,),
              ],
            ),
            Text(model.counterText),
            SizedBox(height: 50.0,)
          ]),
    );
  }
}
