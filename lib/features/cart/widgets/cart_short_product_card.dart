import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/widgets/app_small_button.dart';
import 'package:f_coffee_shop/features/cart/widgets/cart_product_count.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import 'cart_product_image.dart';
import 'cart_product_price.dart';
import 'cart_product_size.dart';

class CartShortProductCard extends StatelessWidget {
  const CartShortProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(23),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.surfaceContainer,
            theme.colorScheme.surfaceContainer.withOpacity(0),
          ],
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartProductImage.large(
              imageUrl: product.imageUrl,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: _ProductDetails(product: product),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ProductTitle(
          product: product,
        ),
        const SizedBox(height: 8),
        _ProductSizeAndPrice(
          product: product,
        ),
        const SizedBox(height: 9),
        const _ProductCountSelect(),
      ],
    );
  }
}

class _ProductTitle extends StatelessWidget {
  const _ProductTitle({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ProductName(
          productName: product.name,
        ),
        const SizedBox(
          height: 3,
        ),
        _ProductSubname(
          productSubname: product.subname ?? '',
        ),
      ],
    );
  }
}

class _ProductSizeAndPrice extends StatelessWidget {
  const _ProductSizeAndPrice({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartProductSize(productSize: product.availableSizes[0].title),
        const SizedBox(
          width: 22,
        ),
        CartProductPrice(
          price: product.availableSizes[0].price.toStringAsFixed(2),
        ),
      ],
    );
  }
}

class _ProductCountSelect extends StatelessWidget {
  const _ProductCountSelect();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSmallButton(
          icon: CupertinoIcons.minus,
          onPressed: () {},
        ),
        const SizedBox(
          width: 25,
        ),
        const CartProductCount(count: 1),
        const SizedBox(
          width: 25,
        ),
        AppSmallButton(
          icon: Icons.add,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({required this.productName});

  final String productName;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Text(
      productName,
      style: theme.textTheme.titleLarge?.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _ProductSubname extends StatelessWidget {
  const _ProductSubname({required this.productSubname});

  final String productSubname;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Text(
      productSubname,
      style: theme.textTheme.bodySmall?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
      ),
    );
  }
}
