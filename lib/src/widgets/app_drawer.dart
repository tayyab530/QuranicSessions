import 'package:flutter/material.dart';
import 'package:quranic_session/src/screens/main_screen.dart';

import '../screens/about_screen.dart';
import '../screens/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Hooo!'),
        ),
        body: Column(
          children: [
            buildDrawerTile(Icons.home_rounded,'Home',MainScreen.routeName,context),
            buildDrawerTile(Icons.settings_rounded, 'Settings',SettingsScreen.routeName,context),
            buildDrawerTile(Icons.details_rounded, 'About',AboutScreen.routeName,context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerTile(IconData icon, String title,String routeName,BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => goto(routeName,context),
    );
  }

  goto(String routeName,BuildContext context){
    Navigator.of(context).pushReplacementNamed(routeName);
  }
}
