import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/infoScreen.dart';
import 'package:flutter_covid_dashboard_ui/screens/phone_number.dart';
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List screens = [
    HomeScreen(),
    StatsScreen(),
    PhoneNumber(),
    InfoScreen(),
   
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
     
     
        index: 0,
        height: 50.0,

        items: <Widget>[  
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.insert_chart, size: 30, color: Colors.white),
          Icon(Icons.event_note, size: 30, color: Colors.white,),
           Icon(Icons.info, size: 30,color: Colors.white),
        ],

        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex= index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
