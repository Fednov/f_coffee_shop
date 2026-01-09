import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'base/product_details_information_card.dart';

class ProductDetailsProductTypeCard extends StatelessWidget {
  const ProductDetailsProductTypeCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    // var widgetSize = 55.71;

    return ProductDetailsInformationCard.small(
      // height: widgetSize,
      // width: widgetSize,
      title: product.type,
      icon: SvgPicture.asset(
        product.typeIconUrl,
        colorFilter: ColorFilter.mode(
          context.themeOf().primaryColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
