import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../../stores/stores.dart';

class CounterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          // Wrapping in the Observer will automatically re-render on changes to counter.value
          Observer(
            builder: (_) => Text(
              '${Provider.of<Counter>(context).value}',
              style: Theme.of(context).textTheme.display1,
            ),
          )
        ],
      ),
    );
  }
}
