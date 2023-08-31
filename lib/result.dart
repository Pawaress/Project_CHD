import 'package:flutter/material.dart';
import 'package:project_chd/Assessment_page.dart';
import 'package:project_chd/Assessment_page_V2.dart';

class Re extends StatefulWidget {
  @override
  ReState createState() => ReState();
}

class ReState extends State<Re> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF4FCCBD),
        title: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7EDCD1),
                  textStyle: TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                ),
                onPressed: () {
                  Navigator.pop(context);
                  // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "CHD 10 years risk score",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      body: Text("result"),
    );
  }
}
