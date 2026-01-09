import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';

import 'product_details_add_to_cart_button.dart';
import 'product_details_price.dart';

class ProductDetailsOrderBar extends StatelessWidget {
  const ProductDetailsOrderBar({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Price',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            ProductDetailsPrice(product: product)
          ],
        ),
        const AddToCartButton(),
      ],
    );
  }
}
