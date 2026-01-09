import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/product_details_state.dart';

class ProductDetailsBloc extends StateNotifier<ProductDetailsState> {
  ProductDetailsBloc() : super(ProductDetailsState());

  void onSizeSelect({required int index}) {
    state = state.copyWith(selectedSizeIndex: index);
  }
}
