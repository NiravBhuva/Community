import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/screens/inchat_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List<Message> messages = [];

  @override
  void initState() {
    // TODO: implement initState
    messages.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Alan Munger',
        'Hi hamza, how are you today',
        '1:30 ِPM'));
    messages.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Emma Watson',
        "Hi Hamza, I finished filming, I'm coming",
        '9:40 AM'));
    messages.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Kat Larsson',
        'Your words are still in my memory',
        '12/4/18'));
    messages.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Carol Poland',
        'Beautiful painting completed Hamza',
        '21/3/18'));
    messages.add(Message(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Colin Ballinger',
        "I'm ready for the finals",
        '14/3/18'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Container(
        height: double.infinity,
        color: Color(0xffF3F3F6),
        child: _messages(),
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
            SizedBox(height: 60),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: prefix0.MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff004FAC),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/magnifying-glass (4).png',
                        height: 20,
                        width: 20,
                        color: Color(0xff004FAC),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xff004FAC),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _messages() {
    return ListView.builder(
      itemCount: messages.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InChatScreen(messages[index].image, messages[index].name)));
          },
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
                          messages[index].image,
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
                          messages[index].name,
                          style: TextStyle(
                            color: Color(0xff4A4A4A),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          minFontSize: 7,
                        ),
                        SizedBox(height: 10),
                        AutoSizeText(
                          messages[index].msg,
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
                prefix0.Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: AutoSizeText(
                    messages[index].time,
                    style: TextStyle(
                      color: Color(0xff4A4A4A),
                      fontSize: 9,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    minFontSize: 7,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Message {
  String image;
  String name;
  String msg;
  String time;

  Message(this.image, this.name, this.msg, this.time);
}
