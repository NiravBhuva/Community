import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile1Screen extends StatefulWidget {
  @override
  _Profile1ScreenState createState() => _Profile1ScreenState();
}

class _Profile1ScreenState extends State<Profile1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Divider(),
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Log Out',
                    style: TextStyle(
                      color: Color(0xffFF3B30),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
      body: Container(
        color: Color(0xffF3F3F6),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/Rectangle Copy 12.png',
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          'assets/_Icons - Close Copy 3.png',
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewBottomNavScreen()));
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                      border: Border.all(
                        color: Color(0xff2979FF),
                        width: 4,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 40,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          transform: Matrix4.translationValues(13, -15, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color(0xff2979FF).withOpacity(0.7),
                          ),
                          child: Icon(
                            Icons.photo_camera,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Ryan',
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(top: 15, bottom: 3)),
                        ),
                        Divider(),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Robinson',
                            hintStyle: TextStyle(color: Colors.black),
                            border: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(bottom: 15, top: 3),
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Enter your name and add a profile picture.',
                style: TextStyle(
                  color: Color(0xff848484),
                ),
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              onTap: () {},
              title: Text(
                'Username',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'Darrell Bailey',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text(
                'Email',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'darrell_bailey@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text(
                'Phone',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '+65 39879 343',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text(
                'Gender',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'male',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text(
                'Date of birth',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '16/04/1988',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  '**************',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
