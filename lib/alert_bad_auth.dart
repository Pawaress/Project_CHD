import 'package:flutter/material.dart';
import 'package:project_chd/Assessment_page.dart';
import 'package:project_chd/Assessment_page_V2.dart';

class A_B_A extends StatefulWidget {
  @override
  A_B_AState createState() => A_B_AState();
}

class A_B_AState extends State<A_B_A> {
  /*
  
  ****สามารถแก้ ส่วนหัว Title ของ alertได้ที่บรรณทัด 42 และ สามารถแก้ ส่วนหัว Content ของ alert ได้ที่บรรณทัด 59 
  
   */
  void _showAlertDialog(BuildContext context) {
    //ฟังก์ชันแสดงตัวAlert
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return (Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              backgroundColor: Color(0XFFD9D9D9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              titlePadding: const EdgeInsets.all(0),
              title: Container(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "something went wrong !", //ส่วนของ ข้อความ title ที่พิ้นหลังสีแดงๆ
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              content: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      children: <Widget>[
                        Text(
                          'The email address is badly formated There is no user record.', //ส่วนของ ข้อความ เนื้อหาต่อจาก title
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /*actions: [
            TextButton(onPressed: () {}, child: Text("yes")),
            TextButton(onPressed: () {}, child: Text("no"))
          ],*/

              //elevation: 24,
              //backgroundColor: Colors.blue,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD9D9D9),
                      padding: EdgeInsetsDirectional.fromSTEB(35, 10, 35, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // กำหนดความโค้งของมุมปุ่ม
                      ),

                      textStyle:
                          TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // เอาไว้ลิ้งไปหน้าอื่นอันนี้จะเป็นแบบย้อนกลับไปหน้าก่อนหน้านี้
                    },
                    child: Text(
                      'back',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Kanit',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _showAlertDialog(
                          context); //ส่วนในการเรียกฟังก์ชันที่ ไว้สำหรับแสดง Alert
                    },
                    child: Text("ปุ่มกดแล้วเด้ง Aert ทันที"),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
