import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'base/product_details_information_card.dart';

class ProductDetailsCoffeeTypeCard extends StatelessWidget {
  const ProductDetailsCoffeeTypeCard({
    super.key,
    required this.freezeDriedCoffee,
  });

  final FreezeDriedCoffee freezeDriedCoffee;

  @override
  Widget build(BuildContext context) {
    return ProductDetailsInformationCard.small(
      title: freezeDriedCoffee.coffeeType.title,
      icon: SvgPicture.asset(
        freezeDriedCoffee.coffeeType.imageUrl,
        colorFilter: ColorFilter.mode(
          context.themeOf().primaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
