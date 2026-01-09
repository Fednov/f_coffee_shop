import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'base/product_details_information_card.dart';

class ProductDetailsPlaceOfOriginCard extends StatelessWidget {
  const ProductDetailsPlaceOfOriginCard({
    super.key,
    required this.coffeeBeans,
  });

  final CoffeeBeans coffeeBeans;

  @override
  Widget build(BuildContext context) {
    return ProductDetailsInformationCard.small(
      title: coffeeBeans.placeOfOrigin,
      icon: SvgPicture.asset(
        AppAssetsImages.locationIcon,
        colorFilter: ColorFilter.mode(
          context.themeOf().primaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
