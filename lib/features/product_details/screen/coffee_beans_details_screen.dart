import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/app_dimensions.dart';
import 'package:f_coffee_shop/features/product_details/widgets/product_details_description.dart';
import 'package:f_coffee_shop/features/product_details/widgets/product_details_order_bar.dart';
import 'package:f_coffee_shop/features/product_details/widgets/product_details_sizes.dart';

import 'package:flutter/material.dart';

import '../widgets/product_details_header.dart';
import '../widgets/product_details_image.dart';
import '../widgets/product_details_main_information_coffee_beans.dart';

class CoffeBeansDetailsScreen extends StatelessWidget {
  const CoffeBeansDetailsScreen({
    super.key,
    required this.coffeeBeans,
  });

  final CoffeeBeans coffeeBeans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProductDetailsHeader(),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 521.0,
                        child: Stack(
                          children: [
                            ProductDetailsImage(
                              product: coffeeBeans,
                            ),
                            SafeArea(
                              bottom: false,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ProductDetailsMainInformationCoffeBeans(
                                    coffeeBeans: coffeeBeans,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProductDetailsDescription(product: coffeeBeans),
                      const SizedBox(
                        height: 27,
                      ),
                      ProductDetailsSizes(product: coffeeBeans),
                      const SizedBox(
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.productDetailsHorizontalPadding,
              ),
              child: ProductDetailsOrderBar(
                product: coffeeBeans,
              ),
            )
          ],
        ),
      ),
    );
  }
}
