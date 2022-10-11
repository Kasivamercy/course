import 'package:course/suggested_courses.dart/compscience.dart';
import 'package:course/suggested_courses.dart/education_arts.dart';
import 'package:course/suggested_courses.dart/mass_media.dart';
import 'package:course/travelling_courses.dart';
import 'package:flutter/material.dart';

import 'FirebaseMethods/FirebaseMethods.dart';
import 'Widgets/containerTravelling.dart';

class writingCourses extends StatefulWidget {
  const writingCourses({Key? key}) : super(key: key);

  @override
  State<writingCourses> createState() => _ReadingState();
}

class _ReadingState extends State<writingCourses> {
  String dropdownvalue = 'writingCourses';
  String interestvalue = 'writingCourses';

  var items = [
    'writingCourses',
    'Sports',
    'Travelling',
    'Art',
    ' Music',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Courses based on writing interest'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          //SizedBox(height: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: containerTravelling("Mass Media", "assets/mass-media.png",
                  Color.fromARGB(255, 124, 168, 212), () async {
                bool value = await FirebaseMethods()
                    .CheckuserValidforthecourse("MassMedia");
                if (value == true) {
                  print("successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Qualify"));
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => massMedia()));
                } else {
                  print("Not successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Don't Qualify"));
                }
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: containerTravelling("Education arts", "assets/edu.png",
                  Color.fromARGB(255, 161, 120, 66), () async {
                bool value = await FirebaseMethods()
                    .CheckuserValidforthecourse("Education Arts");
                if (value == true) {
                  print("successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Qualify"));
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => educationArts()));
                } else {
                  print("Not successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Don't Qualify"));
                }
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: containerTravelling("Computer science", "assets/comp.png",
                  Color.fromARGB(255, 124, 168, 212), () async {
                bool value = await FirebaseMethods()
                    .CheckuserValidforthecourse("Computer Science");
                if (value == true) {
                  print("successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Qualify"));
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => compScience()));
                } else {
                  print("Not successful");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(showsnackBar("You Don't Qualify"));
                }
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
