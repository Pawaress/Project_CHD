import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class A_Pa extends StatefulWidget {
  @override
  _A_PaState createState() => _A_PaState();
}

class _A_PaState extends State<A_Pa> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("1"), value: "1"),
      DropdownMenuItem(child: Text("2"), value: "2"),
      DropdownMenuItem(child: Text("3"), value: "3"),
      DropdownMenuItem(child: Text("4"), value: "4"),
    ];
    return menuItems;
  }

  String selectedValue = "1";
  int age = 1;
  int level = 1;
  int gender = 0;
  int smoke = 0;
  int Diabetes = 0;
  int Stroke = 0;
  int blood_pressure_medication = 0;
  int Hypertension = 0;
  List<bool> _Selectage = List.generate(3, (_) => false);
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
        body: Container(
          child: Container(
              child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 70, 30, 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "เพศ:",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 90.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 66, 66, 66),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Color.fromARGB(255, 66, 66, 66),
                        totalSwitches: 2,
                        labels: ['Male', 'Female'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w900),
                          TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w900),
                        ],
                        customIcons: [
                          Icon(
                            Icons.male,
                            color: Color.fromARGB(255, 66, 66, 66),
                            size: 25.0,
                          ),
                          Icon(
                            Icons.female,
                            color: Color.fromARGB(255, 66, 66, 66),
                            size: 25.0,
                          ),
                        ],
                        activeBgColors: [
                          [Color.fromARGB(255, 94, 181, 253)],
                          [Color.fromARGB(255, 255, 81, 139)]
                        ],
                        onToggle: (index) {
                          if (index == 0) {
                            gender = 1;
                            print('Gender ชาย = $gender');
                          } else {
                            gender = 0;
                            print('Gender หญิง = $gender');
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "อายุ:",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                      child: Container(
                        // color: Colors.grey,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.all(Radius.circular(17.0)),
                        ),
                        child: Row(
                          children: [
                            ToggleButtons(
                              constraints: BoxConstraints(
                                  maxWidth: 35,
                                  minWidth: 35,
                                  minHeight: 35,
                                  maxHeight: 35),
                              isSelected: _Selectage,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 94, 181, 253),
                                ),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Icon(
                                  Icons.remove,
                                  color: Color.fromARGB(255, 255, 81, 139),
                                ),
                              ],
                              onPressed: (int index) {
                                setState(() {
                                  for (int i = 0; i < _Selectage.length; i++) {
                                    if (_Selectage[1]) {
                                      _Selectage[1] = false;
                                    } else {
                                      _Selectage[i] = i == index;
                                    }
                                  }
                                  if (_Selectage[0] && age < 100) {
                                    age++;
                                    print("อายุ = $age");
                                  }
                                  if (_Selectage[2] && age > 1) {
                                    age--;
                                    print("อายุ = $age");
                                  }
                                });
                              },
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'ปี',
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "ระดับการศึกษา :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Container(
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9), // สีเทา
                            borderRadius:
                                BorderRadius.circular(15), // กำหนดรูปร่าง
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            child: DropdownButton(
                                value: selectedValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedValue = newValue!;
                                    level = int.parse(newValue);

                                    print("level = $level");
                                  });
                                },
                                items: dropdownItems),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ประวิติการสูบบุหรี่ :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 52.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 255, 255, 255),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        labels: ['เคย', 'ไม่เคย'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                        ],
                        activeBgColors: [
                          [Color(0xFF32CD32)],
                          [Color.fromARGB(255, 255, 70, 70)]
                        ],
                        onToggle: (index) {
                          //smoke = index!;
                          if (index == 0) {
                            smoke = 1;
                            print('Smoke เคย = $smoke');
                          } else {
                            smoke = 0;
                            print('Smoke ไม่เคย = $smoke');
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ประวัติการรับยาลดความดันโลหิต :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 52.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 255, 255, 255),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        labels: ['เคย', 'ไม่เคย'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                        ],
                        activeBgColors: [
                          [Color(0xFF32CD32)],
                          [Color.fromARGB(255, 255, 70, 70)]
                        ],
                        onToggle: (index) {
                          if (index == 0) {
                            blood_pressure_medication = 1;
                            print(
                                'blood_pressure_medication เคย = $blood_pressure_medication');
                          } else {
                            blood_pressure_medication = 0;
                            print(
                                'blood_pressure_medication ไม่เคย = $blood_pressure_medication');
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ประวัติการเป็นโรคหลอดเลือดสมอง :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 52.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 255, 255, 255),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        labels: ['เคย', 'ไม่เคย'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                        ],
                        activeBgColors: [
                          [Color(0xFF32CD32)],
                          [Color.fromARGB(255, 255, 70, 70)]
                        ],
                        onToggle: (index) {
                          if (index == 0) {
                            Stroke = 1;
                            print('Stroke เคย = $Stroke');
                          } else {
                            Stroke = 0;
                            print('Stroke ไม่เคย = $Stroke');
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ประวัติการเป็นความดันโลหิตสูง :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 52.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 255, 255, 255),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        labels: ['เคย', 'ไม่เคย'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                        ],
                        activeBgColors: [
                          [Color(0xFF32CD32)],
                          [Color.fromARGB(255, 255, 70, 70)]
                        ],
                        onToggle: (index) {
                          if (index == 0) {
                            Hypertension = 1;
                            print('Hypertension เคย = $Hypertension');
                          } else {
                            Hypertension = 0;
                            print('Hypertension ไม่เคย = $Hypertension');
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ประวัติการเป็นโรคเบาหวาน :",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: ToggleSwitch(
                        minHeight: 37,
                        minWidth: 52.0,
                        initialLabelIndex: 1,
                        cornerRadius: 15.0,
                        activeFgColor: Color.fromARGB(255, 255, 255, 255),
                        inactiveBgColor: Color(0xFFD9D9D9),
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        labels: ['เคย', 'ไม่เคย'],
                        customTextStyles: [
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                          TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Kanit'),
                        ],
                        activeBgColors: [
                          [Color(0xFF32CD32)],
                          [Color.fromARGB(255, 255, 70, 70)]
                        ],
                        onToggle: (index) {
                          if (index == 0) {
                            Diabetes = 1;
                            print('Diabetes เคย = $Diabetes');
                          } else {
                            Diabetes = 0;
                            print('Diabetes ไม่เคย = $Diabetes');
                          }
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4FCCBD),
                        padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // กำหนดความโค้งของมุมปุ่ม
                        ),

                        textStyle:
                            TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                      ),
                      onPressed: () {
                        print("เพศ = $gender");
                        print('อายุ = $age');
                        print('ระดับการศึกษา = $level');
                        print('สูบุหรี่ = $smoke');
                        print('ยาความกันโลหิต = $blood_pressure_medication');
                        print('หลอดเลือดสมอง = $Stroke');
                        print('ความดันโลหิดสูง = $Hypertension');
                        print('เบาหวาน = $Diabetes');
                        // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
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
              ],
            ),
          )),
        ));
  }
}
