import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/product_details_state.dart';
import '../product_details_bloc.dart';

final productDetailsStateProvider =
    StateNotifierProvider.autoDispose<ProductDetailsBloc, ProductDetailsState>(
  (ref) => ProductDetailsBloc(),
);
