import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.limeAccent,
      ),
      title: 'Quranic Session',
      home: MainScreen(),
    );
  }
}