import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

import 'FooState.dart';

class FooStateController extends StateNotifier<FooState> {
  ProviderReference ref;

  FooStateController({@required this.ref}) : super(FooState()) {
    print('fooStateController created');
  }

  void inc() {
    state = state.copyWith.call(fooCount: state.fooCount + 1);
  }
}
