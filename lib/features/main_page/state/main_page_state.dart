import 'package:f_coffee_shop/core/model/coffee_category.dart';

class MainPageState {
  MainPageState({
    this.selectedCoffeeCategory = CoffeeCategories.allCoffee,
  });

  final CoffeeCategories selectedCoffeeCategory;

  MainPageState copyWith({
    CoffeeCategories? selectedCoffeeCategory,
  }) {
    return MainPageState(
      selectedCoffeeCategory:
          selectedCoffeeCategory ?? this.selectedCoffeeCategory,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MainPageState &&
        other.selectedCoffeeCategory == selectedCoffeeCategory;
  }

  @override
  int get hashCode => selectedCoffeeCategory.hashCode;

  @override
  String toString() =>
      'MainPageState(selectedCoffeeCategory: $selectedCoffeeCategory)';
}
