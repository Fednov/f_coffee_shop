import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsProductName extends StatelessWidget {
  const ProductDetailsProductName({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            product.name,
            style: theme.textTheme.titleLarge,
            // style: const TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.w600,
            // ),
          ),
        ),
        Text(
          product.subname ?? '',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: AppColors.grey,
          ),

          // style: const TextStyle(
          //   fontSize: 12,
          //   fontWeight: FontWeight.w400,
          //   color: AppColors.grey,
          // ),
        ),
      ],
    );
  }
}
