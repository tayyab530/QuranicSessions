import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _tabsScreens = [
    Container(
      child: Text('Session Screen'),
    ),
    Container(
      child: Text('Favourite Screen'),
    ),
  ];

  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedTab == 0 ? 'Available Sessions': 'Your Session'),
      ),
      body: _tabsScreens[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.event_available_rounded),label: 'Live Sessions' ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),label: 'Your Sessions'),
        ],
        onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          
        },
        currentIndex: _selectedTab,
      ),
    );
  }
}
