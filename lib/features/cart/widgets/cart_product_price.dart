import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:f_coffee_shop/core/utils/constants/string.dart';
import 'package:flutter/material.dart';

class CartProductPrice extends StatelessWidget {
  const CartProductPrice({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return RichText(
      text: TextSpan(
        style: theme.textTheme.titleMedium,
        children: [
          const TextSpan(
            text: AppConstantsString.currencyIcon,
            style: TextStyle(color: AppColors.orange),
          ),
          const TextSpan(text: ' '),
          TextSpan(text: price),
        ],
      ),
    );
  }
}
