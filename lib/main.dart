import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/admin_panel.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/scorecard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/quiz': (context) => QuizScreen(),
        '/admin': (context) => AdminPanel(),
        '/scorecard': (context) => ScorecardScreen(),
      },
    );
  }
}


