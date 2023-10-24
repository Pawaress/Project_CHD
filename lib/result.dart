import 'package:flutter/material.dart';
import 'package:project_chd/Assessment_page.dart';
import 'package:project_chd/Assessment_page_V2.dart';

class Re extends StatefulWidget {
  @override
  ReState createState() => ReState();
}

class ReState extends State<Re> {
  @override
  bool check = true; //เพิ่มเพื่อเช็ค เพื่อ เปลี่ยนหน้าที่ยังไม่มีผลลัพธ์
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
                  "ทำไมคุณถึงเสี่ยง",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'kanit', fontWeight: FontWeight.bold),
                ),
                Text(
                  "",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        body: check == true
            ? LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight * 1,
                          //minWidth: constraints.maxWidth,
                        ),
                        child: IntrinsicHeight(
                          child: Container(
                            color: Color(0XFFFFEEDD),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  60, 50, 60, 45),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      //ก่อนหน้านี้มีpaddingครอบ Row ตัวนี้เอาออกนะ
                                      children: [
                                        Container(
                                            //เพิ่ม
                                            width: constraints.maxWidth *
                                                0.2, //เพิ่ม
                                            child: FittedBox(
                                              //เพิ่ม
                                              child: Text(
                                                "ความเสี่ยง",
                                                style: TextStyle(
                                                  height: 1,
                                                  color: Colors.red,
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19,
                                                ),
                                              ),
                                            ) //เพิ่ม
                                            ) //เพื่ม
                                      ],
                                    ),
                                    Container(
                                      //เพื่ม
                                      width: constraints.maxWidth * 0.4, //เพิ่ม
                                      child: FittedBox(
                                        //เพิ่ม
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                      ), //เพิ่ม
                                    ), //เพิ่ม
                                    Container(
                                      //เพิ่ม
                                      width: constraints.maxWidth * 0.8, //เพิ่ม
                                      child: FittedBox(
                                        //เพิ่ม
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                      ), //เพิ่ม
                                    ), //เพิ่ม
                                    Container(
                                      //เพิ่ม
                                      width: constraints.maxWidth * 0.8, //เพิ่ม
                                      child: FittedBox(
                                        //เพิ่ม
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 10),
                                          child: Column(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: Card(
                                                  color: Color(0xFFFF8888),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .all(5),
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
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          4,
                                                                          0),
                                                              child: Column(
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    child: Card(
                                                                      child: Image
                                                                          .asset(
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
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'ปริมาณกลูโคสของคุณสูงกว่าระดับปกติ',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Kanit',
                                                                              fontSize: 12.5,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'อาจบ่งบอกว่าคุณเสี่ยงที่จะเป็นโรคเบาหวาน',
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: 'Kanit',
                                                                              fontSize: 12.5,
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
                                      ), //เพิ่ม
                                    ), //เพิ่ม
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
            : LayoutBuilder(
                //เพิ่มเป็นส่วนเปลี่ยนหน้าที่ยังไม่มีผลลัพธ์
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
                                        "ยังไม่มีผลลัพธ์หรับคุณ กรุณาทำแบบประเมินเพื่อรับผลลัพธ์",
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
