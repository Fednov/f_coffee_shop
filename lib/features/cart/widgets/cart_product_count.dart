import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class CartProductCount extends StatelessWidget {
  const CartProductCount({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      height: 30,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
        border: Border.fromBorderSide(
          BorderSide(
            width: 1,
            color: theme.primaryColor,
          ),
        ),
      ),
      child: Text(
        '1',
        style: theme.textTheme.titleMedium,
      ),
    );
  }
}
