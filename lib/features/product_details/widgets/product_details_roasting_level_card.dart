import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';

import 'base/product_details_information_card.dart';

class ProductDetailsRoastingLevelCard extends StatelessWidget {
  const ProductDetailsRoastingLevelCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ProductDetailsInformationCard(
      height: 44.57,
      width: 131.49,
      title: product.roastingLevel,
    );
  }
}
