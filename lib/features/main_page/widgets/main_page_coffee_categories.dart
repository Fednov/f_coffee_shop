import 'package:f_coffee_shop/core/model/coffee_category.dart';
import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:f_coffee_shop/core/ui/widgets/app_ignore_padding_box.dart';
import 'package:f_coffee_shop/features/main_page/widgets/base/main_page_coffee_category.dart';
import 'package:flutter/material.dart';

class MainPageCoffeeCategories extends StatelessWidget {
  const MainPageCoffeeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return AppIgnorePaddingBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: AppDimensions.homePageHorizontalPadding,
            ),
            ...CoffeeCategories.values.map(
              (element) => Padding(
                padding: const EdgeInsets.only(right: 18),
                child: MainPageCoffeeCategory(
                  coffeeCategory: element,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
