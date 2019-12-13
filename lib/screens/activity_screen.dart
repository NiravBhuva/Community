import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  List<Activity> activities = [];

  @override
  void initState() {
    // TODO: implement initState
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Alex Lopez',
      'tagged you in a photo',
      '1m',
      false,
    ));
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Brooke Foster’s',
      'birthay is today.',
      '3h',
      false,
    ));
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Hector Mariano',
      'likes your video.',
      '3h',
      false,
    ));
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Kathryn Hart',
      'accepted your friend request.',
      'Yesterday at 8 PM',
      false,
    ));
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Adrian Kaye',
      'sent you a request',
      '2d',
      true,
    ));
    activities.add(Activity(
      'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
      'Jesse Kate',
      'replied to your comment',
      '4d',
      false,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return prefix0.CupertinoPageScaffold(
      navigationBar: _topNavBar(),
      child: Container(
        height: double.infinity,
        color: Color(0xffF3F3F6),
        child: _activities(),
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
                mainAxisAlignment: prefix0.MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Activity',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff004FAC),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _activities() {
    return ListView.builder(
      itemCount: activities.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 40, right: 30, bottom: 20),
            child: Row(
              mainAxisSize: prefix0.MainAxisSize.min,
              crossAxisAlignment: prefix0.CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      activities[index].image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 150,
                  child: Column(
                    mainAxisSize: prefix0.MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <prefix0.Widget>[
                      AutoSizeText.rich(
                        TextSpan(
                          text: activities[index].name,
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${activities[index].msg}',
                              style: TextStyle(
                                color: Color(0xff4A4A4A),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        maxLines: 2,
                        minFontSize: 5,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment:
                            prefix0.MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AutoSizeText(
                            activities[index].time,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            minFontSize: 7,
                          ),
                          activities[index].showBtn
                              ? Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Confirm',
                                        style: TextStyle(
                                          //color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(
                                          //color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(width: 5),
                        ],
                      ),
                    ],
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

class Activity {
  String image;
  String name;
  String msg;
  String time;
  bool showBtn;

  Activity(this.image, this.name, this.msg, this.time, this.showBtn);
}
