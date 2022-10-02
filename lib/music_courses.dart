import 'package:flutter/material.dart';

import 'Widgets/containerTravelling.dart';

class musicCourses extends StatefulWidget {
  const musicCourses({Key? key}) : super(key: key);

  @override
  State<musicCourses> createState() => _ReadingState();
}

class _ReadingState extends State<musicCourses> {
  String dropdownvalue = 'musicCourses';
  String interestvalue = 'musicCourses';

  var items = [
    'musicCourses',
    'Sports',
    'Travelling',
    'Art',
    ' Music',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses based on music interest'),
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
                child: containerTravelling("Bachelor of Music Education",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Bachelor of IT",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Bachelor of Computer Science",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
