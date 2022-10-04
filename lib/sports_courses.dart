import 'package:flutter/material.dart';

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
                child: containerTravelling("Education arts",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Sports science",
                    "assets/travelling.PNG", Colors.orangeAccent, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Sports management",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
