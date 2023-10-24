import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_chd/Before_chatbot_page.dart';
import 'package:project_chd/Call_1669_page.dart';
import 'package:project_chd/Edit_profile.dart';
import 'package:project_chd/Sign_In.dart';
import 'package:project_chd/User_Manual_page.dart';
import 'package:project_chd/advice.dart';
import 'package:project_chd/result.dart';
import 'Before_assessment_page.dart';

class M_Pa extends StatefulWidget {
  @override
  _M_PaState createState() => _M_PaState();
}

class _M_PaState extends State<M_Pa> {
  void _showAlertDialogExit(BuildContext context) {
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

              content: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ต้องการออกจากระบบใช่หรือไม่",
                            style: TextStyle(fontFamily: 'Kanit', fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEBA37A),
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(35, 8, 35, 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // กำหนดความโค้งของมุมปุ่ม
                              ),

                              textStyle: TextStyle(
                                  fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // เอาไว้ลิ้งไปหน้าอื่นอันนี้จะเป็นแบบย้อนกลับไปหน้าก่อนหน้านี้
                            },
                            child: Text(
                              'ไม่',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Kanit',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF0000),
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(35, 8, 35, 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // กำหนดความโค้งของมุมปุ่ม
                              ),

                              textStyle: TextStyle(
                                  fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => S_In(),
                                  //ตรงนี้ส่วนของลิ้งไปคำแนะนำ
                                  //ตอนนี้ยังไม่มีหน้านั้นเลยลิ้งหน้าเดิมไปก่อน
                                ),
                              );
                              // เอาไว้ลิ้งไปหน้าอื่นอันนี้จะเป็นแบบย้อนกลับไปหน้าก่อนหน้านี้
                            },
                            child: Text(
                              'ใช่',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Kanit',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
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
          ],
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String textss = "ปานกลาง"; //แมน ส่งค่ามาให้ตัวนี้นะ

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFEBA37A),
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
        body: LayoutBuilder(
            //เพิ่มมานะ
            builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight * 1,
                      //minWidth: constraints.maxWidth,
                    ),
                    child: IntrinsicHeight(
                      child: Container(
                        color: Color(0XFFFFEEDD),
                        child: Container(
                          color: Color(0XFFFFEEDD),
                          margin:
                              EdgeInsetsDirectional.fromSTEB(10, 30, 10, 30),
                          child: Column(
                            children: <Widget>[
                              Container(
                                  //เพิ่มนะ
                                  width: constraints.maxWidth * 1,
                                  child: FittedBox(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 10),
                                      child: Column(children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10,
                                                          15,
                                                          10,
                                                          textss == "ตํ่า"
                                                              ? 5
                                                              : 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          15,
                                                                          15),
                                                              child: Column(
                                                                children: [
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "WELCOME BACK",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                17,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontFamily: 'Inter'),
                                                                      ),
                                                                      Text(
                                                                        "ชิมมินกยู",
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              17,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    Navigator
                                                                        .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                Re(),
                                                                      ),
                                                                    );
                                                                  },
                                                                  child: Text(
                                                                    "คลิกเพื่อดูรายละเอียด",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF5A5959),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'Kanit',
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
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              children: [
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          textss == "ตํ่า"
                                                                              ? 20
                                                                              : 0),
                                                                      child:
                                                                          Text(
                                                                        "ระดับความเสี่ยง",
                                                                        style: TextStyle(
                                                                            height:
                                                                                1,
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'kanit'),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      textss, //ใส่ต่าตวามเสี่ยงตรงนี้(ต้องเป็น stringนะ)

                                                                      style: TextStyle(
                                                                          height:
                                                                              0.95,
                                                                          color: Color(
                                                                              0XFFFF8888),
                                                                          fontSize: textss == "ปานกลาง"
                                                                              ? 40
                                                                              : 50,
                                                                          fontFamily:
                                                                              'kanit'),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
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
                                  )),
                              Container(
                                //เพิ่มนะ
                                width: constraints.maxWidth * 1,
                                child: FittedBox(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Ad(),
                                                              //ตรงนี้ส่วนของลิ้งไปคำแนะนำ
                                                              //ตอนนี้ยังไม่มีหน้านั้นเลยลิ้งหน้าเดิมไปก่อน
                                                            ),
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          child: Card(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          27,
                                                                          7.5,
                                                                          27,
                                                                          7.5),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  'images/Icon_HandHeart.png',
                                                                                  // ระบุเส้นทางของไอคอนภาพ
                                                                                  width: 45, // กำหนดความกว้างของไอคอน
                                                                                  height: 45, // กำหนดความสูงของไอคอน
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                                                                                  child: Text(
                                                                                    "คำแนะนำ",
                                                                                    style: TextStyle(
                                                                                      fontSize: 13,
                                                                                      fontFamily: 'Kanit',
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            )
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
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      U_M_Pa(),
                                                              //ตรงนี้ส่วนของลิ้งไปคำแนะนำ
                                                              //ตอนนี้ยังไม่มีหน้านั้นเลยลิ้งหน้าเดิมไปก่อน
                                                            ),
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          child: Card(
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          5,
                                                                          4,
                                                                          5),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            3,
                                                                            2.5,
                                                                            3,
                                                                            2.5),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  'images/book.png',
                                                                                  // ระบุเส้นทางของไอคอนภาพ
                                                                                  width: 45, // กำหนดความกว้างของไอคอน
                                                                                  height: 45, // กำหนดความสูงของไอคอน
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                                                                                  child: Text(
                                                                                    "คู่มือ",
                                                                                    style: TextStyle(
                                                                                      fontSize: 13,
                                                                                      fontFamily: 'Kanit',
                                                                                    ),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            )
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
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          _showAlertDialogExit(
                                                              context);
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          child: Card(
                                                            color: Color(
                                                                0xFFFF4D4D),
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30,
                                                                          17.5,
                                                                          30,
                                                                          17.5),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  'images/Icon_Exit.png',
                                                                                  // ระบุเส้นทางของไอคอนภาพ
                                                                                  width: 25, // กำหนดความกว้างของไอคอน
                                                                                  height: 25, // กำหนดความสูงของไอคอน
                                                                                ),
                                                                              ],
                                                                            )
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
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  //เพิ่มนะ
                                  width: constraints.maxWidth * 1,
                                  child: FittedBox(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 10, 0, 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "* กรุณาเลือกเมนูเกี่ยวกับโรคหลอดเลือดหัวใจที่คุณต้องการ",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Kanit',
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                //เพิ่มนะ
                                width: constraints.maxWidth * 1,
                                child: FittedBox(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Column(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Card(
                                            color: Color(0xFFEBA37A),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional.all(
                                                          10),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            Image.asset(
                                                              'images/icon.png',
                                                              // ระบุเส้นทางของไอคอนภาพ
                                                              width:
                                                                  50, // กำหนดความกว้างของไอคอน
                                                              height:
                                                                  50, // กำหนดความสูงของไอคอน
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "CHD 10 years risk score",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Text(
                                                              "ประเมินความเสี่ยงในการเป็นโรคหลอดเลือดหัวใจ",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      11.5,
                                                                  fontFamily:
                                                                      'Kanit'),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            B_As(),
                                                                    //ลิ้งไปหน้าก่อนแบบประเมิน
                                                                  ),
                                                                );
                                                              },
                                                              child: Text(
                                                                "คลิกเพื่อดูรายละเอียด",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        11.5,
                                                                    fontFamily:
                                                                        'Kanit',
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline),
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
                                ),
                              ),
                              Container(
                                  //เพิ่มนะ
                                  width: constraints.maxWidth * 1,
                                  child: FittedBox(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Column(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: Card(
                                              color: Color(0xFFEBA37A),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .all(10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Column(
                                                            children: [
                                                              Image.asset(
                                                                'images/icon1.png',
                                                                // ระบุเส้นทางของไอคอนภาพ
                                                                width:
                                                                    50, // กำหนดความกว้างของไอคอน
                                                                height:
                                                                    50, // กำหนดความสูงของไอคอน
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Q&A",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                "สอบถามเกี่ยวกับโรคหลอดเลือดหัวใจ                ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        11.5,
                                                                    fontFamily:
                                                                        'Kanit'),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              B_Ch(),
                                                                      //ลิ้งไปหน้าคำแนะนำก่อนแชทบอท
                                                                    ),
                                                                  );
                                                                },
                                                                child: Text(
                                                                  "คลิกเพื่อเริ่มสอบถาม",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          11.5,
                                                                      fontFamily:
                                                                          'Kanit',
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline),
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
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )))));
  }
}
