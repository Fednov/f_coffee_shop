import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/core/model/product.dart';
import 'package:f_coffee_shop/core/ui/theme/app_colors.dart';
import 'package:f_coffee_shop/core/utils/constants/string.dart';
import 'package:f_coffee_shop/features/product_details/screen/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPageProductCard extends StatelessWidget {
  const MainPageProductCard({
    super.key,
    required this.product,
    this.isRateDisplay = true,
  });

  final Product product;
  final bool isRateDisplay;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
            product: product,
          ),
        ),
      ),
      child: Container(
        height: 245.68,
        width: 149,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              theme.colorScheme.surfaceContainer,
              theme.colorScheme.surfaceContainer.withOpacity(0),
            ],
          ),
          borderRadius: BorderRadius.circular(
            23,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProductImage(
              product: product,
              isRateDisplay: isRateDisplay,
            ),
            const SizedBox(height: 10),
            _ProductName(
              product: product,
            ),
            const SizedBox(height: 10),
            _ProductOrderBar(
              product: product,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    required this.product,
    this.isRateDisplay = true,
  });

  final Product product;
  final bool isRateDisplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      width: 136,
      alignment: Alignment.topRight,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(product.imageUrl),
        ),
      ),
      child: (isRateDisplay)
          ? _ProductRate(
              product: product,
            )
          : null,
    );
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.name,
          style: theme.textTheme.bodyLarge
              ?.copyWith(fontSize: 13, letterSpacing: 0.4),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 3.75,
        ),
        Text(
          product.subname ?? '',
          style: theme.textTheme.bodySmall,
        )
      ],
    );
  }
}

class _ProductRate extends StatelessWidget {
  const _ProductRate({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2.47.h,
      // width: 13.6.w,
      height: 22,
      width: 53,
      decoration: BoxDecoration(
        color: const Color(0xff000000).withOpacity(0.6),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(26), //40
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const _RateIcon(),
          const SizedBox(
            width: 5,
          ),
          _RateText(
            product: product,
          )
        ],
      ),
    );
  }
}

class _RateText extends StatelessWidget {
  const _RateText({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return Text(
      '${product.rate.averageRatingScore}',
      style: theme.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _RateIcon extends StatelessWidget {
  const _RateIcon();

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      colorFilter: const ColorFilter.mode(
        AppColors.orange,
        BlendMode.srcIn,
      ),
      height: 10,
      width: 10,
      AppAssetsImages.rateStar,
    );
  }
}

class _ProductOrderBar extends StatelessWidget {
  const _ProductOrderBar({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ProductPrice(
          product: product,
        ),
        const _AddToCartButton(),
      ],
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  const _AddToCartButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.44,
      width: 28.44,
      decoration: BoxDecoration(
        color: context.themeOf().primaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: const Icon(
        size: 16,
        weight: 1.5,
        Icons.add,
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var theme = context.themeOf();

    return RichText(
      text: TextSpan(
        style: theme.textTheme.titleMedium?.copyWith(fontSize: 15),
        children: [
          TextSpan(
              text: AppConstantsString.currencyIcon,
              style: TextStyle(
                color: context.themeOf().primaryColor,
              )),
          const TextSpan(text: ' '),
          TextSpan(
            text: product.availableSizes.isNotEmpty
                ? product.availableSizes[0].price.toStringAsFixed(2)
                : '',
          ),
        ],
      ),
    );
  }
}
