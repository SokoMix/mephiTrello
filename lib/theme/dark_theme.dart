import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Color(0xFFFF993D),
    secondary: Colors.white,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Color(0xFFFF993D),
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      color: Color(0xFFffffff),
    ),
  ),
  iconTheme: IconThemeData(
    size: 30,
    weight: 4,
    color: Color(0xFFFF993D),
  ),
);
