import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:flutter/material.dart';

import 'product_details_back_button.dart';
import 'product_details_favorite_button.dart';

class ProductDetailsHeader extends StatelessWidget implements PreferredSize {
  const ProductDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: AppDimensions.productDetailsHorizontalPadding,
      title: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProductDetailsBackButton(),
          ProductDetailsFavoriteButton(),
        ],
      ),
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
