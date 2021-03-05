import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
    );
  }
}
