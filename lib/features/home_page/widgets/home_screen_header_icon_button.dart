import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class HomeScreenHeaderIconButton extends StatelessWidget {
  const HomeScreenHeaderIconButton({super.key, 
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();
    var buttonSize = 30.0;
    var borderRadius = 10.0;

    return Container(
      height: buttonSize,
      width: buttonSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          width: 1,
          color: theme.colorScheme.surfaceContainerLow,
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            theme.colorScheme.surfaceContainerLow,
            theme.colorScheme.surfaceContainerLow.withOpacity(0)
          ],
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          size: 14,
          color: const Color(0xffFFFFFF).withOpacity(0.18),
          icon,
        ),
      ),
    );
  }
}