import 'package:flutter/material.dart';
import 'package:project_chd/Assessment_page.dart';
import 'package:project_chd/Assessment_page_V2.dart';

class Ad extends StatefulWidget {
  @override
  AdState createState() => AdState();
}

class AdState extends State<Ad> {
  @override
  bool check = true; //เพิ่มเพื่อเช็ค เพื่อ เปลี่ยนหน้าที่ยังไม่มีคำแนะนำ
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFEBA37A),
          title: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFEBE9A),
                    textStyle:
                        TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
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
                  "คำแนะนำ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "            ",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        body: check == true
            ? //เงื่อนไขเพื่อเลือกหน้า check = true เพื่อเปลี่ยนหน้าที่ยังไม่มีคำแนะนำ
            SingleChildScrollView(
                child: Container(
                    color: Color(0XFFFFEEDD),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'images/Exo.png',
                                  // ระบุเส้นทางของไอคอนภาพ
                                  width: 110, // กำหนดความกว้างของไอคอน
                                  height: 110, // กำหนดความสูงของไอคอน
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                //เพิ่ม
                                child: Text(
                                  "ออกกำลังกายสัปดาห์ละ 3-5 ครั้ง ครั้งละ 30 นาที",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center, //เพิ่ม
                                ),
                              ), //เพิ่ม
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'images/healthy-food 1.png',
                                  // ระบุเส้นทางของไอคอนภาพ
                                  width: 110, // กำหนดความกว้างของไอคอน
                                  height: 110, // กำหนดความสูงของไอคอน
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                //เพื่ม
                                child: Text(
                                  "รับประทานอาหารที่มีประโยชน์ งดของหวาน และของทอด",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center, //เพิ่ม
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'images/Smook.png',
                                  // ระบุเส้นทางของไอคอนภาพ
                                  width: 110, // กำหนดความกว้างของไอคอน
                                  height: 110, // กำหนดความสูงของไอคอน
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                //เพื่ม
                                child: Text(
                                  "งดสูบบุหรี่ หรือลดปริมาณการสูบบุหรี่ลง",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center, //เพื่ม
                                ),
                              ) //เพื่ม
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'images/Pisical.png',
                                  // ระบุเส้นทางของไอคอนภาพ
                                  width: 110, // กำหนดความกว้างของไอคอน
                                  height: 110, // กำหนดความสูงของไอคอน
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                //เพื่ม
                                child: Text(
                                  "พยายามควบคุมสภาพจิตใจของตัวเองให้มั่นคง",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center, //เพื่ม
                                ),
                              ) //เพื่ม
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.asset(
                                  'images/mum.png',
                                  // ระบุเส้นทางของไอคอนภาพ
                                  width: 150, // กำหนดความกว้างของไอคอน
                                  height: 150, // กำหนดความสูงของไอคอน
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                //เพื่ม
                                child: Text(
                                  "ออกกำลังกายสัปดาห์ละ 3-5 ครั้ง ครั้งละ 30 นาที",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Kanit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center, //เพื่ม
                                ),
                              ) //เพื่ม
                            ],
                          ),
                        ],
                      ),
                    )))
            : LayoutBuilder(
                //เพิ่มเป็นส่วนเปลี่ยนหน้าที่ยังไม่มีคำแนะนำ
                builder: (context, constraints) => SingleChildScrollView(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                            child: Container(
                          color: Color(0XFFFFEEDD),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: constraints.maxWidth,
                                    child: Text(
                                        "ยังไม่มีคำแนะนำสำหรับคุณ กรุณาทำแบบประเมินเพื่อรับคำแนะนำ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          fontFamily: 'Kanit',
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))))));
  }
}
