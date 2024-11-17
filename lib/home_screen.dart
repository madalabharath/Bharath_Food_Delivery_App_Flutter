import 'package:flutter/material.dart';
import 'MenuScreen.dart';
import 'OrdersScreen.dart';
import 'ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Track the selected tab index
  int _selectedIndex = 1; // Start with OrdersScreen as default (index 1)

  // Define the list of screens to navigate between
  static final List<Widget> _widgetOptions = <Widget>[
    MenuScreen(),         // Menu screen at index 0
    OrdersScreen(),       // Orders screen at index 1 (default)
    ProfileScreen(),      // Profile screen at index 2
  ];

  // Callback to change the selected index and update the screen
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex), // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,  // Reflect the current index in the BottomNavigationBar
        selectedItemColor: Colors.pink, // Highlight selected item with pink color
        onTap: _onItemTapped,          // Update screen based on tab selection
      ),
    );
  }
}
