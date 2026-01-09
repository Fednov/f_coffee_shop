import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';

import 'product_details_coffee_type_card.dart';
import 'product_details_product_name.dart';
import 'product_details_product_rate.dart';
import 'product_details_product_type_card.dart';
import 'product_details_roasting_level_card.dart';
import 'product_details_blur_card_background.dart';

class ProductDetailsMainInformationFreezeDriedCoffee extends StatelessWidget {
  const ProductDetailsMainInformationFreezeDriedCoffee({
    super.key,
    required this.freezeDriedCoffee,
  });

  final FreezeDriedCoffee freezeDriedCoffee;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148.2,
      child: Stack(
        children: [
          const ProductDetailsBlurCardBackground(),
          _ProductInformation(
            freezeDriedCoffee: freezeDriedCoffee,
          ),
        ],
      ),
    );
  }
}

class _ProductInformation extends StatelessWidget {
  const _ProductInformation({
    required this.freezeDriedCoffee,
  });

  final Product freezeDriedCoffee;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.94, bottom: 15.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductDetailsProductName(
                  product: freezeDriedCoffee,
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProductDetailsProductTypeCard(product: freezeDriedCoffee),
                    const SizedBox(width: 20),
                    ProductDetailsCoffeeTypeCard(
                      freezeDriedCoffee: freezeDriedCoffee as FreezeDriedCoffee,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductDetailsProductRate(
                freezeDriedCoffee: freezeDriedCoffee,
              ),
              ProductDetailsRoastingLevelCard(
                product: freezeDriedCoffee,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
