import 'package:auto_size_text/auto_size_text.dart';
import 'package:community/custom/custom_pin_code.dart';
import 'package:community/screens/complete_screen.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController controller = TextEditingController();
  int pinLength = 4;

  bool hasError = false;
  String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Image.asset(
              'assets/_Icons - Close Copy 3.png',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Verification',
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
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  minFontSize: 9,
                ),
              ),
              SizedBox(height: 20),
              PinCodeTextField(
                autofocus: false,
                controller: controller,
                hideCharacter: false,
                highlight: false,
                highlightColor: Colors.blue,
                defaultBorderColor: Color(0xffF7F6FB),
                hasTextBorderColor: Color(0xffF7F6FB),
                pinBoxColor: Color(0xffF7F6FB),
                pinBoxRadius: 10,
                maxLength: pinLength,
                hasError: hasError,
                maskCharacter: '\u25CF',
                onTextChanged: (text) {
                  setState(() {
                    hasError = false;
                  });
                },
                onDone: (text){
                  print("DONE $text");
                },
                wrapAlignment: WrapAlignment.center,
                pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                pinTextStyle: TextStyle(fontSize: 30.0, color: Colors.black),
                pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
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
                            builder: (context) => CompleteScreen()));
                      },
                      color: Color(0xff004FAC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Confirm',
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
      ),
    );
  }
}
