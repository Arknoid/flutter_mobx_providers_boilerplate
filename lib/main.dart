import 'package:flutter/material.dart';
import 'src/app/providers/providers.dart';
import 'src/utils/impl/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        title: 'Boilerplate',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: Routes.homeViewRoute,
        onGenerateRoute: Router().onGenerateRoute,
      ),
    );
  }
}


