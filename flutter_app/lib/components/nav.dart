import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/consults.dart';
import 'package:flutter_app/Screens/more.dart';

import '../Screens/home_screen.dart';


class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget>_widgetOptions = <Widget>[
    Home(),
    Consults(),
    More(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.tealAccent,
              icon: Icon(Icons.home),
              title: Text('Home',),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.tealAccent,
              icon: Icon(Icons.list_alt_outlined),
              title: Text('My Consults'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.tealAccent,
              icon: Icon(Icons.add),
              title: Text('More'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
