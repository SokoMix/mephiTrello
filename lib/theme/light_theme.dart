import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  colorScheme: ColorScheme.light(
    background: Color(0xFFD3D3D3),
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
      color: Color(0xFF000000),
    ),
  ),
  iconTheme: IconThemeData(
    size: 30,
    weight: 4,
    color: Color(0xFFFF993D),
  ),
);
