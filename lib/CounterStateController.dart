import 'package:flutter_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

import 'CounterState.dart';

class CounterStateController extends StateNotifier<CounterState> {
  CounterStateController() : super(CounterState());

  void inc() {
    state = state.copyWith.call(count: state.count + 1);
  }
}
