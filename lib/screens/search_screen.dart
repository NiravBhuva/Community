import 'package:auto_size_text/auto_size_text.dart';

//import 'package:community/custom/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'communities_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Scaffold(
        body: Container(
          color: Color(0xffF3F3F6),
          child: _emptyBody(),
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
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  'assets/_Icons - Close Copy 3.png',
                  color: Color(0xff004FAC),
                  height: 25,
                  width: 25,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  _emptyBody() {
    return ListView(
      children: <Widget>[
        SizedBox(height: 70),
        Image.asset(
          'assets/search.png',
          height: 130,
          width: 130,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter a few keywords to search',
              style: TextStyle(
                fontSize: 14,
                fontWeight: prefix0.FontWeight.w600
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Community {
  String image;
  String title;
  String subTitle;

  Community(this.image, this.title, this.subTitle);
}
