import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_testing/BazStateController.dart';
import 'package:riverpod_testing/CounterStateController.dart';

void main() {
  runApp(MyApp());
}

final counterStateControllerProvider = StateNotifierProvider((ref) => CounterStateController());

StateNotifierProvider bazStateControllerProvider = StateNotifierProvider((ref) {
  print('watch in myStateControllerProvider: ${ref.watch(counterStateControllerProvider.state)}');
  return BazStateController(ref: ref);
});

Provider barProvider = Provider((ref) {
  print('watch in barProvider: ${ref.watch(counterStateControllerProvider.state)}');
});

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
    context.read(bazStateControllerProvider);
    context.read(barProvider);
    context.read(counterStateControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FlatButton(
            onPressed: () {
              context.read(counterStateControllerProvider).inc();
            },
            child: Text('incincinc'),
          ),
          FlatButton(
            onPressed: () {
              print('counterState: ${context.read(counterStateControllerProvider.state)}');
            },
            child: Text('printAll'),
          ),
        ],
      ),
    );
  }
}
