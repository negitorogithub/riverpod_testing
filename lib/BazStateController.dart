import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/BazState.dart';

class BazStateController extends StateNotifier<BazState> {
  ProviderReference ref;

  BazStateController({@required this.ref}) : super(BazState()) {
    print('bazStateController created');
  }
}
