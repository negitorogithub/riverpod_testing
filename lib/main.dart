import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/FooStateController.dart';
import 'package:riverpod_testing/MyStateController.dart';

void main() {
  runApp(MyApp());
}

StateNotifierProvider myStateControllerProvider = StateNotifierProvider((ref) {
  print('watch in myStateControllerProvider: ${ref.watch(fooStateControllerProvider.state)}');
  return MyStateController(ref: ref);
});

Provider barProvider = Provider((ref) {
  print('watch in barProvider: ${ref.watch(fooStateControllerProvider.state)}');
});

final fooStateControllerProvider = StateNotifierProvider((ref) => FooStateController());

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
    // initialize
    context.read(myStateControllerProvider);
    context.read(barProvider);
    context.read(fooStateControllerProvider);

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
              print('fooState: ${context.read(fooStateControllerProvider.state)}');
            },
            child: Text('printAll'),
          ),
        ],
      ),
    );
  }
}
