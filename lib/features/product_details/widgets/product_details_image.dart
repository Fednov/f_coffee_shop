import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/widgets/app_ignore_padding_box.dart';
import 'package:flutter/material.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return AppIgnorePaddingBox(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(product.imageUrl),
          ),
        ),
      ),
    );
  }
}
