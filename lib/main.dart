import 'package:f_coffee_shop/core/app/coffee_shop_figma.dart';
import 'package:f_coffee_shop/core/utils/system_functions/app_system_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSystemFunctions.adjustSystemUiOverlay();
  runApp(
    const ProviderScope(
      child: FCoffeeShop(),
    ),
  );
}
