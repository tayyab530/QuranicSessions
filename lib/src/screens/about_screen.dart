import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = 'about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text('About'),),
    );
  }
}