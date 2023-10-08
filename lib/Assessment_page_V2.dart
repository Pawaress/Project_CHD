import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_chd/Edit_profile.dart';
import 'package:toggle_switch/toggle_switch.dart'; //ต้อง
import 'package:flutter/services.dart';

class A_Pa_V2 extends StatefulWidget {
  @override
  _A_Pa_V2State createState() => _A_Pa_V2State();
}

enum SingingCharacter { lafayette, jefferson }

class _A_Pa_V2State extends State<A_Pa_V2> {
  //ค่าที่ได้จากตัวแปรใช้จริง จะอยู่ส่วนของท้ายๆโค้ด
  //ตัวแปรไว้รับค่า wiget ต่างๆ ---------------------------------------------------------------------------------
  //set ค่า TextController ของ textfield ส่วนของ อายุ ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 398
  TextEditingController textEditingControllerAge =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ ประวิการสูบบุหรี่ต่อวัน ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 822
  TextEditingController textEditingControllerSmokeperday =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ Cholesterolในเลือด ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 1406
  TextEditingController textEditingControllerCholesterol =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ ต่าความดันตัวบน ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 1483
  TextEditingController textEditingControllerSYS =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ ต่าความดันตัวล่าง ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 1559
  TextEditingController textEditingControllerDIA =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ อัตราการเต้นหัวใจ ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 1711
  TextEditingController textEditingControllerHR =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ ระดับนํ้าตาลในเลือด ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด 1787
  TextEditingController textEditingControllerGlucose =
      TextEditingController(text: '0');
  //set ค่า TextController ของ textfield ส่วนของ BMI ที่ user จะกรอกให้มีค่าเริ่มต้นที่ 0 บรรณทัด บรรณทัด 1635
  TextEditingController textEditingControllerBMI =
      TextEditingController(text: '0');

  //set ค่า ให้ปุ่ม ToggleButtons ที่มี 2 ปุ่มอันแรก ให้แสดงแบบกด(true) แล้วอันที่สองคือแสดงแบบยังไม่กด(false)ของทุก ToggleButtons
  List<bool> _Selectgender = <bool>[true, false];
  List<bool> _SelectgenSmoke = <bool>[true, false];
  List<bool> _SelectPressure = <bool>[true, false];
  List<bool> _SelectStroke = <bool>[true, false];
  List<bool> _SelectBloodPressure = <bool>[true, false];
  List<bool> _SelectDiabetes = <bool>[true, false];

  //set ageslider เป็น double เพื่อรับค่า จาก slider (sliderมันรับเฉพาะDoubleเท่านั้น)
  double ageslider = 1.0;
  //set smokeperdayslider เป็น double เพื่อรับค่า จาก slider (sliderมันรับเฉพาะDoubleเท่านั้น)
  double smokeperdayslider = 1.0;

  //----------------------------------------------------------------------------------------------------------

  //ตัวแปรใช้จริง ข้างล่าง ***ค่าที่จะใช้จริงจะอยู่ส่วนปุ่มอันท้ายสุดของ code ------------------------------------------------------------------
  //ตัวแปรนี้มีไว้เก็บค่า อายุ ตามค่า slider ที่ เราเลื่อน หรือ เติมในtextfleid

  //ตัวแปรนี้มีไว้เก็บค่า เพศ ชาย = 0 หญิง = 1 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 300 กับ 304
  int age = 0;
  //ตัวแปรนี้มีไว้เก็บค่า ประวัติการสูบบุหรี่ มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 740 กับ 744
  int smoke = 1;
  //ตัวแปรนี้มีไว้เก็บค่า ประวัติรับยาความดัน มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 979 กับ 983
  int PressureMedicine = 1;
  //ตัวแปรนี้มีไว้เก็บค่า ประวัติโรคหลอดเลือดในสมอง มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 1086 กับ 1090
  int Stroke = 1;
  //ตัวแปรนี้มีไว้เก็บค่า ประวัติความดันโลหิตสูง มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 1195 กับ 1199
  int BloodPressure = 1;
  //ตัวแปรนี้มีไว้เก็บค่า ประวิติการเป็นโรคเบาหวาน มี = 1 ไม่มี = 0 สามารถเปลี่ยนได้ในตัวแปร บรรทัด 1302 กับ 1306
  int Diabetes = 1;
  //ตัวแปรนี้มีไว้เก็บค่า จำนวนการสุบบุหรี่ต่อวัน ตามค่า slider ที่ เราเลื่อน หรือ เติมใน textfleid
  int smokeperday = 0;
  int gender = 0;
  //----------------------------------------
  //ตัวแปรนี้มีไว้เก็บค่า Cholesterolในเลือด ที่เราเติมใน textfleid จาก textEditingController อีกที
  double Cholesterol = 0;
  //ตัวแปรนี้มีไว้เก็บค่า Glucoseในเลือด ที่เราเติมใน textfleid จาก textEditingController อีกที
  double Glucose = 0;
  //ตัวแปรนี้มีไว้เก็บค่า อัดตราการเต้นของหัวใจ ที่เราเติมใน textfleid จาก textEditingController อีกที
  double HR = 0;
  //ตัวแปรนี้มีไว้เก็บค่า BMI ที่เราเติมใน textfleid จาก textEditingController อีกที
  double BMI = 0;
  //ตัวแปรนี้มีไว้เก็บค่า ค่าความดันตัวบน ที่เราเติมใน textfleid จาก textEditingController อีกที
  double SYS = 0;
  //ตัวแปรนี้มีไว้เก็บค่า ค่าความดันตัวล่าง ที่เราเติมใน textfleid จาก textEditingController อีกที
  double DIA = 0;

  //ตัวแปรนี้มีไว้เก็บค่า ระกับการศึกษา จะมี 4 ค่าตามคือ 1 2 3 4 ของ radio ที่เราเลือก สามารถแก้ค่า ทั้ง 4 ได้ในบรรทัดตามลำดับดังนี้ 542 575 608 641
  int EducationLevel = 0;

  bool BoolCheckSomkingVisible = false;
  bool BoolCheckCholesterolVisible = false;
  bool BoolCheckGlucoseVisible = false;
  bool BoolCheckHRVisible = false;
  bool BoolCheckBMIVisible = false;
  bool BoolCheckSYSVisible = false;
  bool BoolCheckDIAVisible = false;
  //---------------------------------------------------------------------------------------------------------------------------
  @override
  void initState() {
    //function มีไว้ set EducationLevel = 1; เมื่อเริ่ม มันจะอยู่ช้อย radio ที่ 1 ก่อน
    super.initState();

    EducationLevel = 1;
  }

  setEducationLevel(int val) {
    //function มีไว้ อัพเดทค่า EducationLevel
    setState(() {
      EducationLevel = val;
    });
  }

  void _showAlertDialogsErrorSaveData(BuildContext context) {
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
                        "แจ้งเตือนผู้ใช้", //ส่วนของ ข้อความ title ที่พิ้นหลังสีแดงๆ
                        style: TextStyle(
                            fontFamily: 'kanit',
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              content: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      children: <Widget>[
                        Text(
                          "กรุณากรอกข้อมูลให้เรียบร้อยและตรงตามเงื่อนไข",
                          textAlign: TextAlign
                              .center, //ส่วนของ ข้อความ title ที่พิ้นหลังสีแดงๆ
                          style: TextStyle(
                              fontFamily: 'kanit',
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
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
                      'OK',
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
                  textStyle: TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
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
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Inter'),
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
                child: Container(
                  color: Color(0XFFFFEEDD),
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
                                color: Colors.black,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 0.833,
                        child: FittedBox(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 20, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        //ของใน card เป็น row ๆ ไป
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "เพศ:",
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Kanit',
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                    "        "),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          30,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      ToggleButtons(
                                                                    constraints: BoxConstraints(
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
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                          width:
                                                                              20,
                                                                          child:
                                                                              new Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: <Widget>[
                                                                              new Icon(
                                                                                Icons.male,
                                                                                size: 20,
                                                                                color: Colors.blue,
                                                                              ),
                                                                            ],
                                                                          )),
                                                                      Container(
                                                                          width:
                                                                              20,
                                                                          child:
                                                                              new Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: <Widget>[
                                                                              new Icon(
                                                                                Icons.female,
                                                                                size: 20.0,
                                                                                color: Colors.pink,
                                                                              ),
                                                                            ],
                                                                          )),
                                                                    ],
                                                                    onPressed: (int
                                                                        index) {
                                                                      setState(
                                                                          () {
                                                                        for (int i =
                                                                                0;
                                                                            i < _Selectgender.length;
                                                                            i++) {
                                                                          _Selectgender[i] =
                                                                              i == index;
                                                                        }
                                                                        if (_Selectgender[
                                                                            0]) {
                                                                          gender =
                                                                              0;
                                                                          print(
                                                                              "ชาย = $gender");
                                                                        } else {
                                                                          gender =
                                                                              1;
                                                                          print(
                                                                              "หญิง = $gender");
                                                                        }
                                                                      });
                                                                    },
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
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
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0),
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
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20,
                                                                          0,
                                                                          0,
                                                                          0),
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
                                                                              () => ageslider = newRating, //รับค่าจาก slider มาใน agelider
                                                                            );
                                                                            setState(() {
                                                                              age = ageslider //เปลี่ยน double เป็น integer เพื่ออะไปใช้ต่อ
                                                                                  .floor();

                                                                              //ค่า age คือค่าใช้จริง
                                                                            });
                                                                            setState(() {
                                                                              //รับค่าจาก slider มาใน textEditingController ของ textfleid เพื่อแสดงค่าปัจุบันให้ user เห็น
                                                                              textEditingControllerAge.text = (newRating.floor()).toString();
                                                                            });
                                                                          },
                                                                          min:
                                                                              0,
                                                                          max:
                                                                              100,
                                                                          divisions:
                                                                              100,
                                                                          label:
                                                                              "$age",
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
                                                                                TextInputType.number,
                                                                            inputFormatters: <TextInputFormatter>[
                                                                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                                                                            ],
                                                                            decoration:
                                                                                InputDecoration(
                                                                              hintText: "$age",
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
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Text(
                                                                            "ปี",
                                                                            style:
                                                                                TextStyle(fontFamily: 'Kanit', fontSize: 15),
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "ข้อมูลด้านพฤติกรรม",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 0.833,
                        child: FittedBox(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
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
                                                                fontFamily:
                                                                    'Kanit',
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
                                                                fontFamily:
                                                                    'Kanit',
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
                                                                fontFamily:
                                                                    'Kanit',
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
                                                                fontFamily:
                                                                    'Kanit',
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255, 255, 17, 0),
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30, 0, 0, 0),
                                                      child: ToggleButtons(
                                                        constraints:
                                                            BoxConstraints(
                                                                maxWidth: 55,
                                                                minWidth: 50,
                                                                minHeight: 35,
                                                                maxHeight: 35),
                                                        isSelected:
                                                            _SelectgenSmoke,
                                                        children: <Widget>[
                                                          Container(
                                                              width: 20,
                                                              child: new Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  new Text(
                                                                    "มี",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontFamily:
                                                                            'Kanit',
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              )),
                                                          Container(
                                                              width: 25,
                                                              child: new Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  new Text(
                                                                    "ไม่มี",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .blue,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontFamily:
                                                                            'Kanit',
                                                                        fontSize:
                                                                            15),
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
                                                              _SelectgenSmoke[
                                                                      i] =
                                                                  i == index;
                                                            }
                                                            if (_SelectgenSmoke[
                                                                0]) {
                                                              smoke = 1;
                                                              print(
                                                                  "มีประวัติสูบบุหรี่ = $smoke");
                                                              setState(() {
                                                                BoolCheckSomkingVisible =
                                                                    false;
                                                              });
                                                            } else {
                                                              smoke = 0;

                                                              setState(() {
                                                                textEditingControllerSmokeperday
                                                                    .text = "0";
                                                                smokeperday =
                                                                    int.parse(
                                                                        textEditingControllerSmokeperday
                                                                            .text);
                                                                setState(
                                                                  () => smokeperdayslider =
                                                                      0, //รับค่าจากslider มาใน agelider
                                                                );
                                                                BoolCheckSomkingVisible =
                                                                    true;
                                                              });

                                                              print(
                                                                  "ไม่มีมีประวัติสูบบุหรี่ = $smoke");
                                                            }
                                                          });
                                                        },
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    20)),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Slider(
                                                          value:
                                                              smokeperdayslider,
                                                          onChanged:
                                                              (newRating) {
                                                            if (smoke == 0) {
                                                              return null;
                                                            }
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
                                                                  .text = (newRating
                                                                      .floor())
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
                                                            validator:
                                                                (value) {},
                                                            readOnly:
                                                                BoolCheckSomkingVisible,
                                                            controller:
                                                                textEditingControllerSmokeperday,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            inputFormatters: <
                                                                TextInputFormatter>[
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      r'[0-9]')),
                                                            ],
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  "$smokeperday",
                                                              border:
                                                                  InputBorder
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
                                                                  10, 0, 0, 0),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            "มวนต่อวัน",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
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
                        ),
                      ),
                      Padding(
                        // เริ่ม กล่อง ที่ ปรับเพิ่ม เริ่มตรงนนี้นะ ****
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "ข้อมูลประวัติการแพทย์",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 0.833,
                        child: FittedBox(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "ประวัติการรับยาลดความดัน",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [Text("")],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(30, 0,
                                                                    0, 0),
                                                        child: ToggleButtons(
                                                          constraints:
                                                              BoxConstraints(
                                                                  maxWidth: 55,
                                                                  minWidth: 50,
                                                                  minHeight: 35,
                                                                  maxHeight:
                                                                      35),
                                                          isSelected:
                                                              _SelectPressure,
                                                          children: <Widget>[
                                                            Container(
                                                                width: 20,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                            Container(
                                                                width: 25,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "ไม่มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .blue,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                          ],
                                                          onPressed:
                                                              (int index) {
                                                            setState(() {
                                                              for (int i = 0;
                                                                  i <
                                                                      _SelectPressure
                                                                          .length;
                                                                  i++) {
                                                                _SelectPressure[
                                                                        i] =
                                                                    i == index;
                                                              }
                                                              if (_SelectPressure[
                                                                  0]) {
                                                                PressureMedicine =
                                                                    1;
                                                                print(
                                                                    "มีประวัติความดันโลหิต = $PressureMedicine");
                                                              } else {
                                                                PressureMedicine =
                                                                    0;
                                                                print(
                                                                    "ไม่มีมีประวัติความดันโลหิต = $PressureMedicine");
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
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "ประวัติโรคหลอดเลือดสมอง",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(30, 0,
                                                                    0, 0),
                                                        child: ToggleButtons(
                                                          constraints:
                                                              BoxConstraints(
                                                                  maxWidth: 55,
                                                                  minWidth: 50,
                                                                  minHeight: 35,
                                                                  maxHeight:
                                                                      35),
                                                          isSelected:
                                                              _SelectStroke,
                                                          children: <Widget>[
                                                            Container(
                                                                width: 20,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                            Container(
                                                                width: 25,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "ไม่มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .blue,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                          ],
                                                          onPressed:
                                                              (int index) {
                                                            setState(() {
                                                              for (int i = 0;
                                                                  i <
                                                                      _SelectStroke
                                                                          .length;
                                                                  i++) {
                                                                _SelectStroke[
                                                                        i] =
                                                                    i == index;
                                                              }
                                                              if (_SelectStroke[
                                                                  0]) {
                                                                Stroke = 1;
                                                                print(
                                                                    "มีประวัติโรคหลอดเลือดสมอง = $Stroke");
                                                              } else {
                                                                Stroke = 0;
                                                                print(
                                                                    "ไม่มีมีประวัติโรดหลอดเลือดสมอง = $Stroke");
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
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "ประวัติโรคความดันโลหิต     ",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(30, 0,
                                                                    0, 0),
                                                        child: ToggleButtons(
                                                          constraints:
                                                              BoxConstraints(
                                                                  maxWidth: 55,
                                                                  minWidth: 50,
                                                                  minHeight: 35,
                                                                  maxHeight:
                                                                      35),
                                                          isSelected:
                                                              _SelectBloodPressure,
                                                          children: <Widget>[
                                                            Container(
                                                                width: 20,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                            Container(
                                                                width: 25,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "ไม่มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .blue,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                          ],
                                                          onPressed:
                                                              (int index) {
                                                            setState(() {
                                                              for (int i = 0;
                                                                  i <
                                                                      _SelectBloodPressure
                                                                          .length;
                                                                  i++) {
                                                                _SelectBloodPressure[
                                                                        i] =
                                                                    i == index;
                                                              }
                                                              if (_SelectBloodPressure[
                                                                  0]) {
                                                                BloodPressure =
                                                                    1;
                                                                print(
                                                                    "มีประวัติความดันโลหิตสูง = $BloodPressure");
                                                              } else {
                                                                BloodPressure =
                                                                    0;
                                                                print(
                                                                    "ไม่มีมีประวัติความดันโลหิตสูง = $BloodPressure");
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
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 5, 10, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "ประวัติการเป็นโรคเบาหวาน",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(30, 0,
                                                                    0, 0),
                                                        child: ToggleButtons(
                                                          constraints:
                                                              BoxConstraints(
                                                                  maxWidth: 55,
                                                                  minWidth: 50,
                                                                  minHeight: 35,
                                                                  maxHeight:
                                                                      35),
                                                          isSelected:
                                                              _SelectDiabetes,
                                                          children: <Widget>[
                                                            Container(
                                                                width: 20,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                            Container(
                                                                width: 25,
                                                                child: new Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    new Text(
                                                                      "ไม่มี",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .blue,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontFamily:
                                                                              'Kanit',
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                )),
                                                          ],
                                                          onPressed:
                                                              (int index) {
                                                            setState(() {
                                                              for (int i = 0;
                                                                  i <
                                                                      _SelectDiabetes
                                                                          .length;
                                                                  i++) {
                                                                _SelectDiabetes[
                                                                        i] =
                                                                    i == index;
                                                              }
                                                              if (_SelectDiabetes[
                                                                  0]) {
                                                                Diabetes = 1;
                                                                print(
                                                                    "มีประวัติโรคเบาหวาน = $Diabetes");
                                                              } else {
                                                                Diabetes = 0;
                                                                print(
                                                                    "ไม่มีมีประวัติโรคเบาหวาน = $Diabetes");
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
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "ข้อมูลประวัติการแพทย์",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 0.833,
                        child: FittedBox(
                          child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Column(
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ระดับคอเลสเตอรอลในเลือด",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {
                                                                        setState(
                                                                            () {
                                                                          Cholesterol =
                                                                              double.parse(value.toString());
                                                                        });
                                                                      },
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckCholesterolVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerCholesterol.text) >=
                                                                                100 &&
                                                                            double.parse(textEditingControllerCholesterol.text) <=
                                                                                350)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckCholesterolVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckCholesterolVisible = true;
                                                                            })
                                                                          }
                                                                      },
                                                                      controller:
                                                                          textEditingControllerCholesterol,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$Cholesterol",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
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
                                                          children: [
                                                            Text(
                                                              "mg/dL",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible:
                                                    BoolCheckCholesterolVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 100 ถึง 350",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ระดับความดันโลหิตตัวบน",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(25, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {},
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckSYSVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerSYS.text) >=
                                                                                80 &&
                                                                            double.parse(textEditingControllerSYS.text) <=
                                                                                300)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckSYSVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckSYSVisible = true;
                                                                            })
                                                                          }
                                                                      },
                                                                      controller:
                                                                          textEditingControllerSYS,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$SYS",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
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
                                                          children: [
                                                            Text(
                                                              "mmHg",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible: BoolCheckSYSVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 80 ถึง 300",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ระดับความดันโลหิตตัวล่าง",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {},
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckDIAVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerDIA.text) >=
                                                                                40 &&
                                                                            double.parse(textEditingControllerDIA.text) <=
                                                                                150)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckDIAVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckDIAVisible = true;
                                                                            })
                                                                          }
                                                                      },

                                                                      controller:
                                                                          textEditingControllerDIA,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$DIA",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
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
                                                          children: [
                                                            Text(
                                                              "mmHg",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible: BoolCheckDIAVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 40 ถึง 150",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ดัชนีมวลกาย (BMI)",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(60, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {},
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckBMIVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerBMI.text) >=
                                                                                10 &&
                                                                            double.parse(textEditingControllerBMI.text) <=
                                                                                40)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckBMIVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckBMIVisible = true;
                                                                            })
                                                                          }
                                                                      },
                                                                      controller:
                                                                          textEditingControllerBMI,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$BMI",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              "Kg/m",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible: BoolCheckBMIVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 10 ถึง 40",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "อัตราการเต้นของหัวใจ",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(35, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {},
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckHRVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerHR.text) >=
                                                                                40 &&
                                                                            double.parse(textEditingControllerHR.text) <=
                                                                                150)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckHRVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckHRVisible = true;
                                                                            })
                                                                          }
                                                                      },
                                                                      controller:
                                                                          textEditingControllerHR,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$HR",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
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
                                                          children: [
                                                            Text(
                                                              "ครั้ง/นาที",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Kanit',
                                                                  fontSize: 13),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible: BoolCheckHRVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 40 ถึง 150",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 0),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ปริมาณกลูโคส",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Kanit',
                                                                fontSize: 15),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(80, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Container(
                                                                  color: Color(
                                                                      0XFFD9D9D9),
                                                                  height: 39,
                                                                  width:
                                                                      70, // กำหนดความกว้างที่คุณต้องการ
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15,
                                                                            0,
                                                                            15,
                                                                            0),
                                                                    child:
                                                                        TextFormField(
                                                                      validator:
                                                                          (value) {},
                                                                      onChanged:
                                                                          (value) =>
                                                                              {
                                                                        if (value == "" ||
                                                                            value[0] ==
                                                                                "." ||
                                                                            value[0] ==
                                                                                "0")
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckGlucoseVisible = true;
                                                                            })
                                                                          }
                                                                        else if (double.parse(textEditingControllerGlucose.text) >=
                                                                                40 &&
                                                                            double.parse(textEditingControllerGlucose.text) <=
                                                                                400)
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckGlucoseVisible = false;
                                                                            })
                                                                          }
                                                                        else
                                                                          {
                                                                            setState(() {
                                                                              BoolCheckGlucoseVisible = true;
                                                                            })
                                                                          }
                                                                      },
                                                                      controller:
                                                                          textEditingControllerGlucose,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      inputFormatters: <
                                                                          TextInputFormatter>[
                                                                        FilteringTextInputFormatter.allow(
                                                                            RegExp(r'[0-9.]')),
                                                                      ],
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "$Glucose",
                                                                        border:
                                                                            InputBorder.none,

                                                                        //textEditingControllerAge
                                                                      ),
                                                                      // ค่าอื่น ๆ ของ TextField
                                                                    ),
                                                                  )),
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
                                                          children: [
                                                            Text(
                                                              "mg/dL",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize: 15),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ])),
                                            Visibility(
                                                visible:
                                                    BoolCheckGlucoseVisible,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "* กรุณาใส่ข้อมูลให้เลขอยู่ในช่วง 40 ถึง 400",
                                                        style: TextStyle(
                                                            fontFamily: 'Kanit',
                                                            fontSize: 15,
                                                            color: Colors.red),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 10),
                                            )
                                          ],
                                        ),
                                      )))
                                ],
                              )),
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25, 15, 25, 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // กำหนดความโค้งของมุมปุ่ม
                                ),

                                textStyle: TextStyle(
                                    fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                              ),
                              onPressed: () {
                                if (textEditingControllerBMI.text == "0") {
                                  setState(() {
                                    BoolCheckBMIVisible = true;
                                  });
                                }
                                if (textEditingControllerCholesterol.text ==
                                    "0") {
                                  setState(() {
                                    BoolCheckCholesterolVisible = true;
                                  });
                                }
                                if (textEditingControllerDIA.text == "0") {
                                  setState(() {
                                    BoolCheckDIAVisible = true;
                                  });
                                }
                                if (textEditingControllerGlucose.text == "0") {
                                  setState(() {
                                    BoolCheckGlucoseVisible = true;
                                  });
                                }
                                if (textEditingControllerHR.text == "0") {
                                  setState(() {
                                    BoolCheckHRVisible = true;
                                  });
                                }
                                if (textEditingControllerSYS.text == "0") {
                                  setState(() {
                                    BoolCheckSYSVisible = true;
                                  });
                                }
                                //แก้เพิ่ม
                                if (BoolCheckBMIVisible ||
                                    BoolCheckCholesterolVisible ||
                                    BoolCheckDIAVisible ||
                                    BoolCheckGlucoseVisible ||
                                    BoolCheckHRVisible ||
                                    BoolCheckSYSVisible) {
                                  _showAlertDialogsErrorSaveData(context);
                                } else {
                                  // ในelse โค้ดอันเก่าครับ
                                  /*เงื่อนไขด้านล่างนี้มีไว้เช็ค ค่า age(อายุ) กับ ค่า textEditingControllerAge(ค่าที่userป้อนมา) ถ้าไม่เท่าให้
                              age = textEditingControllerAge;
                              ** หรือก็คือ ค่าที่userใส่เข้ามาจะไม่เท่ากับของ slider เลยจะต้องมีเงื่อนไขนี้ไว้เพื่ออัพเดทค่าให้ตรงกับที่userใส่มานั้นเอง
                            */
                                  if (int.parse(
                                          textEditingControllerAge.text) !=
                                      age) {
                                    age = int.parse(
                                        textEditingControllerAge.text);
                                  }

                                  /*เงื่อนไขด้านล่างนี้มีไว้เช็ค ค่า age(อายุ) กับ ค่า textEditingControllerAge(ค่าที่userป้อนมา) ถ้าไม่เท่าให้
                              age = textEditingControllerAge;
                              ** หรือก็คือ ค่าที่userใส่เข้ามาจะไม่เท่ากับของ slider เลยจะต้องมีเงื่อนไขนี้ไว้เพื่ออัพเดทค่าให้ตรงกับที่userใส่มานั้นเอง
                            */
                                  if (int.parse(textEditingControllerSmokeperday
                                          .text) !=
                                      smokeperday) {
                                    smokeperday = int.parse(
                                        textEditingControllerSmokeperday.text);
                                  }

                                  Cholesterol = double.parse(
                                      textEditingControllerCholesterol.text);
                                  SYS = double.parse(
                                      textEditingControllerSYS.text);
                                  DIA = double.parse(
                                      textEditingControllerDIA.text);
                                  BMI = double.parse(
                                      textEditingControllerBMI.text);
                                  HR = double.parse(
                                      textEditingControllerHR.text);
                                  Glucose = double.parse(
                                      textEditingControllerGlucose.text);
                                  //ค่าที่ print ออกมาคือค่าที่ใช้จริง ด้านล่างค่าจะถูกต้องเมื่อกดปุ่มนี้เพราะมีเงื่อนไขด้านบนมาเช็คตัวแปรบางตัวก่อน
                                  //หรือก็คือสามารถใช้ ค่าที่เป็น $ชื่อตัวแปร ด้านล่างได้เลย ตัวแปรทั้งหมดนี้เป็นแบบ integer
                                  //ส่วนที่ printนี้จะเห็นได้ใน Debug console

                                  print("-----------------------");
                                  print("เพศ = $gender");
                                  print('อายุ = $age');
                                  print('ระดับการศึกษา = $EducationLevel');
                                  print('สูบุหรี่ต่อวัน = $smokeperday');
                                  print('ประวัติสูบบุหรี่ =  $smoke');
                                  print(
                                      'ประวัติการรับยาลดความดัน =  $PressureMedicine');
                                  print(
                                      'ประวัติการเป็นโรคหลอดเลือดสมอง =  $Stroke');
                                  print(
                                      'ประวัติการเป็นโรคความดันโลหิต =  $BloodPressure');
                                  print(
                                      'ประวัติการเป็นโรคเบาหวาน =  $Diabetes');
                                  //หรือก็คือสามารถใช้ ค่าที่เป็น $ชื่อตัวแปร ด้านล่างได้เลย ตัวแปรทั้งหมดนี้เป็นแบบ double
                                  print("-----------------------");
                                  print("คอเลสเตอรอล = $Cholesterol");
                                  print("ค่าความดันตัวบน = $SYS");
                                  print("ค่าความดันตัวล่าง = $DIA");
                                  print("ค่าBMI = $BMI");
                                  print("ค่าอัตราการเต้นหัวใจ = $HR");
                                  print("ค่ากลูโคสในเลือด = $Glucose");

                                  print("-----------------------");
                                }
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
            ),
          ),
        ),
      ),
    );
  }
}
