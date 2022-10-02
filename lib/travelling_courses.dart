import 'package:course/Widgets/containerTravelling.dart';
import 'package:flutter/material.dart';

class travellingCourses extends StatefulWidget {
  const travellingCourses({Key? key}) : super(key: key);

  @override
  State<travellingCourses> createState() => _travellingCoursesState();
}

class _travellingCoursesState extends State<travellingCourses> {
  String dropdownvalue = 'travellingCourses';
  String interestvalue = 'travellingCourses';

  var items = [
    'travellingCourses',
    'Sports',
    'Travelling',
    'Art',
    ' Music',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses based on travelling interest'),
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
                    "Aviation", "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Aerospace Engineering",
                    "assets/travelling.PNG", Colors.blue, () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Mass Media", "assets/travelling.PNG", Colors.blue, () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
