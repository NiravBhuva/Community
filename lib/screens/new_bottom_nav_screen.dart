import 'package:community/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import 'camera_screen.dart';

class NewBottomNavScreen extends StatefulWidget {
  @override
  _NewBottomNavScreenState createState() => _NewBottomNavScreenState();
}

class _NewBottomNavScreenState extends State<NewBottomNavScreen> {
  int currentTab = 4;
  List<Widget> screens = [
    SettingsScreen(),
    SettingsScreen(),
    CameraScreen(),
    SettingsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      body: screens[currentTab],
    );
  }

  _bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: currentTab,
      onTap: (tab) {
        setState(() {
          currentTab = tab;
        });
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(fontSize: 10),
      items: [
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive('assets/newspaper.png'),
          icon: _bottomNavIcon('assets/newspaper.png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(''),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive('assets/magnifying-glass (4).png'),
          icon: _bottomNavIcon('assets/magnifying-glass (4).png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(''),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive(
              'assets/read-more-left-arrow-button (1).png'),
          icon: _bottomNavIcon('assets/read-more-left-arrow-button (1).png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(''),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive(
              'assets/read-more-left-arrow-button (1).png'),
          icon: _bottomNavIcon('assets/read-more-left-arrow-button (1).png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(''),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive(
              'assets/be32af43b3e0b05f702e272d1968a3ed.png'),
          icon: _bottomNavIcon('assets/be32af43b3e0b05f702e272d1968a3ed.png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(''),
          ),
        ),
      ],
    );
  }

  Widget _bottomNavIcon(String image) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Image.asset(
        image,
        height: 25,
        width: 25,
        color: Color(0xff888C94),
      ),
    );
  }

  Widget _bottomNavIconActive(String image) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Image.asset(
        image,
        height: 25,
        width: 25,
        color: Color(0xff3578E5),
      ),
    );
  }
}
