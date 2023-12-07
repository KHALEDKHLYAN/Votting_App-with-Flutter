
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:votting_app/src/utils/theme/text_theme.dart';
import 'package:votting_app/src/utils/theme/widgets_theme/elvetedbutton_theme.dart';
import 'package:votting_app/src/utils/theme/widgets_theme/outlinebutton_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: AppBarTheme(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(),
    elevatedButtonTheme:TElevetedButtonTheme.ligtOutLinedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.ligtOutLinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: AppBarTheme(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(),
    elevatedButtonTheme: TElevetedButtonTheme.darkOutLinedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutLinedButtonTheme,
  );
}