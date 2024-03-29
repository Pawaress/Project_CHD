import 'package:flutter/material.dart';
import 'package:project_chd/Main_page.dart';
import 'package:project_chd/Sign_In.dart';
import 'package:project_chd/Sign_In_V2.dart';

class S_Up_V2 extends StatefulWidget {
  @override
  _S_Up_V2State createState() => _S_Up_V2State();
}

class _S_Up_V2State extends State<S_Up_V2> {
  bool checkEditUsername = true;
  bool checkErrorEditUsername = false;
  Color colorErrorUsename = Color(0xFFD9D9D9);
  String textErrorUsername = '';
  bool checkEditPassword = true;
  bool checkErrorEditPassword = false;
  Color colorErrorPassword = Color(0xFFD9D9D9);
  String textErrorPassword = '';
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  List<bool> _SelectSign_Up = <bool>[false, true];
  Color color = Color(0xFFD9D9D9);
  final _formKey = GlobalKey<FormState>();
  Icon Eyes = Icon(
    Icons.visibility_off,
    color: Colors.grey,
  );
  bool CheckEye = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
            //เพิ่มมานะ
            builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight * 1.1,
                      //minWidth: constraints.maxWidth,
                    ),
                    child: IntrinsicHeight(
                      child: Container(
                          color: Color(0xFFEBA37A),
                          child: Form(
                            key: _formKey,
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      30, 30, 30, 30),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50, 60, 50, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              child: Card(
                                                  child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 30, 10, 60),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "HeartRisk Assessment",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                                Positioned(
                                    child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 140, 30, 0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: Card(
                                                    color: Color.fromARGB(
                                                        255, 235, 235, 229),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 20,
                                                                  20, 20),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        5,
                                                                        10,
                                                                        10),
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        "Create your Account",
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontSize:
                                                                              15,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Wrap(
                                                                  children: [
                                                                    Text(
                                                                      'Fill out the information below to create your account.',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.grey),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Container(
                                                                            margin:
                                                                                EdgeInsetsDirectional.zero,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              border: Border.all(
                                                                                color: checkErrorEditUsername ? Colors.red : Color(0xFFD9D9D9), // สีขอบ
                                                                                width: 1.5, // ความกว้างของเส้นขอบ
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                              color: Colors.white,
                                                                            ),
                                                                            width:
                                                                                constraints.maxWidth * 0.65,
                                                                            child:
                                                                                TextFormField(
                                                                              validator: (value) {
                                                                                //ตัวแปร value คือ ค่าที่ input เข้ามาอยากใช้ input(ของแมน) ให้ value = input ส่วนของอีเมลนะ ***
                                                                                //ใส่บรรทัดข้างล่างนี้เลย ใส่ input บรรณทัด 271
                                                                                value = 'Inputของแมน ส่วนของอีเมล';
                                                                              },
                                                                              controller: textEditingControllerUsername,
                                                                              decoration: InputDecoration(
                                                                                border: InputBorder.none,
                                                                                hintText: 'Email'.toString(),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20, 14, 0, 14),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          1,
                                                                          0,
                                                                          3),
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                            checkErrorEditUsername
                                                                                ? textErrorUsername
                                                                                : "",
                                                                            style:
                                                                                TextStyle(color: Colors.red),
                                                                          ),
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                              ""),
                                                                          Text(
                                                                              ""),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Container(
                                                                            margin:
                                                                                EdgeInsetsDirectional.zero,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              border: Border.all(
                                                                                color: checkErrorEditPassword ? Colors.red : Color(0xFFD9D9D9), // สีขอบ
                                                                                width: 1.5, // ความกว้างของเส้นขอบ
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(25),
                                                                              color: Colors.white,
                                                                            ),
                                                                            width:
                                                                                constraints.maxWidth * 0.65,
                                                                            child:
                                                                                TextFormField(
                                                                              validator: (value) {
                                                                                //ตัวแปร value คือ ค่าที่ input เข้ามาอยากใช้ input(ของแมน) ให้ value = input ส่วนของรหัสนะ ***
                                                                                //ใส่บรรทัดข้างล่างนี้เลย ใส่ input บรรณทัด 367
                                                                                value = 'Inputของแมน ส่วนของรหัส';
                                                                              },
                                                                              obscureText: checkEditPassword,
                                                                              controller: textEditingControllerPassword,
                                                                              decoration: InputDecoration(
                                                                                  border: InputBorder.none,
                                                                                  hintText: 'Password'.toString(),
                                                                                  suffixIcon: IconButton(
                                                                                    icon: Eyes,
                                                                                    color: Colors.black,
                                                                                    onPressed: () {
                                                                                      setState(() {
                                                                                        checkEditPassword = !checkEditPassword;

                                                                                        if (CheckEye) {
                                                                                          Eyes = Icon(
                                                                                            Icons.visibility,
                                                                                            color: Colors.grey,
                                                                                          );
                                                                                          CheckEye = false;
                                                                                        } else {
                                                                                          Eyes = Icon(
                                                                                            Icons.visibility_off,
                                                                                            color: Colors.grey,
                                                                                          );
                                                                                          CheckEye = true;
                                                                                        }
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 14, 0, 0)),
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
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        1,
                                                                        0,
                                                                        3),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(""),
                                                                    Text(
                                                                      checkErrorEditPassword
                                                                          ? textErrorPassword
                                                                          : "",
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.red),
                                                                    ),
                                                                    Text(""),
                                                                    Text(""),
                                                                    Text(""),
                                                                    Text(""),
                                                                    Text(""),
                                                                    Text(""),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
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
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ElevatedButton(
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                        backgroundColor:
                                                                            Color(0xFFEBA37A),
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            65,
                                                                            13,
                                                                            65,
                                                                            13),
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(30), // กำหนดความโค้งของมุมปุ่ม
                                                                        ),

                                                                        textStyle:
                                                                            TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        if (_formKey.currentState!.validate() &&
                                                                            !checkErrorEditUsername &&
                                                                            !checkErrorEditPassword) {
                                                                          // If the form is valid, display a snackbar. In the real world,
                                                                          // you'd often call a server or save the information in a database.
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            const SnackBar(content: Text('กำลังดำเนินการบันทึกข้อมูล...')),
                                                                          );
                                                                          Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => M_Pa(),
                                                                            ),
                                                                          );
                                                                        } else {}
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        'Register',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontFamily:
                                                                              'Inter',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              S_In_V2(),
                                                                      //ลิ้งไปหน้าคำแนะนำก่อนแชทบอท
                                                                    ),
                                                                  );
                                                                },
                                                                child: Text(
                                                                  'Login instead',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Color(
                                                                        0xFFEBA37A),
                                                                  ),
                                                                ),
                                                              ))
                                                        ],
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          )),
                    )))));
  }
}
