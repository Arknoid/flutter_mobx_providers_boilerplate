import 'package:flutter/material.dart';
import 'package:mobxTest/src/providers/stores.dart';
import 'package:mobxTest/src/widgets/CounterInfo.dart';
import 'package:mobxTest/src/widgets/increment_button.dart';
import 'src/stores/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoresProvider(
      child: MaterialApp(
        title: 'Learning App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();
  @override
  Widget build(BuildContext context) {
    final counter = Counter();
    return Scaffold(
        appBar: AppBar(
          title: Text('Learning App'),
        ),
        body: CounterInfo(),
        floatingActionButton: IncrementFloatingActionButton());
  }
}
