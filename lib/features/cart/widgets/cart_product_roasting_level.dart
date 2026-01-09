import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class CartProductRoastingLevel extends StatelessWidget {
  const CartProductRoastingLevel({
    super.key,
    required this.roastingLevel,
  });

  final String roastingLevel;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      height: 40,
      width: 118,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Text(
        roastingLevel,
        style: theme.textTheme.labelMedium?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
