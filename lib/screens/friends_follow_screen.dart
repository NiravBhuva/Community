import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_read_more_text.dart';
import 'package:community/screens/profile_screen.dart';
import 'package:community/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reactive_button/flutter_reactive_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'communities_screen.dart';
import 'feed_screen.dart';
import 'friends_screen.dart';
import 'messages_screen.dart';

class FriendsFollowScreen extends StatefulWidget {
  @override
  _FriendsFollowScreenState createState() => _FriendsFollowScreenState();
}

class _FriendsFollowScreenState extends State<FriendsFollowScreen>
    with SingleTickerProviderStateMixin {
  List<Friends> friends = [];
  TabController tabController;

  List<Post> posts = [];
  String btn = 'assets/_Icons - 8 Like.png';
  bool showCommentView = false;
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
  String txt1 =
      "Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale...";
  String txt2 = "The Luxury Of Traveling With Yacht Charter Companies";
  List images = [
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    'assets/Rectangle Copy 12.png',
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    'assets/Rectangle Copy 12.png',
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    'assets/Rectangle Copy 12.png',
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    'assets/Rectangle Copy 12.png',
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    'assets/Rectangle Copy 12.png',
    'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
  ];

  bool isUserFollowed = false;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {});
      }
    });

    friends.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Jimmy John',
        true,
        '12 mutual friends',
        false));
    friends.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Ashley Ren',
        true,
        '3 mutual friends',
        false));
    friends.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Alex Lopez',
        false,
        '',
        true));
    friends.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Maggie Murphy',
        false,
        '',
        true));
    friends.add(Friends(
        'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
        'Murphy Garry',
        false,
        '',
        false));

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
      body: Container(
        color: Color(0xffF3F3F6),
        child: ListView(
          shrinkWrap: true,
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
                          _showActionSheet(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    border: Border.all(
                      color: Color(0xff2979FF),
                      width: 4,
                    ),
                  ),
                  transform: Matrix4.translationValues(15, -55, 0),
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
                Container(
                  margin: EdgeInsets.only(left: 40, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Victor Niculici',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                isUserFollowed == false
                    ? Container(
                        margin: EdgeInsets.only(left: 30, bottom: 30),
                        child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              if (isUserFollowed) {
                                isUserFollowed = false;
                              } else {
                                isUserFollowed = true;
                              }
                            });
                          },
                          color: Color(0xff3C5A99),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 60, bottom: 30),
                        transform: Matrix4.translationValues(0, -30, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color(0xff5085E8),
                        ),
                        child: Icon(
                          Icons.chat,
                          color: Colors.white,
                        ),
                      ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                color: Color(0xffF3F3F6),
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        'Edit description',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'Simplifying interfaces and experiences since 2012.  🎉 Feel free to contact me for full-time or freelance work opportunities.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Friends',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                '530',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FriendsScreen()));
                            },
                            child: Text(
                              'See all',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff4A4A4A)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        margin: EdgeInsets.only(top: 5),
                        child: ListView.builder(
                          itemCount: friends.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        FriendsFollowScreen()));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.only(right: index != 4 ? 13 : 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: <Widget>[
                                        Container(
                                          height: 65,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            border: Border.all(
                                                color: Color(0xffEFEFEF),
                                                width: 2),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child: Image.asset(
                                              friends[index].image,
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        friends[index].isOnline
                                            ? Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff7ED321),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    AutoSizeText(
                                      friends[index].name,
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff4A4A4A),
                                      ),
                                      maxLines: 1,
                                      minFontSize: 5,
                                    ),
                                    SizedBox(height: 5),
                                    AutoSizeText(
                                      friends[index].mutual,
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xff4A4A4A),
                                      ),
                                      maxLines: 1,
                                      minFontSize: 5,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TabBar(
              controller: tabController,
              indicatorColor: Color(0xff2979FF),
              onTap: (int) {},
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Chronicle',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    'Information',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Tab(
                  child: Text(
                    'Gallery',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Container(
              child: [
                _chronicle(),
                _information(),
                _gallery(),
              ][tabController.index],
            ),
            //_posts(),
          ],
        ),
      ),
    );
  }

  _chronicle() {
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
                        onTap: (){},
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

  _information() {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        ListTile(
          title: Row(
            children: <Widget>[
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                size: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lives in',
                    style: TextStyle(
                      color: Color(0xff454545),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Chalon Rd, Los Angeles, CA',
                    style: TextStyle(
                      color: Color(0xff5085E8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                size: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Bachelor of Science in Physics',
                    style: TextStyle(
                      color: Color(0xff454545),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'University of Pennsylvania',
                    style: TextStyle(
                      color: Color(0xff5085E8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                size: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'CEO',
                    style: TextStyle(
                      color: Color(0xff454545),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'SpaceX',
                    style: TextStyle(
                      color: Color(0xff5085E8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Icon(
                      Icons.location_on,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          AutoSizeText(
                            'Relationships',
                            style: TextStyle(
                              color: Color(0xff454545),
                            ),
                            maxLines: 1,
                            minFontSize: 5,
                          ),
                          SizedBox(height: 3),
                          AutoSizeText(
                            'Single',
                            style: TextStyle(
                              color: Color(0xff5085E8),
                            ),
                            maxLines: 1,
                            minFontSize: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Icon(
                      Icons.location_on,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AutoSizeText(
                            '47 years',
                            style: TextStyle(
                              color: Color(0xff454545),
                            ),
                            maxLines: 1,
                            minFontSize: 5,
                          ),
                          SizedBox(height: 3),
                          AutoSizeText(
                            'June 28, 1971',
                            style: TextStyle(
                              color: Color(0xff5085E8),
                            ),
                            maxLines: 1,
                            minFontSize: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            children: <Widget>[
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                size: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Instagram',
                    style: TextStyle(
                      color: Color(0xff454545),
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'elonmusk',
                    style: TextStyle(
                      color: Color(0xff5085E8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  _gallery() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
          );
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
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

  _showActionSheet(context) {
    return showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            actions: <Widget>[
              CupertinoActionSheetAction(
                isDestructiveAction: true,
                child: Text('Report/Block'),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: Text('Unfriend'),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
