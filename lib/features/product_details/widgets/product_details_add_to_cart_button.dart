import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 240,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          'Add to Cart',
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}