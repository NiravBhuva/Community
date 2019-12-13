import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/screens/feed_screen.dart';
import 'package:community/screens/search_screen.dart';
import 'package:flutter/material.dart';

import 'activity_screen.dart';
import 'messages_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  List<Widget> screens = [
    FeedScreen(),
    SearchScreen(),
    MessagesScreen(),
    ActivityScreen(),
    FeedScreen(),
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
            child: Text('NEWS'),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive('assets/magnifying-glass (4).png'),
          icon: _bottomNavIcon('assets/magnifying-glass (4).png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('SEARCH'),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Stack(
            children: <Widget>[
              _bottomNavIconActive('assets/chat (5).png'),
              Container(
                transform: Matrix4.translationValues(22, 0, 0),
                width: 20,
                height: 20,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffE90F4D),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE90F4D).withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(
                        -4,
                        4,
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: AutoSizeText(
                    '6',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
          icon: Stack(
            children: <Widget>[
              _bottomNavIcon('assets/chat (5).png'),
              Container(
                transform: Matrix4.translationValues(22, 0, 0),
                width: 20,
                height: 20,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffE90F4D),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE90F4D).withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(
                        -4,
                        4,
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: AutoSizeText(
                    '6',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('MESSAGES'),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Stack(
            children: <Widget>[
              _bottomNavIconActive('assets/bell (1).png'),
              Container(
                transform: Matrix4.translationValues(20, 0, 0),
                width: 20,
                height: 20,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffE90F4D),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE90F4D).withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(
                        -4,
                        4,
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: AutoSizeText(
                    '12',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
          icon: Stack(
            children: <Widget>[
              _bottomNavIcon('assets/bell (1).png'),
              Container(
                transform: Matrix4.translationValues(20, 0, 0),
                width: 20,
                height: 20,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffE90F4D),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE90F4D).withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(
                        -4,
                        4,
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: AutoSizeText(
                    '12',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('ACTIVITY'),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: _bottomNavIconActive(
              'assets/read-more-left-arrow-button (1).png'),
          icon: _bottomNavIcon('assets/read-more-left-arrow-button (1).png'),
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('MORE'),
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
        height: 21,
        width: 21,
        color: Color(0xff888C94),
      ),
    );
  }

  Widget _bottomNavIconActive(String image) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Image.asset(
        image,
        height: 21,
        width: 21,
        color: Color(0xff3578E5),
      ),
    );
  }
}
