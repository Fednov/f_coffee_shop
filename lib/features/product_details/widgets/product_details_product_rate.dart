import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/extensions/int_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsProductRate extends StatelessWidget {
  const ProductDetailsProductRate({
    super.key,
    required this.freezeDriedCoffee,
  });

  final Product freezeDriedCoffee;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          height: 22.29,
          width: 22.29,
          AppAssetsImages.rateStar,
        ),
        Text('${freezeDriedCoffee.rate.averageRatingScore}',
            style: theme.textTheme.titleMedium
            // ?.copyWith(fontWeight: FontWeight.w600),
            ),
        Text(
          '(${freezeDriedCoffee.rate.numberOfVotes.toStringThousandSeparated()})',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          // const TextStyle(
          //   fontSize: 10,
          //   fontWeight: FontWeight.w400,
          //   color: AppColors.grey,
          // ),
        ),
      ]
          .map(
            (element) => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: element,
            ),
          )
          .toList(),
    );
  }
}
