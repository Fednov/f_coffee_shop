import 'package:f_coffee_shop/core/temp_data/main_page_freeze_dried_coffee_list.dart';
import 'package:f_coffee_shop/features/main_page/widgets/base/main_page_product_section.dart';
import 'package:flutter/material.dart';

class MainPageFeaturedCoffeeSection extends StatelessWidget {
  const MainPageFeaturedCoffeeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPageProductSection(
      products: [
        ...MainPageFreezeDriedCoffeeListTemp.list,
      ],
    );
  }
}
