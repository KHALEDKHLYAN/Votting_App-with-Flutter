// ignore_for_file: unused_import, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:votting_app/src/constansts/colors.dart';
import 'package:votting_app/src/constansts/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final ligtOutLinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  static final darkOutLinedButtonTheme = OutlinedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
