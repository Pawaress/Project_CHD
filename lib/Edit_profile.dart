import 'package:project_chd/Main_page.dart';
import 'package:flutter/material.dart';

import 'dart:io';

class E_Po extends StatefulWidget {
  @override
  _E_PoState createState() => _E_PoState();
}

class _E_PoState extends State<E_Po> {
  bool checkEditUsername = true;
  bool checkErrorEditUsername = false;
  Color colorErrorUsename = Color(0xFFD9D9D9);
  String textErrorUsername = 'username';
  //-----------------------
  bool checkEditPassword = true;
  bool checkErrorEditPassword = false;
  Color colorErrorPassword = Color(0xFFD9D9D9);
  String textErrorPassword = 'Password';
  //----------------
  bool checkEditEmail = true;
  bool checkErrorEditEmail = false;
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  List<bool> _Selectage = List.generate(3, (_) => false);
  List<bool> _Selectgender = List.generate(2, (_) => false);
  int gender = 0;
  int age = 1;
  bool Diabetes = false;
  bool Stroke = false;
  bool Obesity = false;
  bool Hypertension = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0XFFFFEEDD),
          //SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              color: Color(0XFFFFEEDD),
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              margin: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "แก้ไขบัญชีผู้ใช้",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Kanit',
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 65.0,
                                        backgroundImage:
                                            AssetImage('images/user-icon.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 10),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "ชื่อผู้ใช้",
                                                  style: TextStyle(
                                                      fontFamily: 'Kanit',
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(25, 10, 10, 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      // สีขอบ
                                                      width:
                                                          1, // ความกว้างของเส้นขอบ
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0XFFD9D9D9),
                                                  ),
                                                  width: 200,
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    readOnly: checkEditUsername,
                                                    controller:
                                                        textEditingControllerUsername,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "ชิมมินกยู",
                                                        suffixIcon: IconButton(
                                                          icon:
                                                              Icon(Icons.edit),
                                                          color: Colors.black,
                                                          onPressed: () {
                                                            setState(() {
                                                              checkEditUsername =
                                                                  !checkEditUsername;
                                                            });
                                                          },
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    14, 0, 0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "Email",
                                                  style: TextStyle(
                                                      fontFamily: 'Inters',
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(25, 10, 10, 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      // สีขอบ
                                                      width:
                                                          1, // ความกว้างของเส้นขอบ
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0XFFD9D9D9),
                                                  ),
                                                  width: 200,
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    readOnly: checkEditEmail,
                                                    controller:
                                                        textEditingControllerEmail,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText: "ชิมมินกยู",
                                                        suffixIcon: IconButton(
                                                          icon:
                                                              Icon(Icons.edit),
                                                          color: Colors.black,
                                                          onPressed: () {
                                                            setState(() {
                                                              checkEditEmail =
                                                                  !checkEditEmail;
                                                            });
                                                          },
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    14, 0, 0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "รหัสผ่าน",
                                                  style: TextStyle(
                                                      fontFamily: 'Kanit',
                                                      fontSize: 20),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(10, 10, 10, 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      // สีขอบ
                                                      width:
                                                          1, // ความกว้างของเส้นขอบ
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color(0XFFD9D9D9),
                                                  ),
                                                  width: 200,
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    readOnly: checkEditPassword,
                                                    obscureText:
                                                        checkEditPassword,
                                                    controller:
                                                        textEditingControllerPassword,
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            checkEditPassword
                                                                ? '********'
                                                                : 'Password',
                                                        suffixIcon: IconButton(
                                                          icon:
                                                              Icon(Icons.edit),
                                                          color: Colors.black,
                                                          onPressed: () {
                                                            setState(() {
                                                              checkEditPassword =
                                                                  !checkEditPassword;
                                                            });
                                                          },
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    14, 0, 0)),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          if (true) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => M_Pa(),
                                                //ตรงนี้ส่วนของลิ้งไปหน้าหลัก
                                              ),
                                            );
                                          }
                                        },
                                        child: CircleAvatar(
                                          radius: 32,
                                          backgroundImage: AssetImage(
                                              'images/Icon_True.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => M_Pa(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "กลับสู่หน้าหลัก",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 20,
                                            fontFamily: 'Kanit',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
