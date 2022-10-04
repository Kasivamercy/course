import 'package:flutter/material.dart';

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
              child: containerTravelling(
                  "Mass Media", "assets/travelling.PNG", Colors.blue, () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: containerTravelling("Education arts",
                  "assets/travelling.PNG", Colors.orangeAccent, () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: containerTravelling("Computer science",
                  "assets/travelling.PNG", Colors.blue, () {}),
            ),
          ]),
        ),
      ),
    );
  }
}
