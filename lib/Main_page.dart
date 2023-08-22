import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_chd/Before_chatbot_page.dart';
import 'package:project_chd/Call_1669_page.dart';
import 'package:project_chd/Edit_profile.dart';
import 'package:project_chd/Sign_In.dart';
import 'Before_assessment_page.dart';

class M_Pa extends StatefulWidget {
  @override
  _M_PaState createState() => _M_PaState();
}

class _M_PaState extends State<M_Pa> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "HeartRisk Assessment",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    fontSize: 22),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color(0XFFFFEEDD),
        child: Container(
          color: Color(0XFFFFEEDD),
          margin: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 15),
                                        child: Column(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "WELCOME BACK",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Inter'),
                                                ),
                                                Text(
                                                  "ชิมมินกยู",
                                                  style: TextStyle(
                                                    fontFamily: 'Kanit',
                                                    fontSize: 17,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => E_Po(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "คลิกเพื่อดูรายละเอียด",
                                              style: TextStyle(
                                                color: Color(0xFF5A5959),
                                                fontSize: 14,
                                                fontFamily: 'Kanit',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 5),
                                      child: Column(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "ความเสี่ยง",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Inter'),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "40%", //ใส่ต่าตวามเสี่ยงตรงนี้(ต้องเป็น stringนะ)
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          fontSize: 45,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Inter'),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage('images/user-icon.png'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => M_Pa(),
                                          //ตรงนี้ส่วนของลิ้งไปหน้าผลการประเมิน
                                          //ตอนนี้ยังไม่มีหน้านั้นเลยลิ้งหน้าเดิมไปก่อน
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color: Color(0xFF4FCCBD),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Image.asset(
                                                          'images/Icon_As.png',
                                                          // ระบุเส้นทางของไอคอนภาพ
                                                          width:
                                                              50, // กำหนดความกว้างของไอคอน
                                                          height:
                                                              50, // กำหนดความสูงของไอคอน
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ผลการประเมิน",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Kanit',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => M_Pa(),
                                          //ตรงนี้ส่วนของลิ้งไปคำแนะนำ
                                          //ตอนนี้ยังไม่มีหน้านั้นเลยลิ้งหน้าเดิมไปก่อน
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color: Color(0xFF4FCCBD),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Image.asset(
                                                          'images/Icon_HandHeart.png',
                                                          // ระบุเส้นทางของไอคอนภาพ
                                                          width:
                                                              50, // กำหนดความกว้างของไอคอน
                                                          height:
                                                              50, // กำหนดความสูงของไอคอน
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "คำแนะนำ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Kanit',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => E_Po(),
                                          //ตรงนี้ส่วนของลิ้งไปหน้าโปรไฟล์
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color: Color(0xFF4FCCBD),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Image.asset(
                                                          'images/user-icon.png',
                                                          // ระบุเส้นทางของไอคอนภาพ
                                                          width:
                                                              50, // กำหนดความกว้างของไอคอน
                                                          height:
                                                              50, // กำหนดความสูงของไอคอน
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "โปรไฟล์",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Kanit',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => S_In(),
                                          //ตรงนี้ส่วนของลิ้งไปหน้าโปรไฟล์
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color:
                                            Color.fromARGB(255, 255, 140, 120),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Column(
                                                      children: [
                                                        Image.asset(
                                                          'images/Icon_Exit.png',
                                                          // ระบุเส้นทางของไอคอนภาพ
                                                          width:
                                                              50, // กำหนดความกว้างของไอคอน
                                                          height:
                                                              50, // กำหนดความสูงของไอคอน
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "ออกจากระบบ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Kanit',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "* กรุณาเลือกเมนูที่คุณต้องการตรวจเกี่ยวกับโรคหลอดเลือดหัวใจ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Kanit',
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        color: Color(0xFF4FCCBD),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/icon.png',
                                          // ระบุเส้นทางของไอคอนภาพ
                                          width: 50, // กำหนดความกว้างของไอคอน
                                          height: 50, // กำหนดความสูงของไอคอน
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CHD 10 years risk score",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "ประเมินความเสี่ยงในการเป็นโรคหลอดเลือดหัวใจภายใน 10 ปี",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.5,
                                              fontFamily: 'Kanit'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => B_As(),
                                                //ลิ้งไปหน้าก่อนแบบประเมิน
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "คลิกเพื่อดูรายละเอียด",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                                fontFamily: 'Kanit',
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(
                        color: Color(0xFF4FCCBD),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/icon1.png',
                                          // ระบุเส้นทางของไอคอนภาพ
                                          width: 50, // กำหนดความกว้างของไอคอน
                                          height: 50, // กำหนดความสูงของไอคอน
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Q&A",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "สอบถามเกี่ยวกับโรคหลอดเลือดหัวใจ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.5,
                                              fontFamily: 'Kanit'),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => B_Ch(),
                                                //ลิ้งไปหน้าคำแนะนำก่อนแชทบอท
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "คลิกเพื่อเริ่มสอบถาม",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.5,
                                                fontFamily: 'Kanit',
                                                decoration:
                                                    TextDecoration.underline),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
