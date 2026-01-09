import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static const theme = TextTheme(
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.3,
      letterSpacing: 0.3,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: 9,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.3,
    ),
    labelMedium: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
      height: 1.3,
      inherit: false,
    ),
    labelSmall: TextStyle(
      fontSize: 9,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.4,
      height: 1.3,
      inherit: false,
    ),
  );
}
