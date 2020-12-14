import 'package:flutter_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

import 'FooState.dart';

class FooStateController extends StateNotifier<FooState> {
  FooStateController() : super(FooState());

  void inc() {
    state = state.copyWith.call(count: state.count + 1);
  }
}
