import 'package:flutter/material.dart';

import '../widgets/fliters.dart';
import '../widgets/my_session_list.dart';
import '../widgets/app_drawer.dart';
import '../widgets/session_grid.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _tabsScreens = [];
  @override
  void initState() {
    super.initState();
    _tabsScreens = [
      SessionsGrid(FiltersEnum.All),
      MySessionList(),
    ];
  }

  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(_selectedTab == 0 ? 'Available Sessions' : 'Your Session'),
        actions: [
          _selectedTab == 0 ? Filters(applyFilters) : Container(),
        ],
      ),
      body: _tabsScreens[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_available_rounded),
              label: 'Live Sessions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: 'Your Sessions'),
        ],
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        currentIndex: _selectedTab,
        backgroundColor: Theme.of(context).accentColor,
        selectedItemColor: Colors.blue[400],
      ),
    );
  }

  void applyFilters(FiltersEnum f) {
    setState(
      () {
        _tabsScreens = [
          SessionsGrid(f),
          MySessionList(),
        ];
      },
    );
  }
}
