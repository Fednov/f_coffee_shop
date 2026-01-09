import 'package:f_coffee_shop/core/ui/theme/app_theme.dart';
import 'package:f_coffee_shop/features/home_page/screen/home_page_screen.dart';
import 'package:flutter/material.dart';

class FCoffeeShop extends StatelessWidget {
  const FCoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F Coffee Shop',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const HomePageScreen(),
    );
  }
}
