import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state/home_page_state.dart';
import '../home_page_bloc.dart';

final homePageStateProvider =
    StateNotifierProvider<HomePageBloc, HomePageState>((ref) => HomePageBloc());
