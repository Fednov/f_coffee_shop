import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/material.dart';

class MainPageHeadlineText extends StatelessWidget {
  const MainPageHeadlineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find the best\ncoffee for you',
      style: context.textThemeOf().headlineMedium,
    );
  }
}
