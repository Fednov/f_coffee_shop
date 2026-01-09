
import 'package:f_coffee_shop/core/temp_data/cart_product_list.dart';
import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:f_coffee_shop/features/cart/widgets/cart_product_card.dart';
import 'package:f_coffee_shop/features/home_page/widgets/home_screen_header.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.homePageHorizontalPadding,
            ),
            child: Column(
              children: [
                const HomeScreenHeader(
                  title: 'Cart',
                ),
                const SizedBox(
                  height: 11,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...CartProductList.list.map(
                          (element) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: 16,
                            ),
                            child: CartProductCard(product: element),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
