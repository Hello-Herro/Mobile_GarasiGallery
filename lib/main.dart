// ignore_for_file: unused_import

import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter_example/icons.dart';
// import 'dart:io';

import 'package:args/args.dart';
import 'package:flutter_application_1/src/pages/dashboard.dart';
import 'package:flutter_application_1/loginscreen.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_launcher_icons/abs/icon_generator.dart';
import 'package:flutter_launcher_icons/android.dart' as android_launcher_icons;
import 'package:flutter_launcher_icons/config/config.dart';
import 'package:flutter_launcher_icons/constants.dart' as constants;
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart' as ios_launcher_icons;
import 'package:flutter_launcher_icons/logger.dart';
import 'package:flutter_launcher_icons/macos/macos_icon_generator.dart';
import 'package:flutter_launcher_icons/web/web_icon_generator.dart';
import 'package:flutter_launcher_icons/windows/windows_icon_generator.dart';
import 'package:path/path.dart' as path;

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  //fungsi dari stateless agar auto save secara otomatis ketika ada perubahan pada code, layout atau data tpi tidak sering!
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Garasi Drift'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
        elevation: 0.1,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/icon/Logo-Garasi-Drift-700x492.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Text('OWNER NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text(
                'Zico & Dipo',
                style: TextStyle(
                    color: Colors.deepPurple[200],
                    letterSpacing: 2.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text('ABOUT',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )),
              SizedBox(height: 10.0),
              Text(
                '2 BROTHERS WITH A CAMERA, PASSION, AND DRIFTING SKILLS. THAT IS HOW GARASI DRIFT WAS BORN.',
                style: TextStyle(
                    color: Colors.deepPurple[200],
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.deepPurple[100],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'connect@garasi-drift.com',
                    style: TextStyle(
                        color: Colors.deepPurple[100],
                        fontSize: 12.0,
                        letterSpacing: 1.0),
                  ),
                ],
              )
            ]),
        // child: Image(
        //   image: AssetImage('assets/gallery/1.jpg'),
        // ),
        // Text('Welcome to Garasi Drift', style: TextStyle(
        //   fontSize: 20.0,
        //   fontWeight: FontWeight.bold,
        //   letterSpacing: 2.0,
        //   color: Colors.grey[600],
        //   fontFamily: 'Gotham',
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Go!'),
        backgroundColor: Colors.deepPurple[400],
      ),
    );
  }
}

// class AppRouter {
//   static Map<String, WidgetBuilder> generateRoutes() {
//     return {
//       '/': (context) => const MyHomePage(
//             title: '',
//           ),
//       '/loginScreen': (context) => LoginPage(),
//       '/signup': (context) => SignupPage(),
//     };
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             MaterialButton(
//               color: Colors.deepPurple.shade100,
//               minWidth: 200,
//               onPressed: () {
//                 Navigator.pushNamed(context, '/loginScreen');
//               },
//               child: const Text('Login'),
//             ),
//             MaterialButton(
//               color: Colors.deepPurple.shade200,
//               minWidth: 200,
//               onPressed: () {
//                 Navigator.pushNamed(context, '/signup');
//               },
//               child: const Text('Sign Up'),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), onDoneLoading);
//   }

//   void onDoneLoading() {
//     Navigator.of(context as BuildContext)
//         .pushReplacement(MaterialPageRoute(builder: (context) {
//       return DashboardPage();
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

// class DashboardPage extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: Implement the DashboardPage UI
  //   return Container(); // Placeholder, implement your DashboardPage UI here
  // }

// // Define your routes if needed
// final Map<String, WidgetBuilder> routes = {
//   // Add your routes here
// };
