import 'package:f_coffee_shop/features/cart/screen/cart_screen.dart';
import 'package:f_coffee_shop/features/home_page/bloc/provider/home_page_state_provider.dart';
import 'package:f_coffee_shop/features/main_page/screen/main_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_screen_bottom_navigation_bar.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageScreenBody(),
      bottomNavigationBar: HomePageScreenBottomNavigationBar(),
    );
  }
}

class _HomePageScreenBody extends ConsumerWidget {
  const _HomePageScreenBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedPageIndex = ref.watch(
      homePageStateProvider.select(
        (state) => state.selectedPageIndex,
      ),
    );

    switch (selectedPageIndex) {
      case 0:
        return const MainPageScreen();
      case 1:
        return const CartScreen();
      default:
        return Container();
    }
  }
}
