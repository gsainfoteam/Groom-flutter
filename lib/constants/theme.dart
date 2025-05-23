import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.white,
    primary: Color(0xFFFFC2C2),
    secondary: Color(0xFFE7E7E7),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    titleLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
  ),
);
