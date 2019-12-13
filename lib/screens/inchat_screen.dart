import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class InChatScreen extends StatefulWidget {
  String profilePic;
  String name;

  InChatScreen(this.profilePic, this.name);

  @override
  _InChatScreenState createState() => _InChatScreenState();
}

class _InChatScreenState extends State<InChatScreen> {
  List<Attachment> attachments = [];

  @override
  void initState() {
    // TODO: implement initState
    attachments.add(Attachment('', 'Photo'));
    attachments.add(Attachment('', 'Video'));
    attachments.add(Attachment('', 'Document'));
    attachments.add(Attachment('', 'Location'));
    attachments.add(Attachment('', 'Contact'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavBar(),
      body: prefix0.CupertinoPageScaffold(
        navigationBar: _topNavBar(),
        child: Container(
          color: Color(0xffF3F3F6),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 15),
              _othersCommentRow(),
              _userComment(),
            ],
          ),
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
            SizedBox(height: 60),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: prefix0.MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          'assets/_Icons - Close Copy 3.png',
                          height: 20,
                          width: 20,
                          color: Color(0xff004FAC),
                        ),
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                          child: Image.asset(
                            widget.profilePic,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5D5D5D),
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'American actress',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff5D5D5D),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 50),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.delete_outline),
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

  _bottomNavBar() {
    return Container(
      color: Color(0xffF3F3F6),
      child: Container(
        margin: EdgeInsets.only(
          bottom: 30,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        child: TextField(
          style: TextStyle(color: Color(0xff939393), fontSize: 17),
          decoration: InputDecoration(
            hintText: 'Type a comment',
            hintStyle: TextStyle(
              color: Color(0xff939393),
              fontSize: 17,
            ),
            contentPadding: EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 25,
              right: 20,
            ),
            border: InputBorder.none,
            suffixIcon: Container(
              padding: EdgeInsets.only(right: 10, left: 0),
              child: Row(
                mainAxisSize: prefix0.MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _attach();
                    },
                    child: Image.asset(
                      'assets/paperclip.png',
                      height: 17,
                      width: 17,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/mic.png',
                      height: 17,
                      width: 17,
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/img_nxt.png',
                      height: 20,
                      width: 20,
                      color: Color(0xff447CBF),
                    ),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _attach() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 220,
          color: Color(0xff737373),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: index != 4 ? 13 : 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: Color(0xffEFEFEF), width: 2),
                              ),
                              child: Icon(
                                Icons.image,
                                color: Color(0xff0088FF),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              attachments[index].name,
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff848484),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Color(0xffEFEFEF),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(12))),
                    child: Container(
                      height: 55,
                      alignment: Alignment.center,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xff0088FF),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  _userComment() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 3, bottom: 5),
                  child: Text(
                    '9:48 AM',
                    style: TextStyle(color: Color(0xff5D5D5D), fontSize: 11),
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) -
                      (MediaQuery.of(context).size.width / 4) -
                      30,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff447CBF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: AutoSizeText(
                    "I am very happy especially that your grandmother will come",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _othersCommentRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 15),
          CircleAvatar(
            radius: 16,
            child: ClipOval(
              child: Image.asset(
                widget.profilePic,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 3, bottom: 5),
                child: Text(
                  '9:46 AM',
                  style: TextStyle(color: Color(0xff5D5D5D), fontSize: 11),
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) -
                    (MediaQuery.of(context).size.width / 4) -
                    30,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: AutoSizeText(
                  "Hi Hamza I'm fine",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Attachment {
  String image;
  String name;

  Attachment(this.image, this.name);
}
