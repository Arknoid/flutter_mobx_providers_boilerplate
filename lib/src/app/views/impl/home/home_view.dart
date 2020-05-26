import 'package:flutter/material.dart';
import '../../../widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: CounterInfo(),
        floatingActionButton: IncrementFloatingActionButton());
  }
}