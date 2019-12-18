import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

import 'messages_screen.dart';

class FriendsScreen extends StatefulWidget {
  @override
  _FriendsScreenState createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  List<Message> friends = [];

  @override
  void initState() {
    // TODO: implement initState
    friends.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Paul Gilbert',
        '3 mutual friends',
        '1:30 ِPM'));
    friends.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Michael McCormick',
        "3 mutual friends",
        '9:40 AM'));
    friends.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Franklin Guzman',
        '3 mutual friends',
        '12/4/18'));
    friends.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Milton Ortiz',
        '3 mutual friends',
        '21/3/18'));
    friends.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Irene Wade',
        "3 mutual friends",
        '14/3/18'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: prefix0.CupertinoPageScaffold(
        navigationBar: _topNavBar(),
        child: Container(
          height: double.infinity,
          color: Color(0xffF3F3F6),
          child: _friends(),
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
        margin: EdgeInsets.only(top: 0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'assets/_Icons - Close Copy 3.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Text(
                  'Friends',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    color: Color(0xff424242),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 15, left: 0, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: TextField(
                style: TextStyle(color: Color(0xff939393), fontSize: 17),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color(0xff939393),
                    fontSize: 17,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 13,
                    bottom: 10,
                    left: 25,
                    right: 25,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _friends() {
    return ListView.builder(
      itemCount: friends.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <prefix0.Widget>[
                    CircleAvatar(
                      radius: 28,
                      child: ClipOval(
                        child: Image.asset(
                          friends[index].image,
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <prefix0.Widget>[
                        AutoSizeText(
                          friends[index].name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          minFontSize: 7,
                        ),
                        SizedBox(height: 5),
                        AutoSizeText(
                          friends[index].msg,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          minFontSize: 5,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: (){
                      _showActionSheet(context);
                    },
                    child: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _showActionSheet(context){
    return prefix0.showCupertinoModalPopup<void>(
        context: context,
        builder:
            (BuildContext context) {
          return prefix0.CupertinoActionSheet(
            actions: <Widget>[
              prefix0.CupertinoActionSheetAction(
                isDestructiveAction: true,
                child: Text('Report/Block'),
                onPressed: () {},
              ),
              prefix0.CupertinoActionSheetAction(
                child: Text('Unfriend'),
                onPressed: () {},
              ),
              prefix0.CupertinoActionSheetAction(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(
                      context)
                      .pop();
                },
              ),
            ],
          );
        });
  }
}
