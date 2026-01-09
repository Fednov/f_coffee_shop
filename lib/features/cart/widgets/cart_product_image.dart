import 'package:flutter/material.dart';

class CartProductImage extends StatelessWidget {
  const CartProductImage.large({
    super.key,
    required this.imageUrl,
    this.height = 126,
    this.width = 126,
  });

  const CartProductImage.small({
    super.key,
    required this.imageUrl,
    this.height = 108,
    this.width = 108,
  });

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
