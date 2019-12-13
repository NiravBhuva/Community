import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_info_screen.dart';

class ContactInfoScreen extends StatefulWidget {
  @override
  _ContactInfoScreenState createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Back',
        middle: Text('Contact Info'),
        trailing: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditInfoScreen()));
          },
          child: Text(
            'Edit',
            style: TextStyle(
              color: Color(0xff0088FF),
            ),
          ),
        ),
      ),
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Image.asset(
                'assets/Rectangle Copy 12.png',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'Johnny Coleman',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text('Last seen today at 16:08'),
                trailing: Wrap(
                  children: <Widget>[
                    Image.asset(
                      'assets/bell (1).png',
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      'assets/bell (1).png',
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 15),
                    Image.asset(
                      'assets/bell (1).png',
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 2,
                    width: 20,
                    color: Colors.white,
                  ),
                  Flexible(child: Divider()),
                ],
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'home',
                  style: TextStyle(color: Color(0xff0088FF)),
                ),
                subtitle: Text(
                  '+1(620)364-2045',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Image.asset(
                    'assets/bell (1).png',
                    height: 25,
                    width: 25,
                    color: Color(0xff0088FF),
                  ),
                ),
                title: Text(
                  'Shared Media',
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
                    'assets/bell (1).png',
                    height: 25,
                    width: 25,
                    color: Color(0xff0088FF),
                  ),
                ),
                title: Text(
                  'Saved Messages',
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
                    'assets/bell (1).png',
                    height: 25,
                    width: 25,
                    color: Color(0xff0088FF),
                  ),
                ),
                title: Text(
                  'Chat Search',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                    'assets/bell (1).png',
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
              SizedBox(height: 30),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  'Share Contact',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff0088FF),
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
                title: Text(
                  'Export Chat',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0088FF),
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
                title: Text(
                  'Block Contact',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF3B30),
                  ),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
              Divider(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
