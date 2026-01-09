import 'package:f_coffee_shop/core/configs/assets/fonts.dart';
import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:f_coffee_shop/core/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData dark = ThemeData(
    fontFamily: AppAssetsFonts.poppins,
    primaryColor: AppColors.orange,
    unselectedWidgetColor: AppColors.darkGrey,
    cardColor: const Color(0xff141921),
    splashFactory: NoSplash.splashFactory,
    textTheme: AppTextTheme.theme,
    textSelectionTheme: _textSelectionTheme,
    appBarTheme: _appBarTheme,
    bottomNavigationBarTheme: _bottomNavigationBarTheme,
    colorScheme: _colorScheme,
    inputDecorationTheme: _inputDecorationTheme,
  );

  static final _colorScheme = ColorScheme.fromSeed(
    seedColor: AppColors.orange,
    brightness: Brightness.dark,
    surface: AppColors.black,
    surfaceContainer: const Color(0xff262B33),
    surfaceContainerLow: const Color(0xff21262E),
    onSurface: AppColors.white,
    onSurfaceVariant: AppColors.grey,
  );

  static const _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    filled: true,
    fillColor: Color(0xff141921),
    hintStyle: TextStyle(
      fontSize: 10,
      color: AppColors.darkGrey,
    ),
    prefixIconColor: AppColors.darkGrey,
  );

  static const AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
  );

  static const BottomNavigationBarThemeData _bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    unselectedItemColor: AppColors.darkGrey,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  );

  static const TextSelectionThemeData _textSelectionTheme =
      TextSelectionThemeData(
    cursorColor: AppColors.white,
  );
}
