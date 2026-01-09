import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/coffee_category.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../bloc/provider/main_page_state_provider.dart';

class MainPageCoffeeCategory extends StatelessWidget {
  const MainPageCoffeeCategory({
    super.key,
    required this.coffeeCategory,
  });

  final CoffeeCategories coffeeCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _CoffeeCategoryText(coffeeCategory: coffeeCategory),
          _SelectedCategoryEllipse(coffeeCategory: coffeeCategory),
        ],
      ),
    );
  }
}

class _CoffeeCategoryText extends ConsumerWidget {
  const _CoffeeCategoryText({
    required this.coffeeCategory,
  });

  final CoffeeCategories coffeeCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = context.themeOf();
    var selectedCoffeeCategory = ref.watch(
      mainPageStateProvider.select(
        (state) => state.selectedCoffeeCategory,
      ),
    );

    return GestureDetector(
      onTap: () => ref
          .read(mainPageStateProvider.notifier)
          .onCoffeeCategorySelect(coffeeCategory: coffeeCategory),
      child: Text(
        coffeeCategory.name(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: selectedCoffeeCategory == coffeeCategory
              ? theme.primaryColor
              : theme.unselectedWidgetColor,
        ),
      ),
    );
  }
}

class _SelectedCategoryEllipse extends ConsumerWidget {
  const _SelectedCategoryEllipse({
    required this.coffeeCategory,
  });

  final CoffeeCategories coffeeCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = context.themeOf();
    var selectedCoffeeCategory = ref.watch(
      mainPageStateProvider.select(
        (state) => state.selectedCoffeeCategory,
      ),
    );

    return Visibility(
      visible: selectedCoffeeCategory == coffeeCategory,
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
