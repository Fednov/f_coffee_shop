import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:f_coffee_shop/core/utils/constants/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../bloc/provider/product_details_state_provider.dart';

class ProductDetailsPrice extends ConsumerWidget {
  const ProductDetailsPrice({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = context.themeOf();
    var selectedSizeIndex = ref.watch(
      productDetailsStateProvider.select(
        (state) => state.selectedSizeIndex,
      ),
    );

    return RichText(
      text: TextSpan(
        style: theme.textTheme.titleLarge,
        children: [
          const TextSpan(
            text: AppConstantsString.currencyIcon,
            style: TextStyle(
              color: AppColors.orange,
            ),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: product.availableSizes.isNotEmpty
                ? product.availableSizes[selectedSizeIndex].price
                    .toStringAsFixed(2)
                : 'n/a',
          ),
        ],
      ),
    );
  }
}
