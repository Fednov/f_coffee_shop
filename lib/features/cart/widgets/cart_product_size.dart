import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

import 'cart_product_size_text.dart';

class CartProductSize extends StatelessWidget {
  const CartProductSize({
    super.key,
    required this.productSize,
  });

  final String productSize;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      height: 35,
      width: 72,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: CartProductSizeText(
        productSize: productSize,
      ),
    );
  }
}
