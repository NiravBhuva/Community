import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/Rectangle Copy 12.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/Shadow.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Register via your company email to connect with the people of your company.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/_Icons - 8 Like.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '412',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 30),
                    Image.asset(
                      'assets/_Icons - 8 Like Copy.png',
                      height: 20,
                      width: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
