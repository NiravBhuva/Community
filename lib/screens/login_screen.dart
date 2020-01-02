import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/screens/forgot_password_screen.dart';
import 'package:community/screens/home_screen.dart';
import 'package:community/screens/signup1_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'complete_screen.dart';
import 'feed_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Community',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff004FAC)),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Back',
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
                'Register via your company email to connect with the people of your company.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff4D495B),
                ),
                maxLines: 2,
                minFontSize: 9,
              ),
            ),
            SizedBox(height: 45),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF7F6FB),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                style: TextStyle(color: Color(0xff939393), fontSize: 19),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffF7F6FB),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                style: TextStyle(color: Color(0xff939393), fontSize: 19),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color(0xff094cac),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
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
                        'SIGN IN',
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
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'or login with',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff4D495B),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/facebook-logo.png',
                  height: 25,
                  width: 25,
                ),
                SizedBox(width: 25),
                Image.asset(
                  'assets/Icon awesome-instagram.png',
                  height: 25,
                  width: 25,
                ),
                SizedBox(width: 25),
                Image.asset(
                  'assets/Icon awesome-twitter.png',
                  height: 25,
                  width: 25,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Icon awesome-apple.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            margin: EdgeInsets.only(top: 5),
                            child: AutoSizeText(
                              'Sign in with Apple',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              maxLines: 1,
                              minFontSize: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Signup1Screen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff4D495B),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff004FAC),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
