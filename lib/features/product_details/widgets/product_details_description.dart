import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.description ?? '',
            style: context.themeOf().textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
