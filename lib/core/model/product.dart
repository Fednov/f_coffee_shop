import 'package:f_coffee_shop/core/configs/assets/images.dart';
import 'package:f_coffee_shop/core/model/coffee_type.dart';

import 'coffee_category.dart';
import 'product_rate.dart';
import 'product_size.dart';

abstract class Product {
  final String name;
  final String imageUrl;
  final ProductRate rate;
  final String? subname;
  final String? description;
  final String? placeOfOrigin;
  final String roastingLevel;

  final CoffeeCategories? category;
  final List<ProductSize> availableSizes;
  const Product({
    required this.name,
    required this.imageUrl,
    required this.availableSizes,
    required this.roastingLevel,
    this.rate = const ProductRate(),
    this.subname,
    this.description,
    this.category,
    this.placeOfOrigin,
  });

  String get type;

  String get typeIconUrl;
}

class FreezeDriedCoffee extends Product {
  const FreezeDriedCoffee({
    required super.name,
    required super.imageUrl,
    required super.availableSizes,
    required super.category,
    required super.roastingLevel,
    required this.coffeeType,
    super.subname,
    super.description,
    super.rate,
  });

  final CoffeeType coffeeType;

  @override
  String get type => 'Coffee';

  @override
  String get typeIconUrl => AppAssetsImages.freezeDriedCoffeeIcon;
}

class CoffeeBeans extends Product {
  const CoffeeBeans({
    required super.name,
    required super.imageUrl,
    required super.availableSizes,
    required super.roastingLevel,
    super.subname,
    super.description,
    super.rate,
    super.placeOfOrigin,
  });

  @override
  String get type => 'Bean';

  @override
  String get typeIconUrl => AppAssetsImages.coffeeBeansIcon;
}
