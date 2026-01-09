import 'package:f_coffee_shop/features/product_details/widgets/base/product_details_icon_button.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

class ProductDetailsBackButton extends StatelessWidget {
  const ProductDetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    return ProductDetailsIconButton(
      icon: const Icon(
        CupertinoIcons.back,
        color: Color(0xff52555A),
      ),
      onTap: () => navigator.canPop() ? navigator.pop() : () {},
    );
  }
}
