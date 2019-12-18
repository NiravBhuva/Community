import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/screens/communities_screen.dart';
import 'package:community/screens/search_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<Community> communities = new List<Community>();
  List<Community> joinedCommunities = new List<Community>();
  List<Community> categories = new List<Community>();
  List<Community> suggestions = new List<Community>();

  @override
  void initState() {
    // TODO: implement initState
    communities.add(
        Community('assets/Rectangle Copy 12.png', 'Add Community', ''));
    communities.add(Community(
        'assets/Rectangle Copy 12.png', 'Toni Robins', '4000 Members'));
    communities.add(
        Community('assets/Rectangle Copy 12.png', 'Daily Playlist', '60 Members'));

    joinedCommunities.add(
        Community('assets/Rectangle Copy 12.png', 'Jay Z', 'Rapper'));
    joinedCommunities.add(Community(
        'assets/Rectangle Copy 12.png', 'Imagine Dragons', 'Band'));
    joinedCommunities.add(
        Community('assets/Rectangle Copy 12.png', 'Linkin Park', 'Rock band'));

    categories.add(
        Community('assets/Rectangle Copy 12.png', 'Music', ''));
    categories.add(Community(
        'assets/Rectangle Copy 12.png', '', ''));
    categories.add(
        Community('assets/Rectangle Copy 12.png', 'Marketting', ''));

    suggestions.add(Community(
        'assets/Rectangle Copy 12.png', 'Jimmy John', '12 mutual friends'));
    suggestions.add(Community(
        'assets/Rectangle Copy 12.png', 'Ashley Ren', '3 mutual friends'));
    suggestions.add(Community('assets/Rectangle Copy 12.png', 'Alex Lopez', ''));
    suggestions.add(Community('assets/Rectangle Copy 12.png', 'Maggie Murphy', ''));

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
            _communities(joinedCommunities),
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
            _communities(categories),
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
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
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
                    top: 15,
                    bottom: 15,
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
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CommunitiesScreen()));
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
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
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
                          style: TextStyle(color: Colors.grey.shade400, fontSize: 9),
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
}
