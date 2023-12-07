// ignore_for_file: unused_import, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/sizes.dart';

class TElevetedButtonTheme {
  TElevetedButtonTheme._();

  static final ligtOutLinedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkOutLinedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
