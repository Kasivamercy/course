import 'package:course/suggested_courses.dart/information_science.dart';
import 'package:flutter/material.dart';

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
                    "Information science", "assets/travelling.PNG", Colors.blue,
                    (context) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const information();
                  })));
                  // return const information();
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Bachelor of Law",
                    "assets/travelling.PNG", Colors.orangeAccent, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Education arts",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Political science",
                    "assets/travelling.PNG", Colors.orangeAccent, () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
