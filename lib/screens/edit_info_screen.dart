import 'package:community/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditInfoScreen extends StatefulWidget {
  @override
  _EditInfoScreenState createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  List<Friends> images = [];

  @override
  void initState() {
    // TODO: implement initState
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        true,
        '',
        false));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        true,
        '',
        false));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        true));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        true));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        false));

    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        false));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        false));
    images.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        '',
        false,
        '',
        false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          previousPageTitle: 'Back',
          middle: Text('Edit'),
          trailing: GestureDetector(
            onTap: () {},
            child: Text(
              'Done',
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
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          showActionSheet(context);
                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
                              height: 65,
                              width: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: MediaQuery.of(context).size.width - 110,
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
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Bio',
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
                          '80',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Any detail such as age, occupation or city.',
                    style: TextStyle(
                      color: Color(0xff848484),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    'Phone Number',
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
                          '+1(810)796-5521',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 40),
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
                Divider(),
              ],
            ),
          ),
        ));
  }

  showActionSheet(context) {
    return showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            cancelButton: CupertinoActionSheetAction(
              isDestructiveAction: false,
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 75,
                      margin: EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        itemCount: images.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 65,
                              width: 65,
                              margin: EdgeInsets.only(
                                  right: index != images.length ? 13 : 0,
                                  bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  images[index].image,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Text('Choose Photo'),
                  ],
                ),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: Text('Delete Photo'),
                isDestructiveAction: true,
                onPressed: () {},
              ),
            ],
          );
        });
  }
}
