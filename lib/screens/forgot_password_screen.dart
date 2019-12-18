import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'change_password_screen.dart';
import 'login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 15),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'assets/_Icons - Close Copy 3.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Forgot Password',
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
                  'Please enter your registered email or mobile to reset your password.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff4D495B),
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  minFontSize: 9,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF7F6FB),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  style: TextStyle(color: Color(0xff939393), fontSize: 19),
                  decoration: InputDecoration(
                    hintText: 'Email / Mobile number',
                    hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 17,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen()));
                      },
                      color: Color(0xff004FAC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        child: AutoSizeText(
                          'Recover Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          minFontSize: 5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffABB4BD),
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff004FAC),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
