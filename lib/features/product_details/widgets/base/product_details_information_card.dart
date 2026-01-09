import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class ProductDetailsInformationCard extends StatelessWidget {
  const ProductDetailsInformationCard({
    super.key,
    required this.height,
    required this.width,
    this.textStyle,
    this.child,
    this.title,
    this.icon,
  });

  const ProductDetailsInformationCard.small({
    super.key,
    this.height = 55.71,
    this.width = 55.71,
    this.textStyle,
    this.child,
    this.title,
    this.icon,
  });

  final double height;
  final double width;
  final String? title;
  final Widget? icon;
  final TextStyle? textStyle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (icon != null) icon!,
          if (title != null)
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title!,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
