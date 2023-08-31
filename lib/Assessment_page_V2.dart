import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_chd/Edit_profile.dart';
import 'package:toggle_switch/toggle_switch.dart'; //ต้อง

class A_Pa_V2 extends StatefulWidget {
  @override
  _A_Pa_V2State createState() => _A_Pa_V2State();
}

enum SingingCharacter { lafayette, jefferson }

class _A_Pa_V2State extends State<A_Pa_V2> {
  /*
    ***กล่องที่ให้เพิ่มมา 2 อัน กล่องที่ 1 อยู่ในบรรณทัด 897 ถึง 1286 , กล่องที่ 2 อยู่ในบรรณทัด 1303 ถึง 1690
    ส่วนตัวแปรที่สามารถเก็บไปใช้ต่อ อยู่ บรรณทัด 1732 ถึง 1736 
   */
  //ค่าที่ได้จากตัวแปรใช้จริง จะอยู่ส่วนของท้ายๆโค้ด
  //ตัวแปรไว้รับค่า wiget ต่างๆ ---------------------------------------------------------------------------------
  //set ค่า TextController ของ textfield ส่วนของ อายุ ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0
  TextEditingController textEditingControllerAge =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ ประวิการสูบบุหรี่ต่อวัน ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0
  TextEditingController textEditingControllerSmokeperday =
      TextEditingController(text: '0');

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )-----------------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ textEditingControllerSmokeperday ****
  TextEditingController textEditingControllerSmokeperdayBox1 =
      TextEditingController(text: '0');
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ textEditingControllerSmokeperday ****
  TextEditingController textEditingControllerSmokeperdayBox2 =
      TextEditingController(text: '0');
  // -------------------------------------------------

  //set ค่า ให้ปุ่ม ToggleButtons ที่มี 2 ปุ่มอันแรก ให้แสดงแบบกด(true)  แล้วอันที่สองคือแสดงแบบยังไม่กด(false)
  List<bool> _Selectgender = <bool>[true, false];
  //set ค่า ให้ปุ่ม ToggleButtons ที่มี 2 ปุ่มอันแรก ให้แสดงแบบกด(true)  แล้วอันที่สองคือแสดงแบบยังไม่กด(false)
  List<bool> _SelectgenSmoke = <bool>[true, false];

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ _SelectgenSmoke ****
  List<bool> _SelectgenSmokeBox1 = <bool>[true, false];
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ _SelectgenSmoke ****
  List<bool> _SelectgenSmokeBox2 = <bool>[true, false];
  //-----------------------------------------

  //set ageslider เป็น double เพื่อรับค่า จาก slider (sliderมันรับเฉพาะDoubleเท่านั้น)
  double ageslider = 1.0;
  //set smokeperdayslider เป็น double เพื่อรับค่า จาก slider (sliderมันรับเฉพาะDoubleเท่านั้น)
  double smokeperdayslider = 1.0;

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ smokeperdayslider ****
  double smokeperdaysliderBox1 = 1.0;
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ smokeperdayslider ****
  double smokeperdaysliderBox2 = 1.0;
  //----------------------------------------------------------------------------------------------------------

  //ตัวแปรใช้จริง ข้างล่าง ***ค่าที่จะใช้จริงจะอยู่ส่วนปุ่มอันท้ายสุดของ code ------------------------------------------------------------------
  //ตัวแปรนี้มีไว้เก็บค่า อายุ ตามค่า slider ที่ เราเลื่อน หรือ เติมในtextfleid
  int age = 0;
  //ตัวแปรนี้มีไว้เก็บค่า เพศ ชาย = 0 หญิง = 1 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 324 กับ 328
  int gender = 0;
  //ตัวแปรนี้มีไว้เก็บค่า ประวัติการสูบบุหรี่ มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 764 กับ 768
  int smoke = 1;

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ smoke ****
  int smokeBox1 = 1;
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ smoke ****
  int smokeBox2 = 1;
  //----------------------------------------

  //ตัวแปรนี้มีไว้เก็บค่า จำนวนการสุบบุหรี่ต่อวัน ตามค่า slider ที่ เราเลื่อน หรือ เติมใน textfleid
  int smokeperday = 0;

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ smokeperday ****
  int smokeperdayBox1 = 0;
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ smokeperday ****
  int smokeperdayBox2 = 0;
  //----------------------------------------

  //ตัวแปรนี้มีไว้เก็บค่า ระกับการศึกษา จะมี 4 ค่าตามคือ 1 2 3 4 ของ radio ที่เราเลือก สามารถแก้ค่า ทั้ง 4 ได้ในบรรทัดตามลำดับดังนี้ 542 575 608 641
  int EducationLevel = 0;

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 1 ) ใช้เหมือนค่า ของ EducationLevel ****
  int EducationLevelBox1 = 0;
  //  ++++++ ( กล่องที่ให้เพิ่มกล่องที่ 2 ) ใช้เหมือนค่า ของ EducationLevel ****
  int EducationLevelBox2 = 0;
  //----------------------------------------

  //---------------------------------------------------------------------------------------------------------------------------
  @override
  void initState() {
    //function มีไว้ set EducationLevel = 1; เมื่อเริ่ม มันจะอยู่ช้อย radio ที่ 1 ก่อน
    super.initState();

    EducationLevel = 1;
    // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
    EducationLevelBox1 = 1;
    EducationLevelBox2 = 1;
    //----------------------------------------
  }

  setEducationLevel(int val) {
    //function มีไว้ อัพเดทค่า EducationLevel
    setState(() {
      EducationLevel = val;
    });
  }

  // ------เพิ่มของ (กล่องที่ 1 กับ 2 )----------
  setEducationLevelBox1(int val) {
    //function มีไว้ อัพเดทค่า EducationLevelBox1
    setState(() {
      EducationLevelBox1 = val;
    });
  }

  setEducationLevelBox2(int val) {
    //function มีไว้ อัพเดทค่า EducationLevelBox2
    setState(() {
      EducationLevelBox2 = val;
    });
  }
  //----------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                        fontWeight: FontWeight.bold, fontFamily: 'Inter'),
                  ),
                ),
                Text(
                  "CHD 10 years risk score",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Inter'),
                ),
                Text(
                  "",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          //color: Color(0XFFFFEEDD),
          child: Container(
            color: Color(0XFFF9CEA5),
            child: Container(
              color: Color(0XFFF9CEA5),
              margin: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "ข้อมูลด้านประชากร",
                          style: TextStyle(
                            color: Color(0XFF5A5959),
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 20, 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                //ของใน card เป็น row ๆ ไป
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "เพศ:",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Kanit',
                                                              fontSize: 15),
                                                        ),
                                                        Text("        "),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(30,
                                                                      0, 0, 0),
                                                          child: ToggleButtons(
                                                            constraints:
                                                                BoxConstraints(
                                                                    maxWidth:
                                                                        90,
                                                                    minWidth:
                                                                        70,
                                                                    minHeight:
                                                                        35,
                                                                    maxHeight:
                                                                        35),
                                                            isSelected:
                                                                _Selectgender,
                                                            children: <Widget>[
                                                              Container(
                                                                  width: 20,
                                                                  child:
                                                                      new Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: <
                                                                        Widget>[
                                                                      new Icon(
                                                                        Icons
                                                                            .male,
                                                                        size:
                                                                            20,
                                                                        color: Colors
                                                                            .blue,
                                                                      ),
                                                                    ],
                                                                  )),
                                                              Container(
                                                                  width: 20,
                                                                  child:
                                                                      new Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: <
                                                                        Widget>[
                                                                      new Icon(
                                                                        Icons
                                                                            .female,
                                                                        size:
                                                                            20.0,
                                                                        color: Colors
                                                                            .pink,
                                                                      ),
                                                                    ],
                                                                  )),
                                                            ],
                                                            onPressed:
                                                                (int index) {
                                                              setState(() {
                                                                for (int i = 0;
                                                                    i <
                                                                        _Selectgender
                                                                            .length;
                                                                    i++) {
                                                                  _Selectgender[
                                                                          i] =
                                                                      i ==
                                                                          index;
                                                                }
                                                                if (_Selectgender[
                                                                    0]) {
                                                                  gender = 0;
                                                                  print(
                                                                      "ชาย = $gender");
                                                                } else {
                                                                  gender = 1;
                                                                  print(
                                                                      "หญิง = $gender");
                                                                }
                                                              });
                                                            },
                                                            borderRadius:
                                                                const BorderRadius
                                                                        .all(
                                                                    Radius
                                                                        .circular(
                                                                            20)),
                                                          ),
                                                        ),
                                                        Text(
                                                            "                   "),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "อายุ",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Kanit',
                                                              fontSize: 15),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20, 0, 0, 0),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                Slider(
                                                                  value:
                                                                      ageslider,
                                                                  onChanged:
                                                                      (newRating) {
                                                                    setState(
                                                                      () => ageslider =
                                                                          newRating, //รับค่าจาก slider มาใน agelider
                                                                    );
                                                                    setState(
                                                                        () {
                                                                      age = ageslider //เปลี่ยน double เป็น integer เพื่ออะไปใช้ต่อ
                                                                          .floor();

                                                                      //ค่า age คือค่าใช้จริง
                                                                    });
                                                                    setState(
                                                                        () {
                                                                      //รับค่าจาก slider มาใน textEditingController ของ textfleid เพื่อแสดงค่าปัจุบันให้ user เห็น
                                                                      textEditingControllerAge
                                                                          .text = (newRating
                                                                              .floor())
                                                                          .toString();
                                                                    });
                                                                  },
                                                                  min: 0,
                                                                  max: 100,
                                                                  divisions:
                                                                      100,
                                                                  label: "$age",
                                                                )
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Container(
                                                                  width:
                                                                      27, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      TextFormField(
                                                                    validator:
                                                                        (value) {},
                                                                    controller:
                                                                        textEditingControllerAge,
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          "$age",
                                                                      border: InputBorder
                                                                          .none,

                                                                      //textEditingControllerAge
                                                                    ),
                                                                    // ค่าอื่น ๆ ของ TextField
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                children: [
                                                                  Text(
                                                                    "ปี",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Kanit',
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ]))
                                                ],
                                              ),
                                            ),
                                          ],
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "ข้อมูลด้านพฤติกรรม",
                          style: TextStyle(
                            color: Color(0XFF5A5959),
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Card(
                                child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Column(
                                children: [
                                  //Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0,0, 0),)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "ประวัติการศึกษา",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "                                                                ",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 1,
                                                      groupValue:
                                                          EducationLevel,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevel = $val");
                                                        setEducationLevel(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ต่ำกว่าระดับมัธยมตอนต้น",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                     "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 2,
                                                      groupValue:
                                                          EducationLevel,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevel = $val");
                                                        setEducationLevel(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับมัธยมตอนปลาย",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                           "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 3,
                                                      groupValue:
                                                          EducationLevel,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevel = $val");
                                                        setEducationLevel(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                                 "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 4,
                                                      groupValue:
                                                          EducationLevel,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevel = $val");
                                                        setEducationLevel(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "สูงกว่าระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                        "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "ประวัติการสูบบุหรี่",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "หมายเหตุ : ถ้าปัจจุบันเลิกสูบบุหรี่แล้วให้เลือก มี",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 255, 17, 0),
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 0, 0),
                                              child: ToggleButtons(
                                                constraints: BoxConstraints(
                                                    maxWidth: 55,
                                                    minWidth: 50,
                                                    minHeight: 35,
                                                    maxHeight: 35),
                                                isSelected: _SelectgenSmoke,
                                                children: <Widget>[
                                                  Container(
                                                      width: 20,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                  Container(
                                                      width: 25,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "ไม่มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                ],
                                                onPressed: (int index) {
                                                  setState(() {
                                                    for (int i = 0;
                                                        i <
                                                            _SelectgenSmoke
                                                                .length;
                                                        i++) {
                                                      _SelectgenSmoke[i] =
                                                          i == index;
                                                    }
                                                    if (_SelectgenSmoke[0]) {
                                                      smoke = 1;
                                                      print(
                                                          "มีประวัติสูบบุหรี่ = $smoke");
                                                    } else {
                                                      smoke = 0;
                                                      print(
                                                          "ไม่มีมีประวัติสูบบุหรี่ = $smoke");
                                                    }
                                                  });
                                                },
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ปริมาณบุหรี่ที่สูบต่อวัน",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                            "                                                   ")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Slider(
                                                  value: smokeperdayslider,
                                                  onChanged: (newRating) {
                                                    setState(
                                                      () => smokeperdayslider =
                                                          newRating, //รับค่าจากslider มาใน agelider
                                                    );
                                                    setState(() {
                                                      smokeperday =
                                                          smokeperdayslider //เปลี่ยน double เป็น integer เพื่ออะไปใช้ต่อ
                                                              .floor();
                                                    });
                                                    setState(() {
                                                      //รับค่าจาก slider มาใน textEditingController ของ textfleid เพื่อแสดงค่าปัจุบันให้ user เห็น
                                                      textEditingControllerSmokeperday
                                                              .text =
                                                          (newRating.floor())
                                                              .toString();
                                                    });
                                                  },
                                                  min: 0,
                                                  max: 100,
                                                  divisions: 100,
                                                  label: "$smokeperday",
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  width:
                                                      27, // กำหนดความกว้างที่คุณต้องการ
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    controller:
                                                        textEditingControllerSmokeperday,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText: "$smokeperday",
                                                      border: InputBorder.none,

                                                      //textEditingControllerAge
                                                    ),
                                                    // ค่าอื่น ๆ ของ TextField
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "มวนต่อวัน",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]))
                                ],
                              ),
                            )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "ข้อมูลประวัติการแพทย์ (กล่องที่ 1)",
                          style: TextStyle(
                            color: Color(0XFF5A5959),
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    // เริ่ม กล่อง ที่ 1 ตรงนนี้นะ ****
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Card(
                                child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Column(
                                children: [
                                  //Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0,0, 0),)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "ประวัติการศึกษา",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "                                                                ",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 1,
                                                      groupValue:
                                                          EducationLevelBox1,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox1 = $val");
                                                        setEducationLevelBox1(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ต่ำกว่าระดับมัธยมตอนต้น",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                     "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 2,
                                                      groupValue:
                                                          EducationLevelBox1,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox1 = $val");
                                                        setEducationLevelBox1(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับมัธยมตอนปลาย",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                           "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 3,
                                                      groupValue:
                                                          EducationLevelBox1,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox1 = $val");
                                                        setEducationLevelBox1(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                                 "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 4,
                                                      groupValue:
                                                          EducationLevelBox1,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox1 = $val");
                                                        setEducationLevelBox1(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "สูงกว่าระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                        "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "ประวัติการสูบบุหรี่",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "หมายเหตุ : ถ้าปัจจุบันเลิกสูบบุหรี่แล้วให้เลือก มี",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 255, 17, 0),
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 0, 0),
                                              child: ToggleButtons(
                                                constraints: BoxConstraints(
                                                    maxWidth: 55,
                                                    minWidth: 50,
                                                    minHeight: 35,
                                                    maxHeight: 35),
                                                isSelected: _SelectgenSmokeBox1,
                                                children: <Widget>[
                                                  Container(
                                                      width: 20,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                  Container(
                                                      width: 25,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "ไม่มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                ],
                                                onPressed: (int index) {
                                                  setState(() {
                                                    for (int i = 0;
                                                        i <
                                                            _SelectgenSmokeBox1
                                                                .length;
                                                        i++) {
                                                      _SelectgenSmokeBox1[i] =
                                                          i == index;
                                                    }
                                                    if (_SelectgenSmokeBox1[
                                                        0]) {
                                                      smokeBox1 = 1;
                                                      print(
                                                          "มีประวัติสูบบุหรี่Box1 = $smokeBox1");
                                                    } else {
                                                      smokeBox1 = 0;
                                                      print(
                                                          "ไม่มีมีประวัติสูบบุหรี่Box1 = $smokeBox1");
                                                    }
                                                  });
                                                },
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ปริมาณบุหรี่ที่สูบต่อวัน",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                            "                                                   ")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Slider(
                                                  value: smokeperdaysliderBox1,
                                                  onChanged: (newRating) {
                                                    setState(
                                                      () => smokeperdaysliderBox1 =
                                                          newRating, //รับค่าจากslider มาใน agelider
                                                    );
                                                    setState(() {
                                                      smokeperdayBox1 =
                                                          smokeperdaysliderBox1 //เปลี่ยน double เป็น integer เพื่ออะไปใช้ต่อ
                                                              .floor();
                                                    });
                                                    setState(() {
                                                      //รับค่าจาก slider มาใน textEditingController ของ textfleid เพื่อแสดงค่าปัจุบันให้ user เห็น
                                                      textEditingControllerSmokeperdayBox1
                                                              .text =
                                                          (newRating.floor())
                                                              .toString();
                                                    });
                                                  },
                                                  min: 0,
                                                  max: 100,
                                                  divisions: 100,
                                                  label: "$smokeperdayBox1",
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  width:
                                                      27, // กำหนดความกว้างที่คุณต้องการ
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    controller:
                                                        textEditingControllerSmokeperdayBox1,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "$smokeperdayBox1",
                                                      border: InputBorder.none,

                                                      //textEditingControllerAge
                                                    ),
                                                    // ค่าอื่น ๆ ของ TextField
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "มวนต่อวัน",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]))
                                ],
                              ),
                            )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "ข้อมูลประวัติการแพทย์ (กล่องที่ 2)",
                          style: TextStyle(
                            color: Color(0XFF5A5959),
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Card(
                                child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Column(
                                children: [
                                  //Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0,0, 0),)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "ประวัติการศึกษา",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "                                                                ",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 1,
                                                      groupValue:
                                                          EducationLevelBox2,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox2 = $val");
                                                        setEducationLevelBox2(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ต่ำกว่าระดับมัธยมตอนต้น",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                     "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 2,
                                                      groupValue:
                                                          EducationLevelBox2,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox2 = $val");
                                                        setEducationLevelBox2(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับมัธยมตอนปลาย",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                           "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 3,
                                                      groupValue:
                                                          EducationLevelBox2,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox2 = $val");
                                                        setEducationLevelBox2(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "ระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                                 "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 24,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                      value: 4,
                                                      groupValue:
                                                          EducationLevelBox2,
                                                      //activeColor: Colors.green,
                                                      onChanged: (val) {
                                                        print(
                                                            "EducationLevelBox2 = $val");
                                                        setEducationLevelBox2(
                                                            int.parse(val
                                                                .toString()));
                                                      }),
                                                  Text(
                                                    "สูงกว่าระดับปริญญาตรี",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      "                                        "),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "ประวัติการสูบบุหรี่",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "หมายเหตุ : ถ้าปัจจุบันเลิกสูบบุหรี่แล้วให้เลือก มี",
                                              style: TextStyle(
                                                  fontFamily: 'Kanit',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 255, 17, 0),
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(30, 0, 0, 0),
                                              child: ToggleButtons(
                                                constraints: BoxConstraints(
                                                    maxWidth: 55,
                                                    minWidth: 50,
                                                    minHeight: 35,
                                                    maxHeight: 35),
                                                isSelected: _SelectgenSmokeBox2,
                                                children: <Widget>[
                                                  Container(
                                                      width: 20,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                  Container(
                                                      width: 25,
                                                      child: new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Text(
                                                            "ไม่มี",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      )),
                                                ],
                                                onPressed: (int index) {
                                                  setState(() {
                                                    for (int i = 0;
                                                        i <
                                                            _SelectgenSmokeBox2
                                                                .length;
                                                        i++) {
                                                      _SelectgenSmokeBox2[i] =
                                                          i == index;
                                                    }
                                                    if (_SelectgenSmokeBox2[
                                                        0]) {
                                                      smokeBox2 = 1;
                                                      print(
                                                          "มีประวัติสูบบุหรี่ = $smokeBox2");
                                                    } else {
                                                      smokeBox2 = 0;
                                                      print(
                                                          "ไม่มีมีประวัติสูบบุหรี่ = $smokeBox2");
                                                    }
                                                  });
                                                },
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(20)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ปริมาณบุหรี่ที่สูบต่อวัน",
                                          style: TextStyle(
                                              fontFamily: 'Kanit',
                                              fontSize: 15),
                                        ),
                                        Text(
                                            "                                                   ")
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Slider(
                                                  value: smokeperdaysliderBox2,
                                                  onChanged: (newRating) {
                                                    setState(
                                                      () => smokeperdaysliderBox2 =
                                                          newRating, //รับค่าจากslider มาใน agelider
                                                    );
                                                    setState(() {
                                                      smokeperdayBox2 =
                                                          smokeperdaysliderBox2 //เปลี่ยน double เป็น integer เพื่ออะไปใช้ต่อ
                                                              .floor();
                                                    });
                                                    setState(() {
                                                      //รับค่าจาก slider มาใน textEditingController ของ textfleid เพื่อแสดงค่าปัจุบันให้ user เห็น
                                                      textEditingControllerSmokeperdayBox2
                                                              .text =
                                                          (newRating.floor())
                                                              .toString();
                                                    });
                                                  },
                                                  min: 0,
                                                  max: 100,
                                                  divisions: 100,
                                                  label: "$smokeperdayBox2",
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  width:
                                                      27, // กำหนดความกว้างที่คุณต้องการ
                                                  child: TextFormField(
                                                    validator: (value) {},
                                                    controller:
                                                        textEditingControllerSmokeperdayBox2,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "$smokeperdayBox2",
                                                      border: InputBorder.none,

                                                      //textEditingControllerAge
                                                    ),
                                                    // ค่าอื่น ๆ ของ TextField
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "มวนต่อวัน",
                                                    style: TextStyle(
                                                        fontFamily: 'Kanit',
                                                        fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]))
                                ],
                              ),
                            )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4FCCBD),
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // กำหนดความโค้งของมุมปุ่ม
                            ),

                            textStyle: TextStyle(
                                fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                          ),
                          onPressed: () {
                            /*เงื่อนไขด้านล่างนี้มีไว้เช็ค ค่า age(อายุ) กับ ค่า textEditingControllerAge(ค่าที่userป้อนมา) ถ้าไม่เท่าให้
                              age = textEditingControllerAge;
                              ** หรือก็คือ ค่าที่userใส่เข้ามาจะไม่เท่ากับของ slider เลยจะต้องมีเงื่อนไขนี้ไว้เพื่ออัพเดทค่าให้ตรงกับที่userใส่มานั้นเอง
                            */
                            if (int.parse(textEditingControllerAge.text) !=
                                age) {
                              age = int.parse(textEditingControllerAge.text);
                            }
                            /*เงื่อนไขด้านล่างนี้มีไว้เช็ค ค่า age(อายุ) กับ ค่า textEditingControllerAge(ค่าที่userป้อนมา) ถ้าไม่เท่าให้
                              age = textEditingControllerAge;
                              ** หรือก็คือ ค่าที่userใส่เข้ามาจะไม่เท่ากับของ slider เลยจะต้องมีเงื่อนไขนี้ไว้เพื่ออัพเดทค่าให้ตรงกับที่userใส่มานั้นเอง
                            */
                            if (int.parse(
                                    textEditingControllerSmokeperday.text) !=
                                smokeperday) {
                              smokeperday = int.parse(
                                  textEditingControllerSmokeperday.text);
                            }
                            //ค่าที่ print ออกมาคือค่าที่ใช้จริง ด้านล่างค่าจะถูกต้องเมื่อกดปุ่มนี้เพราะมีเงื่อนไขด้านบนมาเช็คตัวแปรบางตัวก่อน
                            //หรือก็คือสามารถใช้ ค่าที่เป็น $ชื่อตัวแปร ด้านล่างได้เลย ตัวแปรทั้งหมดนี้เป็นแบบ integer
                            //ส่วนที่ printนี้จะเห็นได้ใน Debug console
                            print("-----------------------");
                            print("เพศ = $gender");
                            print('อายุ = $age');
                            print('ระดับการศึกษา = $EducationLevel');
                            print('สูบุหรี่ต่อวัน = $smokeperday');
                            print('ประวิติสูบหรี่ =  $smoke');
                            print("-----------------------");
                          },
                          child: Text(
                            'ประเมินความเสี่ยง',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
