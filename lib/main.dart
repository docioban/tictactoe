import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/screens/FirstScreen.dart';
import 'package:tic_tac_toe/screens/SecondScreen.dart';

import 'modules/Values.dart';

void main() {
  runApp(
    ChangeNotifierProvider.value(value: Values(), child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}
