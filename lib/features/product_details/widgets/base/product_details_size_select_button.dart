import 'package:f_coffee_shop/core/extensions/buildcontext_extension.dart';
import 'package:f_coffee_shop/features/product_details/bloc/provider/product_details_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailsSizeSelectButton extends ConsumerWidget {
  const ProductDetailsSizeSelectButton({
    super.key,
    required this.title,
    required this.index,
    required this.isActive,
  });

  final String title;
  final int index;
  final bool isActive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = context.themeOf();

    return GestureDetector(
      onTap: () => ref
          .read(productDetailsStateProvider.notifier)
          .onSizeSelect(index: index),
      child: Container(
        height: 40,
        width: 100,
        // padding: const EdgeInsets.symmetric(vertical: 7),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: isActive
              ? Border.fromBorderSide(
                  BorderSide(
                    width: 2,
                    color: context.themeOf().primaryColor,
                  ),
                )
              : null,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyle(
              fontSize: title.length < 3 ? 16 : 12,
              fontWeight: FontWeight.w500,
              color: isActive
                  ? theme.primaryColor
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
