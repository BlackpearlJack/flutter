import 'package:flutter/material.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter/medlink_app/lib/ui/screens/consults.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter/medlink_app/lib/ui/screens/home_screen.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter/medlink_app/lib/ui/screens/more.dart';
import 'package:medlink_app/components/constants.dart';


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
        backgroundColor: kBlackColor,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: kPrimaryColor,
              icon: Icon(Icons.home),
              title: Text('Home',),
            ),
            BottomNavigationBarItem(
              backgroundColor: kPrimaryColor,
              icon: Icon(Icons.list_alt_outlined),
              title: Text('My Consults'),
            ),
            BottomNavigationBarItem(
              backgroundColor: kPrimaryColor,
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
