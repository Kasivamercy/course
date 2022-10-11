import 'package:course/suggested_courses.dart/education_arts.dart';
import 'package:course/suggested_courses.dart/sports_management.dart';
import 'package:course/suggested_courses.dart/sports_science.dart';
import 'package:course/travelling_courses.dart';
import 'package:flutter/material.dart';

import 'FirebaseMethods/FirebaseMethods.dart';
import 'Widgets/containerTravelling.dart';

class sportsCourses extends StatefulWidget {
  const sportsCourses({Key? key}) : super(key: key);

  @override
  State<sportsCourses> createState() => _ReadingState();
}

class _ReadingState extends State<sportsCourses> {
  String dropdownvalue = 'sportsCourses';
  String interestvalue = 'sportsCourses';

  var items = [
    'sportsCourses',
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
        title: Text('Courses based on sports interest'),
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
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Sports science",
                    "assets/sportscience.png",
                    Color.fromARGB(255, 161, 120, 66), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Sports Science");
                  if (value == true) {
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => sportsScience()));
                  } else {
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Sports management",
                    "assets/sportmgt.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Sport Management");
                  if (value == true) {
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => sportsmanagement()));
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
