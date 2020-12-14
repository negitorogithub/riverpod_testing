import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/MyState.dart';

class MyStateController extends StateNotifier<MyState> {
  ProviderReference ref;

  MyStateController({@required this.ref}) : super(MyState()) {
    print('myStateController created');
  }
}
