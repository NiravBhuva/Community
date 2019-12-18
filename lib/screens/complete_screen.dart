import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class CompleteScreen extends StatefulWidget {
  @override
  _CompleteScreenState createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xff094CAC),
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 45,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Awesome',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff4D495B),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              alignment: Alignment.center,
              child: AutoSizeText(
                'Edit your profile to start connecting with professionals',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                minFontSize: 9,
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 170,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    color: Color(0xff004FAC),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
