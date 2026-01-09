import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';

import 'product_details_place_of_origin_card.dart';
import 'product_details_product_name.dart';
import 'product_details_product_rate.dart';
import 'product_details_product_type_card.dart';
import 'product_details_roasting_level_card.dart';
import 'product_details_blur_card_background.dart';

class ProductDetailsMainInformationCoffeBeans extends StatelessWidget {
  const ProductDetailsMainInformationCoffeBeans({
    super.key,
    required this.coffeeBeans,
  });

  final CoffeeBeans coffeeBeans;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 148.2,
      child: Stack(
        children: [
          const ProductDetailsBlurCardBackground(),
          _ProductInformation(
            coffeeBeans: coffeeBeans,
          ),
        ],
      ),
    );
  }
}

class _ProductInformation extends StatelessWidget {
  const _ProductInformation({
    required this.coffeeBeans,
  });

  final CoffeeBeans coffeeBeans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.94, bottom: 15.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ProductDetailsProductName(
                  product: coffeeBeans,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductDetailsProductTypeCard(product: coffeeBeans),
                  const SizedBox(width: 20),
                  ProductDetailsPlaceOfOriginCard(
                    coffeeBeans: coffeeBeans,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductDetailsProductRate(
                freezeDriedCoffee: coffeeBeans,
              ),
              ProductDetailsRoastingLevelCard(
                product: coffeeBeans,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
