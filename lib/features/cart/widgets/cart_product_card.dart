import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/features/product_details/screen/product_details_screen.dart';
import 'package:flutter/material.dart';

import 'cart_long_product_card.dart';
import 'cart_short_product_card.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
            product: product,
          ),
        ),
      ),
      child: product.availableSizes.length <= 1
          ? CartShortProductCard(
              product: product,
            )
          : CartLongProductCard(
              product: product,
            ),
    );
  }
}
