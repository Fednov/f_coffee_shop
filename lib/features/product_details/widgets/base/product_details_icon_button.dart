import 'package:flutter/material.dart';

class ProductDetailsIconButton extends StatelessWidget {
  const ProductDetailsIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final Icon icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    var widgetSize = 33.43;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: widgetSize,
        width: widgetSize,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          // color: Color(0xff21262E),
          gradient: LinearGradient(
            colors: [
              Color(0xff21262E),
              Color(0xff0C0F14),
            ],
          ),
          border: Border.fromBorderSide(
            BorderSide(
              width: 1.0,
              color: Color(0xff21262E),
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: icon,
      ),
    );
  }
}
