import 'package:course/suggested_courses.dart/education_arts.dart';
import 'package:course/suggested_courses.dart/information_science.dart';
import 'package:course/suggested_courses.dart/law.dart';
import 'package:course/travelling_courses.dart';
import 'package:flutter/material.dart';

import 'FirebaseMethods/FirebaseMethods.dart';
import 'Widgets/containerTravelling.dart';

class readingCourses extends StatefulWidget {
  const readingCourses({Key? key}) : super(key: key);

  @override
  State<readingCourses> createState() => _ReadingState();
}

class _ReadingState extends State<readingCourses> {
  String dropdownvalue = 'readingCourses';
  String interestvalue = 'readingCourses';

  var items = [
    'readingCourses',
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
        title: Text('Courses based on reading interest'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          //SizedBox(height: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Information science",
                    "assets/information.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Information Science");
                  if (value == true) {
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => information()));
                  } else {
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Bachelor of Law", "assets/law.png",
                    Color.fromARGB(255, 161, 120, 66), () async {
                  bool value =
                      await FirebaseMethods().CheckuserValidforthecourse("Law");
                  if (value == true) {
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => law()));
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
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Education Arts");
                  if (value == true) {
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => educationArts()));
                  } else {
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
