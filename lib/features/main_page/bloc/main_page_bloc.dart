import 'package:f_coffee_shop/core/model/coffee_category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/main_page_state.dart';

class MainPageBloc extends StateNotifier<MainPageState> {
  MainPageBloc() : super(MainPageState());

  void onCoffeeCategorySelect({
    required CoffeeCategories coffeeCategory,
  }) {
    state = state.copyWith(
      selectedCoffeeCategory: coffeeCategory,
    );
  }
}
