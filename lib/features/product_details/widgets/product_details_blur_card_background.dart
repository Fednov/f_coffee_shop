import 'package:f_coffee_shop/core/ui/widgets/app_ignore_padding_box.dart';
import 'package:flutter/material.dart';

class ProductDetailsBlurCardBackground extends StatelessWidget {
  const ProductDetailsBlurCardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return AppIgnorePaddingBox(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff000000).withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
