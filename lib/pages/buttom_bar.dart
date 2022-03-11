import 'package:flutter/material.dart';
import 'package:myapp/pages/collection_page.dart';

import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/logout_page.dart';
import 'package:myapp/pages/notification_page.dart';
import 'package:myapp/pages/profile_page.dart';

class ButtomBar extends StatefulWidget {
  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int currentIndex = 0;
  final Screens = [
    HomePage(),
    CollectionPage(),
    ProfilePage(),
    NotificationPage(),
    LogOutPage(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'Collection',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout_sharp),
              label: 'Log Out',
              //backgroundColor: Colors.blue,
            ),
          ],
        ),
      );
}
