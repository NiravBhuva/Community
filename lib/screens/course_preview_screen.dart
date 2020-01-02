import 'package:auto_size_text/auto_size_text.dart';
//import 'package:community/custom/custom_nav_bar.dart';
import 'package:community/screens/inchat_screen.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursePreviewScreen extends StatefulWidget {
  @override
  _CoursePreviewScreenState createState() => _CoursePreviewScreenState();
}

class _CoursePreviewScreenState extends State<CoursePreviewScreen> {
  String str = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo";

  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: Color(0xffF3F3F6),
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken),
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/Rectangle Copy 12.png',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Basic of Cryptocurrency',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'By Ari',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                transform: Matrix4.translationValues(0, -110, 0),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Image.asset(
                              'assets/Rectangle Copy 12.png',
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 40),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)),
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'PREVIEW THIS COURSE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: prefix0.CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'This course includes',
                              style: TextStyle(
                                //color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '72 hours on-demand video',
                                  style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '8 articles',
                                  style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '53 downloadable resources',
                                  style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Available in 5 laguages',
                                  style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              child: Text(
                                str,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _topNavBar() {
    return CupertinoNavigationBar(
      backgroundColor: Colors.white,
      leading: Container(
        width: 0,
      ),
      middle: Container(
        //margin: EdgeInsets.only(top: 25),
        child: Column(
          children: <Widget>[
            //SizedBox(height: 60),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: prefix0.MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.bookmark_border,
                        size: 28,
                        color: Colors.black,
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
}
