import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/screens/profile1_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Container(
        height: double.infinity,
        color: Colors.white,
        child: Scaffold(
          body: _body(),
        ),
      ),
    );
  }

  _topNavBar() {
    return CupertinoNavigationBar(
      leading: Container(
        width: 0,
      ),
      middle: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: prefix0.MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff0088FF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _body() {
    return ListView(
      children: <Widget>[
        SizedBox(height: 15),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile1Screen()));
          },
          leading: CircleAvatar(
            radius: 29,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text('Ryan Robinson'),
          subtitle: Text('+1(810)796-5521'),
          trailing: Icon(Icons.navigate_next),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Container(
            margin: EdgeInsets.only(left: 5),
            child: Image.asset(
              'assets/globe.png',
              height: 25,
              width: 25,
              color: Color(0xff0088FF),
            ),
          ),
          title: Text(
            'Privacy and Security',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Icon(Icons.navigate_next),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 2,
              width: 70,
              color: Colors.white,
            ),
            Flexible(child: Divider()),
          ],
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            margin: EdgeInsets.only(left: 5),
            child: Image.asset(
              'assets/lock.png',
              height: 25,
              width: 25,
              color: Color(0xff0088FF),
            ),
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'Off',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(width: 15),
              Icon(Icons.navigate_next),
            ],
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Container(
            margin: EdgeInsets.only(left: 5),
            child: Image.asset(
              'assets/info.png',
              height: 25,
              width: 25,
              color: Color(0xff0088FF),
            ),
          ),
          title: Text(
            'Help',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Icon(Icons.navigate_next),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 2,
              width: 70,
              color: Colors.white,
            ),
            Flexible(child: Divider()),
          ],
        ),
      ],
    );
  }
}
