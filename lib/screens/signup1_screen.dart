import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/screens/login_screen.dart';
import 'package:community/screens/signup2_screen.dart';
import 'package:flutter/material.dart';

class Signup1Screen extends StatefulWidget {
  @override
  _Signup1ScreenState createState() => _Signup1ScreenState();
}

class _Signup1ScreenState extends State<Signup1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
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
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
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
              textAlign: TextAlign.center,
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
                hintText: 'Full Name',
                hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 17,
                ),
              ),
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
                hintText: 'Phone Number',
                hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 17,
                ),
              ),
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
                hintText: 'Date of birth',
                hintStyle: TextStyle(color: Color(0xff939393), fontSize: 18),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 17,
                ),
              ),
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
                hintText: 'Confirm Password',
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup2Screen()));
                  },
                  color: Color(0xff004FAC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign up',
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
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "By registering you agree to ",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffABB4BD),
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFF1654),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "and",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffABB4BD),
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Privacy Policy ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFF1654),
                  ),
                ),
              ),
              Text(
                "of the Vermo",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffABB4BD),
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(height: 30),
          Row(
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
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
