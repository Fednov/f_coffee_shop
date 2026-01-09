import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class AppLargeButton extends StatelessWidget {
  const AppLargeButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();
    return GestureDetector(
      onTap: onPressed,
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
          title,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
