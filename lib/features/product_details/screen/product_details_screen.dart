import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/features/product_details/screen/freeze_dried_coffee_details_screen.dart';
import 'package:flutter/material.dart';

import 'coffee_beans_details_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    switch (product) {
      case FreezeDriedCoffee():
        return FreezeDriedCoffeeDetailsScreen(
          freezeDriedCoffee: product as FreezeDriedCoffee,
        );
      case CoffeeBeans():
        return CoffeBeansDetailsScreen(
          coffeeBeans: product as CoffeeBeans,
        );
      default:
        return Container();
    }
  }
}
