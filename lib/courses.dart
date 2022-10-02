import 'package:course/Widgets/containersuggestedCourses.dart';
import 'package:flutter/material.dart';

import 'Widgets/containerAreaofInterest.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  String dropdownvalue = 'Reading';
  String interestvalue = 'Reading';

  var items = [
    'Reading',
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
        title: Text('Choose area of interest'),
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
                child: containerSuggestedCourses(context, "Travelling",
                    "assets/travelling.PNG", Colors.blue, "traveling_courses"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(
                    context,
                    "Reading",
                    "assets/travelling.PNG",
                    Color.fromARGB(255, 235, 189, 119),
                    'reading_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(
                    context,
                    "Writing",
                    "assets/travelling.PNG",
                    Color.fromARGB(255, 105, 212, 160),
                    'writing_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(
                    context,
                    "Sports",
                    "assets/travelling.PNG",
                    Color.fromARGB(255, 228, 228, 110),
                    'sports_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(context, "Music",
                    "assets/travelling.PNG", Colors.brown, 'music_courses'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
