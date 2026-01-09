import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import 'base/product_details_icon_button.dart';

class ProductDetailsFavoriteButton extends StatelessWidget {
  const ProductDetailsFavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDetailsIconButton(
      icon: const Icon(
        CupertinoIcons.heart_fill,
        color: AppColors.red,
        size: 17.83,
      ),
      onTap: () {},
    );
  }
}
