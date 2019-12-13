import 'package:community/screens/upload_screen.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/35889141_1990240171010349_8210575566856781824_o (1).png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 150,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UploadScreen()));
                  },
                  child: Icon(
                    Icons.image,
                    size: 40,
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffFEC867).withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                  ),
                  child: Center(
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Color(0xffFEC867),
                        borderRadius: BorderRadius.all(Radius.circular(55)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Icon(
                  Icons.repeat_one,
                  size: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
