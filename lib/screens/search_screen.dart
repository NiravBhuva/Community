import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Community> communities = new List<Community>();
  List<Community> people = new List<Community>();
  List<String> posts = new List();

  @override
  void initState() {
    // TODO: implement initState
    communities.add(
        Community('assets/Rectangle Copy 12.png', 'Food guys', '400 Members'));
    communities.add(Community(
        'assets/Rectangle Copy 12.png', 'Toni Robins', '400 Members'));
    communities.add(
        Community('assets/Rectangle Copy 12.png', 'Food guys', '400 Members'));

    people.add(Community(
        'assets/Rectangle Copy 12.png', 'Jimmy John', '12 mutual friends'));
    people.add(Community(
        'assets/Rectangle Copy 12.png', 'Ashley Ren', '3 mutual friends'));
    people.add(Community('assets/Rectangle Copy 12.png', 'Alex Lopez', ''));
    people.add(Community('assets/Rectangle Copy 12.png', 'Maggie Murphy', ''));

    posts = [
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
    ];

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <prefix0.Widget>[
                  Text(
                    'Communities',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4D495B),
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            _communities(),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'People',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
              ),
            ),
            SizedBox(height: 30),
            _people(),
            SizedBox(height: 50),
            _posts(),
            SizedBox(height: 30),
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

  _communities() {
    return Container(
      height: 130,
      margin: EdgeInsets.only(left: 15),
      child: ListView.builder(
        itemCount: communities.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 15),
              width: 130,
              height: 130,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Opacity(
                    opacity: 0.85,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        communities[index].image,
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: prefix0.MainAxisAlignment.center,
                      children: <prefix0.Widget>[
                        SizedBox(height: 10),
                        AutoSizeText(
                          communities[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: prefix0.FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          minFontSize: 11,
                        ),
                        AutoSizeText(
                          communities[index].subTitle,
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
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

  _people() {
    return Container(
      height: 135,
      margin: EdgeInsets.only(left: 15),
      child: ListView.builder(
        itemCount: people.length,
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
                      people[index].image,
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
                        people[index].title,
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
                        people[index].subTitle,
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
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: new List<Widget>.generate(
          posts.length,
              (index) {
            return GestureDetector(
              onTap: (){
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Image.asset(
                  posts[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Community {
  String image;
  String title;
  String subTitle;

  Community(this.image, this.title, this.subTitle);
}
