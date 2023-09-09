import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
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
  bool checkEditEmail = true;

  bool checkEditUsername = false;
  bool checkEditPassword = false;
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerUsername = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String textdd = '';
  void _showAlertDialog(BuildContext context) {
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
                        "something went wrong !",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              content: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Wrap(
                      children: <Widget>[
                        Text(
                          'The email address is badly formated There is no user record.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                          ),
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
                      // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                    },
                    child: Text(
                      'back',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text("data"),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFD9D9D9),
                  ),
                  width: 300,
                  child: TextField(
                    readOnly: checkEditUsername,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: textEditingControllerUsername.toString(),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              checkEditUsername = !checkEditUsername;
                            });
                          },
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(10, 14, 0, 0)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFD9D9D9),
              ),
              child: TextField(
                readOnly: checkEditPassword,
                obscureText: checkEditPassword,
                controller: textEditingControllerPassword,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: textEditingControllerPassword.toString(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          checkEditPassword = !checkEditPassword;
                        });
                      },
                    ),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10, 14, 0, 0)),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0), // ตั้งค่าระยะห่างของ Container
                    child: TextField(
                      // ตัวอย่างการกำหนดคุณสมบัติของ TextField
                      decoration: InputDecoration(
                        hintText: 'กรอกข้อความ...',
                      ),
                    ),
                  ),
                ),
                // เพิ่ม Widget อื่น ๆ ต่อท้ายได้ตามต้องการ
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.all(30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Card(
                            color: Colors.amber,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("ss")],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final screenWidth = MediaQuery.of(context).size.width;
                    final targetWidth =
                        screenWidth * 0.5; // กำหนดเป็น 70% ของความกว้างจอจริง
                    final maxWidth = targetWidth > constraints.maxWidth
                        ? constraints.maxWidth
                        : targetWidth;

                    return Wrap(
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: maxWidth),
                          child: Text(
                            'Lorem ipsum dolor sit amet,piscing elit. Sed ac lobortis libero, in condimentum mauris.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
            Text('drop'),
            Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // สีเทา
                    borderRadius: BorderRadius.circular(15), // กำหนดรูปร่าง
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    child: DropdownButton(
                        isExpanded: true,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: dropdownItems),
                  )),
            ),
            Text('drop'),
            Text('drop'),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Column(
                children: [
                  AlertDialog(
                    title: Text("Accept"),

                    content: Text("maxsaimaissss"),
                    actions: [
                      TextButton(onPressed: () {}, child: Text("yes")),
                      TextButton(onPressed: () {}, child: Text("no"))
                    ],

                    //elevation: 24,
                    //backgroundColor: Colors.blue,
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: ElevatedButton(
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                  child: Text("max"),
                )),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(fontFamily: 'Inters', fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Color(0XFFD9D9D9),
                        ),
                        width: 200,
                        child: TextFormField(
                          validator: (value) {},
                          readOnly: checkEditEmail, //ส่วนเช็คว่าพิมได้หรือไม่

                          controller:
                              textEditingControllerEmail, //ส่วนที่ไว้รับค่าจากuser
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  "ชิมมินกยู", //ค่า Email ปัจุบันก่อนแก้ไข
                              suffixIcon: IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    //เงื่อนไขเช็ค เมื่อกดปุ่ม Icon ทำให้ กลับค่า true->false false->true เพื่อใช้เช็คว่าแก้ไขได้หรือไม่

                                    checkEditEmail = !checkEditEmail;
                                  });
                                },
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  10, 15, 0, 15)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD9D9D9),
                          padding:
                              EdgeInsetsDirectional.fromSTEB(35, 13, 35, 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ), // กำหนดความโค้งของมุมปุ่ม
                          ),

                          textStyle:
                              TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                        ),
                        onPressed: () {
                          //Navigator.of(context).pop();
                          // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                        },
                        child: Text(
                          'back',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Kanit',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //-----------------------------------------------------------------
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "ชื่อผู้ใช้",
                        style: TextStyle(fontFamily: 'Kanit', fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: Color(0XFFD9D9D9),
                        ),
                        width: 200,
                        child: TextFormField(
                          validator: (value) {},
                          readOnly:
                              checkEditUsername, //ส่วนเช็คว่าพิมได้หรือไม่
                          controller:
                              textEditingControllerUsername, //ส่วนที่ไว้รับค่าจากuser
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "ชิมมินกยู",
                              suffixIcon: IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    //เงื่อนไขเช็ค เมื่อกดปุ่ม Icon ทำให้ กลับค่า true->false false->true เพื่อใช้เช็คว่าแก้ไขได้หรือไม่
                                    checkEditUsername = !checkEditUsername;
                                  });
                                },
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  10, 14.2, 0, 16)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 13, 20, 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ), // กำหนดความโค้งของมุมปุ่ม
                          ),

                          textStyle:
                              TextStyle(fontSize: 15), // เปลี่ยนสีปุ่มเป็นสีแดง
                        ),
                        onPressed: () {
                          //Navigator.of(context).pop();
                          // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกกด
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.grey,
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
    );
  }
}


/*


Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Column(
                                children: [
                                  AlertDialog(
                                    title: Text("Accept"),

                                    content: Text("maxsaimaissss"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {}, child: Text("yes")),
                                      TextButton(
                                          onPressed: () {}, child: Text("no"))
                                    ],

                                    //elevation: 24,
                                    //backgroundColor: Colors.blue,
                                  )
                                ],
                              ),
                            )



 */
