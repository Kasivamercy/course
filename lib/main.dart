// ignore_for_file: prefer_const_constructors

import 'package:course/dashboard.dart';
import 'package:course/home_page.dart';
import 'package:course/music_courses.dart';
import 'package:course/readingcourses.dart';
import 'package:course/sports_courses.dart';
import 'package:course/travelling_courses.dart';
import 'package:course/writing_course.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const DashboardPage(),
        '/login_page': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/traveling_courses': (context) => const travellingCourses(),
        '/reading_courses': (context) => const readingCourses(),
        '/writing_courses': (context) => const writingCourses(),
        '/sports_courses': (context) => sportsCourses(),
        '/music_courses': (context) => musicCourses()
      },
    ); //materialApp
  }
}
