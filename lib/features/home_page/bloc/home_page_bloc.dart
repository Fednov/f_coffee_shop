import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/home_page_state.dart';

class HomePageBloc extends StateNotifier<HomePageState> {
  HomePageBloc() : super(HomePageState());

  void onSelectedPageIndexChanged({required int index}) {
    state = state.copyWith(selectedPageIndex: index);
  }
}
