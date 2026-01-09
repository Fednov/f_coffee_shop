import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/features/product_details/widgets/base/product_details_size_select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../bloc/provider/product_details_state_provider.dart';

class ProductDetailsSizes extends ConsumerWidget {
  const ProductDetailsSizes({
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 10,
            children: [
              ...product.availableSizes.map(
                (element) => ProductDetailsSizeSelectButton(
                  title: element.title,
                  index: product.availableSizes.indexOf(element),
                  isActive: product.availableSizes.indexOf(element) ==
                      selectedSizeIndex,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
