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
                "ทำไมคุณถึงเสี่ยง",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontFamily: 'kanit', fontWeight: FontWeight.bold),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Container(
                      color: Color(0XFFFFEEDD),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 50, 45, 45),
                        child: Container(
                          color: Color(0XFFFFEEDD),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      "ความเสี่ยง",
                                      style: TextStyle(
                                        height: 1,
                                        color: Colors.red,
                                        fontFamily: 'Kanit',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "40%",
                                    style: TextStyle(
                                      height: 1.1,
                                      color: Colors.red,
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 100,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "ในการเกิดโรคหลอดเลือดหัวใจใน 10 ปี",
                                    style: TextStyle(
                                      height: 1,
                                      color: Colors.red,
                                      fontFamily: 'Kanit',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 50, 0, 10),
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color: Color(0xFF4FCCBD),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(5),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 4, 0),
                                                    child: Column(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Card(
                                                            child: Image.asset(
                                                              'images/HRing.png',
                                                              // ระบุเส้นทางของไอคอนภาพ
                                                              width:
                                                                  50, // กำหนดความกว้างของไอคอน
                                                              height:
                                                                  50, // กำหนดความสูงของไอคอน
                                                            ),
                                                          ),
                                                        )
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
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'ปริมาณคอเลสเตอรอลของคุณสูงกว่าระดับปกติ',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Kanit',
                                                                    fontSize:
                                                                        12.5,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'ส่งผลอันตรายต่อระบบหัวใจและหลอดเลือด',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Kanit',
                                                                    fontSize:
                                                                        12.5,
                                                                  ),
                                                                ),
                                                              ],
                                                            ))
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Column(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Card(
                                        color: Color(0xFF4FCCBD),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.all(5),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 4, 0),
                                                    child: Column(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Card(
                                                            child: Image.asset(
                                                              'images/mitter.png',
                                                              // ระบุเส้นทางของไอคอนภาพ
                                                              width:
                                                                  50, // กำหนดความกว้างของไอคอน
                                                              height:
                                                                  50, // กำหนดความสูงของไอคอน
                                                            ),
                                                          ),
                                                        )
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
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'ปริมาณกลูโคสของคุณสูงกว่าระดับปกติ',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Kanit',
                                                                    fontSize:
                                                                        12.5,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'อาจบ่งบอกว่าคุณเสี่ยงที่จะเป็นโรคเบาหวาน',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Kanit',
                                                                    fontSize:
                                                                        12.5,
                                                                  ),
                                                                ),
                                                              ],
                                                            ))
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF4FCCBD),

                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40, 10, 40, 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10), // กำหนดความโค้งของมุมปุ่ม
                                        ),

                                        textStyle: TextStyle(
                                            fontSize:
                                                15), // เปลี่ยนสีปุ่มเป็นสีแดง
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        // เอาไว้ลิ้งไปหน้าอื่นอันนี้จะเป็นแบบย้อนกลับไปหน้าก่อนหน้านี้
                                      },
                                      child: Text(
                                        'back',
                                        style: TextStyle(
                                          color: Colors.white,
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
                    ),
                  ),
                ),
              )),
    );
  }
}
