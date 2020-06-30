import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/camera/camera.dart';
import 'package:flutter_demo/screens/task_home/task_home.dart';
import 'package:flutter_demo/screens/task_list/task_list.dart';

import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    //logError(e.code, e.description);
    print("error on available camera");
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/task-home',
      routes: {
        '/task-home': (context) => TaskHomePage(),
        '/task-list': (context) => TaskList(),
        '/camera': (context) => CameraHomeScreen(cameras)
      },
    );
  }
}
