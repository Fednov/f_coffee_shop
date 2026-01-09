import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/widgets/app_small_button.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

import 'cart_product_image.dart';
import 'cart_product_size.dart';
import 'cart_product_count.dart';
import 'cart_product_price.dart';
import 'cart_product_roasting_level.dart';

class CartLongProductCard extends StatelessWidget {
  const CartLongProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.fromLTRB(12, 9, 17, 7),
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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartProductImage.small(imageUrl: product.imageUrl),
              const SizedBox(width: 22),
              Expanded(
                child: _ProductDetails(product: product),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _ProductSizes(
            product: product,
          ),
        ],
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3),
        _ProductName(
          productName: product.name,
        ),
        const SizedBox(height: 3),
        _ProductSubname(
          productSubname: product.subname ?? '',
        ),
        const SizedBox(height: 10),
        CartProductRoastingLevel(
          roastingLevel: product.roastingLevel,
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

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        productName,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w400,
        ),
        overflow: TextOverflow.ellipsis,
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
      style: theme.textTheme.bodyMedium?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
      ),
    );
  }
}

class _ProductSizes extends StatelessWidget {
  const _ProductSizes({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...product.availableSizes.map(
        (element) => Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: _ProductOrderBar(
            productSize: element.title,
            price: element.price.toStringAsFixed(2),
            count: 1,
          ),
        ),
      ),
    ]);
  }
}

class _ProductOrderBar extends StatelessWidget {
  const _ProductOrderBar({
    required this.productSize,
    required this.price,
    required this.count,
  });

  final String productSize;
  final String price;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartProductSize(productSize: productSize),
        CartProductPrice(price: price),
        AppSmallButton(
          icon: CupertinoIcons.minus,
          onPressed: () {},
        ),
        CartProductCount(
          count: count,
        ),
        AppSmallButton(
          icon: Icons.add,
          onPressed: () {},
        ),
      ],
    );
  }
}
