import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import 'home_screen_header_icon_button.dart';

class HomeScreenHeader extends StatelessWidget implements PreferredSize {
  const HomeScreenHeader({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeScreenHeaderIconButton(
          icon: CupertinoIcons.square_grid_2x2_fill,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        if (title != null)
          Text(
            title!,
            style: theme.textTheme.titleLarge,
          ),
        HomeScreenHeaderIconButton(
          icon: Icons.account_circle_outlined,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
