import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/MyState.dart';
import 'package:riverpod_testing/main.dart';
import 'package:state_notifier/state_notifier.dart';

class MyStateController extends StateNotifier<MyState> {
  ProviderReference ref;

  MyStateController({@required this.ref}) : super(MyState()) {
    print('myStateController created');

    final b = ref.watch(fooStateControllerProvider);
    print('watch: $b');
    final a = ref.watch(fooStateControllerProvider.state);
    print('watch: $a');
    //print('watch: ${ref.watch(fooStateControllerProvider.state)}');
  }
}
