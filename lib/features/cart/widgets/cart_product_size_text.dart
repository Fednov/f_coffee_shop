import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class CartProductSizeText extends StatelessWidget {
  const CartProductSizeText({
    super.key,
    required this.productSize,
  });

  final String productSize;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Text(
      productSize,
      style: productSize.length < 3
          ? theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
            )
          : theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
    );
  }
}
