import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:f_coffee_shop/core/ui/widgets/app_ignore_padding_box.dart';
import 'package:f_coffee_shop/features/main_page/widgets/main_page_product_card.dart';
import 'package:flutter/material.dart';

class MainPageProductSection extends StatelessWidget {
  const MainPageProductSection({
    super.key,
    required this.products,
    this.title,
    this.isRateDisplay = true,
  });

  final List<Product> products;
  final String? title;
  final bool isRateDisplay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) _SectionTitle(title: title!),
        AppIgnorePaddingBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: AppDimensions.homePageHorizontalPadding,
                ),
                ...products.map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: MainPageProductCard(
                      product: element,
                      isRateDisplay: isRateDisplay,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context
              .textThemeOf()
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 19,
        ),
      ],
    );
  }
}
