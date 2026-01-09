import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../bloc/provider/home_page_state_provider.dart';

class HomePageScreenBottomNavigationBar extends ConsumerWidget {
  const HomePageScreenBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = context.themeOf();
    var selectedIndex = ref.watch(
      homePageStateProvider.select(
        (state) => state.selectedPageIndex,
      ),
    );

    return BottomNavigationBar(
        selectedItemColor: theme.primaryColor,
        currentIndex: selectedIndex,
        onTap: (value) => ref
            .read(homePageStateProvider.notifier)
            .onSelectedPageIndexChanged(index: value),
        items: const [
          BottomNavigationBarItem(
            label: 'Main page',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Order history',
            icon: Icon(CupertinoIcons.bell_fill),
          ),
        ]);
  }
}
