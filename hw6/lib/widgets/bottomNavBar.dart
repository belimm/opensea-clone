import 'package:flutter/material.dart';
import 'package:hw6/homePage.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int choosenIndex = 3;

    final bottomNavBarItem =  const[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Ranking"),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
    ];

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: bottomNavBarItem,
      currentIndex: choosenIndex,
      
    );
  }
}
