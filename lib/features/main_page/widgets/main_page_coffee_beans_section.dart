import 'package:f_coffee_shop/core/temp_data/main_page_coffee_beans_list.dart';
import 'package:f_coffee_shop/features/main_page/widgets/base/main_page_product_section.dart';
import 'package:flutter/material.dart';

class MainPageCoffeeBeansSection extends StatelessWidget {
  const MainPageCoffeeBeansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPageProductSection(
      title: 'Coffee beans',
      isRateDisplay: false,
      products: [
        ...MainPageCoffeeBeansList.list,
      ],
    );
  }
}
