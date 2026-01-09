import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class AppSmallButton extends StatelessWidget {
  const AppSmallButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 28.44,
        width: 28.44,
        decoration: BoxDecoration(
          color: context.themeOf().primaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Icon(
          size: 16,
          weight: 1.5,
          icon,
        ),
      ),
    );
  }
}
