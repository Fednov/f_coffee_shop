import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/main_page_state.dart';
import '../main_page_bloc.dart';

final mainPageStateProvider =
    StateNotifierProvider<MainPageBloc, MainPageState>(
  (ref) => MainPageBloc(),
);
