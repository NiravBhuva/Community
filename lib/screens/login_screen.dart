import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode focusEmail = new FocusNode();
  FocusNode focusPass = new FocusNode();
  Color txtFieldEmailColor = Color(0xffF7F6FB);
  Color txtFieldPasswordColor = Color(0xffF7F6FB);

  @override
  void initState() {
    // TODO: implement initState
    focusEmail.addListener(_changeColor);
    focusPass.addListener(_changeColor);
    super.initState();
  }

  _changeColor(){
    if(focusEmail.hasFocus){
      setState(() {
        txtFieldEmailColor = Colors.white;
      });
    }else{
      setState(() {
        txtFieldEmailColor = Color(0xffF7F6FB);
      });
    }

    if(focusPass.hasFocus){
      setState(() {
        txtFieldPasswordColor = Colors.white;
      });
    }else{
      setState(() {
        txtFieldPasswordColor = Color(0xffF7F6FB);
      });
    }
  }

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
              margin: EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                  color: txtFieldEmailColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                focusNode: focusEmail,
                style: TextStyle(color: Color(0xff939393), fontSize: 19),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 17,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xff62A8E5)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                  color: txtFieldPasswordColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                focusNode: focusPass,
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Color(0xff62A8E5)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
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
                Icon(Icons.insert_photo, size: 35,),
                SizedBox(width: 25),
                Icon(Icons.insert_photo, size: 35,),
                SizedBox(width: 25),
                Icon(Icons.insert_photo, size: 35,),
              ],
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: (){

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
