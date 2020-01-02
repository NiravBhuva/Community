import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/custom/custom_read_more_text.dart';
import 'package:community/screens/messages_screen.dart';
import 'package:community/screens/post_screen.dart';
import 'package:community/screens/profile_screen.dart';
import 'package:community/screens/search_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter_reactive_button/flutter_reactive_button.dart';

import 'camera_screen.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<String> chips = [
    'Posts',
    'Photos',
    'Videos',
    'Favorites',
    'Recommended'
  ];
  List<Post> posts = [];
  int selected = 0;
  String txt1 =
      "Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale...";
  String txt2 = "The Luxury Of Traveling With Yacht Charter Companies";
  bool showCommentView = false;
  String btn;

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

  List<ReactiveIconDefinition> _likes = <ReactiveIconDefinition>[
    ReactiveIconDefinition(
      assetIcon: 'assets/like.gif',
      code: 'like',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/haha.gif',
      code: 'haha',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/love.gif',
      code: 'love',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/sad.gif',
      code: 'sad',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/wow.gif',
      code: 'wow',
    ),
    ReactiveIconDefinition(
      assetIcon: 'assets/angry.gif',
      code: 'angry',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
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
    return Scaffold(
      body: prefix0.CupertinoPageScaffold(
        navigationBar: _topNavBar(),
        child: Container(
          color: Color(0xffF3F3F6),
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              _chipsRow(),
              SizedBox(height: 15),
              _posts(),
              SizedBox(height: 15),
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
      middle: Material(
        color: Colors.transparent,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(width: 30),
                  Text(
                    'Community',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff004FAC),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/magnifying-glass (4).png',
                        height: 20,
                        width: 20,
                        color: Color(0xff888C94),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 6),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.transparent,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        style:
                            TextStyle(color: Color(0xff939393), fontSize: 17),
                        decoration: InputDecoration(
                          hintText: 'write your status',
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
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide:
                                BorderSide(width: 0.3, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide:
                                BorderSide(width: 0.3, color: Colors.grey),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 10, left: 0),
                            child: Image.asset(
                              'assets/happy.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CameraScreen()));
                    },
                    child: Image.asset(
                      'assets/instagram.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _chipsRow() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext, index) {
          return Container(
            padding: EdgeInsets.only(right: index == chips.length - 1 ? 0 : 8),
            child: ActionChip(
              onPressed: () {
                setState(() {
                  selected = index;
                });
              },
              shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
              elevation: 0,
              pressElevation: 0,
              shadowColor: Colors.black,
              backgroundColor:
                  index == selected ? Colors.white : Color(0xffF3F3F6),
              labelPadding: EdgeInsets.symmetric(horizontal: 12),
              label: Text(
                chips[index],
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
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
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: () {},
            child: Card(
              color: Color(0xffF3F3F6),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: prefix0.CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <prefix0.Widget>[
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
                              mainAxisSize: prefix0.MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <prefix0.Widget>[
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => PostScreen()));
                                },
                                child: Image.asset(
                                  posts[index].image,
                                  height:
                                      MediaQuery.of(context).size.width - 65,
                                  width: MediaQuery.of(context).size.width - 65,
                                  fit: prefix0.BoxFit.cover,
                                ),
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
                              icons: _likes,
                              onSelected: (ReactiveIconDefinition button) {
                                setState(() {
                                  btn = button.code;
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
                              child: btn == null
                                  ? Image.asset(
                                      'assets/_Icons - -1.png',
                                      width: 20.0,
                                      height: 20.0,
                                    )
                                  : Image.asset(
                                      'assets/$btn.png',
                                      width: 20.0,
                                      height: 20.0,
                                    ),
                            ),
                            SizedBox(width: 7),
                            Text(
                              posts[index].likes,
                              style: TextStyle(color: Color(0xff004FAC)),
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
                children: <prefix0.Widget>[
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
                      children: <prefix0.Widget>[
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
                  mainAxisSize: prefix0.MainAxisSize.min,
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
}

class Post {
  String userImg;
  String name;
  String time;
  String hashTags;
  String desc;
  String image;
  bool isLiked;
  String likes;
  String comments;
  List<Message> messages;

  Post(this.userImg, this.name, this.time, this.hashTags, this.desc, this.image,
      this.isLiked, this.likes, this.comments, this.messages);
}
