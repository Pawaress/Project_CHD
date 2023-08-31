import 'package:flutter/material.dart';
import 'package:project_chd/Assessment_page.dart';
import 'package:project_chd/Assessment_page_V2.dart';
import 'package:project_chd/Before_chatbot_page.dart';
import 'package:project_chd/Call_1669_page.dart';
import 'package:project_chd/Chat_bot_page.dart';
import 'package:project_chd/Edit_profile.dart';
import 'package:project_chd/Edit_profile_2.dart';
import 'package:project_chd/Main_page.dart';
import 'package:project_chd/Sign_In.dart';
import 'package:project_chd/Sign_Up.dart';
import 'package:project_chd/advice.dart';
import 'package:project_chd/chatman.dart';
import 'package:project_chd/result.dart';
import 'package:project_chd/test.dart';
import 'Before_assessment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'All Page In Here !!!',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
          child: Column(children: [
            Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ad(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('advice'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Re(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('result'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => A_Pa_V2(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Assessment_page_V2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B_As(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Before_assessment_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B_Ch(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Before_chatbot_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => M_Pa(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Main_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => C_16(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Call_1669_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E_Po(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Edit_profile'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => test(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('test'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => E_Po_2(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Edit_profile_2'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => S_In(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Sign_In'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => S_Up(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Sign_Up'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => C_bo(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Chat_bot_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => A_Pa(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('Assessment_page'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                    // รหัสที่ต้องการให้ทำเมื่อปุ่มถูกแตะหรือกด
                  },
                  child: const Text('chatman'),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
