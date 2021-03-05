import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/session_provider.dart';
import 'screens/about_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => Session(),
          child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.limeAccent,
        ),
        title: 'Quranic Session',
        // home: MainScreen(),
        routes: {
          MainScreen.routeName: (ctx) => MainScreen(),
          SettingsScreen.routeName: (ctx)=> SettingsScreen(),
          AboutScreen.routeName: (ctx)=> AboutScreen(),
        },
      ),
    );
  }
}