import 'dart:convert';
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_read_more_text.dart';

//import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/screens/communities_screen.dart';
import 'package:community/screens/search_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reactive_button/flutter_reactive_button.dart';

import 'feed_screen.dart';
import 'messages_screen.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<Community> communities = new List<Community>();
  List<Community> joinedCommunities = new List<Community>();
  List<Community> categories = new List<Community>();
  List<Community> suggestions = new List<Community>();
  List<Post> posts = [];
  String btn = 'assets/_Icons - 8 Like.png';
  bool showCommentView = false;
  int selectedRadio = 0;
  List<ReactiveIconDefinition> _like = <ReactiveIconDefinition>[
    ReactiveIconDefinition(
      assetIcon: 'assets/_Icons - 8 Like.png',
      code: 'like',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/_Icons - -1.png',
      code: 'haha',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/happy.png',
      code: 'love',
    ),
  ];
  String txt1 =
      "Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale...";
  String txt2 = "The Luxury Of Traveling With Yacht Charter Companies";
  List<Message> messages = [
    Message(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      '',
      'Awesome post. Hope you guys had fun!',
      '5m ago',
    ),
    Message(
      'assets/Rectangle Copy 12.png',
      '',
      'Awesome post. Hope you guys had fun!',
      '5m ago',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    communities
        .add(Community('assets/Rectangle Copy 12.png', 'Add Community', ''));
    communities
        .add(Community('assets/15127.jpg', 'Toni Robins', '4000 Members'));
    communities
        .add(Community('assets/15773.jpg', 'Daily Playlist', '60 Members'));

    joinedCommunities.add(Community('assets/16056.jpg', 'Jay Z', 'Rapper'));
    joinedCommunities
        .add(Community('assets/18502.jpg', 'Imagine Dragons', 'Band'));
    joinedCommunities
        .add(Community('assets/26429.jpg', 'Linkin Park', 'Rock band'));

    categories.add(Community('assets/514326-PI8QHA-443.jpg', 'Music', ''));
    categories.add(Community('assets/15127.jpg', '', ''));
    categories.add(Community('assets/15773.jpg', 'Marketting', ''));

    suggestions
        .add(Community('assets/26429.jpg', 'Jimmy John', '12 mutual friends'));
    suggestions
        .add(Community('assets/15127.jpg', 'Ashley Ren', '3 mutual friends'));
    suggestions.add(Community('assets/16056.jpg', 'Alex Lopez', ''));
    suggestions
        .add(Community('assets/514326-PI8QHA-443.jpg', 'Maggie Murphy', ''));

    posts.add(Post(
      'assets/15127.jpg',
      'Edward Kelly',
      '2 hours ago',
      '#relax, #travel',
      txt1,
      '',
      true,
      '1125',
      '348',
      messages,
    ));
    posts.add(Post(
      'assets/OTSOUE0.jpg',
      'Howard Barton',
      '2 hours ago',
      '',
      txt2,
      'assets/Rectangle Copy 12.png',
      false,
      '1125',
      '348',
      [],
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Container(
        color: Color(0xffF3F3F6),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Communities',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
              ),
            ),
            SizedBox(height: 15),
            _communities(communities),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Suggestion',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
              ),
            ),
            SizedBox(height: 15),
            _suggestions(),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Communities you Joined',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
              ),
            ),
            SizedBox(height: 15),
            _list(joinedCommunities),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
              ),
            ),
            SizedBox(height: 15),
            _list(categories),
            SizedBox(height: 30),
            _posts(),
            SizedBox(height: 15),
          ],
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
        //margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            //SizedBox(height: 50),
            Container(
              margin: EdgeInsets.only(right: 25, left: 10),
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
                    top: 10,
                    bottom: 10,
                    left: 25,
                    right: 25,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _communities(List<Community> data) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(left: 15),
      child: ListView.builder(
        itemCount: communities.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 130,
                    height: 130,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            child: Image.asset(
                              data[index].image,
                              height: 130,
                              width: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <prefix0.Widget>[
                              SizedBox(height: 10),
                              Opacity(
                                opacity: 0.5,
                                child: Image.asset(
                                  'assets/Icon material-add.png',
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              AutoSizeText(
                                data[index].title,
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 16),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                minFontSize: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CommunitiesScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 130,
                    height: 130,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.darken),
                            child: Image.asset(
                              data[index].image,
                              height: 130,
                              width: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <prefix0.Widget>[
                              SizedBox(height: 10),
                              AutoSizeText(
                                data[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: prefix0.FontWeight.w500,
                                ),
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                minFontSize: 11,
                              ),
                              AutoSizeText(
                                data[index].subTitle,
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 9),
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                minFontSize: 9,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }

  _list(List<Community> data) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(left: 15),
      child: ListView.builder(
        itemCount: communities.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CommunitiesScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              width: 130,
              height: 130,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                      child: Image.asset(
                        data[index].image,
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <prefix0.Widget>[
                        SizedBox(height: 10),
                        AutoSizeText(
                          data[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: prefix0.FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          minFontSize: 11,
                        ),
                        AutoSizeText(
                          data[index].subTitle,
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 9),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          minFontSize: 9,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _suggestions() {
    return Container(
      height: 135,
      margin: EdgeInsets.only(left: 15),
      child: ListView.builder(
        itemCount: suggestions.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 15),
              width: 95,
              height: 80,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      suggestions[index].image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: prefix0.MainAxisAlignment.center,
                    children: <prefix0.Widget>[
                      SizedBox(height: 8),
                      AutoSizeText(
                        suggestions[index].title,
                        style: TextStyle(
                          color: Color(0xff4A4A4A),
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        minFontSize: 7,
                      ),
                      SizedBox(height: 5),
                      AutoSizeText(
                        suggestions[index].subTitle,
                        style: TextStyle(
                          color: Color(0xff4A4A4A),
                          fontSize: 11,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        minFontSize: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _posts() {
    return ListView.builder(
      itemCount: posts.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Card(
            color: Color(0xffF3F3F6),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 28,
                            child: ClipOval(
                              child: Image.asset(
                                posts[index].userImg,
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AutoSizeText(
                                posts[index].name,
                                style: TextStyle(
                                  color: Color(0xff4A4A4A),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                minFontSize: 7,
                              ),
                              SizedBox(height: 5),
                              AutoSizeText(
                                posts[index].time,
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
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Image.asset(
                            'assets/share (1).png',
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  posts[index].hashTags.length > 0
                      ? Text(
                          posts[index].hashTags,
                          style: TextStyle(color: Color(0xff004FAC)),
                        )
                      : Container(),
                  SizedBox(height: 10),
                  ReadMoreText(
                    posts[index].desc,
                    style: TextStyle(fontSize: 14),
                    trimLength: 170,
                  ),
                  posts[index].image.length > 0
                      ? Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Image.asset(
                              posts[index].image,
                              height: MediaQuery.of(context).size.width - 65,
                              width: MediaQuery.of(context).size.width - 65,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      : Container(),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ReactiveButton(
                            icons: _like,
                            onSelected: (ReactiveIconDefinition button) {
                              setState(() {
                                btn = button.assetIcon;
                                posts[index].isLiked = true;
                              });
                            },
                            containerAbove: true,
                            iconWidth: 30.0,
                            iconGrowRatio: 1,
                            roundIcons: false,
                            onTap: () {
                              print('Hey I am hit');
                            },
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: Colors.black54,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                posts[index].isLiked
                                    ? Image.asset(
                                        btn,
                                        height: 20,
                                        width: 20,
                                      )
                                    : Image.asset(
                                        'assets/_Icons - -1.png',
                                        height: 20,
                                        width: 20,
                                      ),
                                SizedBox(width: 7),
                                Text(
                                  posts[index].likes,
                                  style: TextStyle(color: Color(0xff004FAC)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 25),
                          GestureDetector(
                            onTap: () {
                              if (showCommentView) {
                                setState(() {
                                  showCommentView = false;
                                });
                              } else {
                                setState(() {
                                  showCommentView = true;
                                });
                              }
                            },
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/_Icons - 8 Like Copy.png',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(width: 7),
                                Text(
                                  posts[index].comments,
                                  style: TextStyle(color: Color(0xff004FAC)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.star_border,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  showCommentView
                      ? posts[index].messages.length > 0
                          ? _commentView(index)
                          : Container()
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _commentView(int index) {
    return Column(
      children: <Widget>[
        ListView.builder(
          itemCount: messages.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int msg) {
            return Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 22,
                    child: ClipOval(
                      child: Image.asset(
                        posts[index].messages[msg].image,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 15),
                        AutoSizeText(
                          posts[index].messages[msg].msg,
                          style: TextStyle(
                            color: Color(0xff4A4A4A),
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.start,
                          minFontSize: 7,
                        ),
                        SizedBox(height: 5),
                        AutoSizeText(
                          posts[index].messages[msg].time,
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
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
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
                top: 10,
                bottom: 10,
                left: 25,
                right: 20,
              ),
              border: InputBorder.none,
              suffixIcon: Container(
                padding: EdgeInsets.only(right: 10, left: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
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
      ],
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xff2d4373),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                  mainAxisSize: prefix0.MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Create New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Name your group',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      //margin: EdgeInsets.only(right: 20, left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: TextField(
                        style:
                            TextStyle(color: Color(0xff939393), fontSize: 17),
                        decoration: InputDecoration(
                          //hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 17,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 25,
                            right: 25,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Add some people',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      //margin: EdgeInsets.only(right: 20, left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: TextField(
                        style:
                            TextStyle(color: Color(0xff939393), fontSize: 17),
                        decoration: InputDecoration(
                          //hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 17,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 25,
                            right: 25,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Select',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: selectedRadio,
                              activeColor: Colors.white,
                              onChanged: (int) {
                                setState(() {
                                  selectedRadio = int;
                                });
                              },
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Private',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              activeColor: Colors.white,
                              onChanged: (int) {
                                setState(() {
                                  selectedRadio = int;
                                });
                              },
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Public',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: TextField(
                        style:
                        TextStyle(color: Color(0xff939393), fontSize: 17),
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 17,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 25,
                            right: 25,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 25,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25))),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        });
  }

  _convertToBase64(){
    File image = File('assets/image.png');

    String base64Image = base64Encode(image.readAsBytesSync());

    print(base64Image);
  }
}
