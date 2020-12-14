import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/FooStateController.dart';
import 'package:riverpod_testing/MyStateController.dart';

void main() {
  runApp(MyApp());
}

StateNotifierProvider myStateControllerProvider = StateNotifierProvider((ref) {
  final a = ref.watch(fooStateControllerProvider.state);
  print('watch: $a');
  return MyStateController(ref: ref);
});

final fooStateControllerProvider =
    StateNotifierProvider((ref) => FooStateController(ref: ref));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read(myStateControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FlatButton(
            onPressed: () {
              context.read(fooStateControllerProvider).inc();
            },
            child: Text('incincinc'),
          ),
          FlatButton(
            onPressed: () {
              print(
                  'myState: ${context.read(myStateControllerProvider.state)}');
              print(
                  'fooState: ${context.read(fooStateControllerProvider.state)}');
            },
            child: Text('printAll'),
          ),
        ],
      ),
    );
  }
}
