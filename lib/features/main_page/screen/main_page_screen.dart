import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:f_coffee_shop/features/home_page/widgets/home_screen_header.dart';
import 'package:f_coffee_shop/features/main_page/widgets/main_page_coffee_beans_section.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import '../widgets/main_page_coffee_categories.dart';
import '../widgets/main_page_featured_coffee_section.dart';
import '../widgets/main_page_headline_text.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer:  Drawer(),
      body: SafeArea(
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.homePageHorizontalPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeScreenHeader(),
                  SizedBox(height: 31),
                  MainPageHeadlineText(),
                  SizedBox(height: 28),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search),
                      hintText: 'Find Your Coffee...',
                    ),
                  ),
                  SizedBox(height: 28),
                  MainPageCoffeeCategories(),
                  SizedBox(height: 22),
                  MainPageFeaturedCoffeeSection(),
                  SizedBox(height: 23),
                  MainPageCoffeeBeansSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

