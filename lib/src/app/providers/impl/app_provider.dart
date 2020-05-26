import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../stores/stores.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  AppProvider({@required this.child});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(
          value: Counter(),
        ),
      ],
      child: child,
    );
  }
}
