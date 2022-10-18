import 'package:course/suggested_courses.dart/compscience.dart';
import 'package:course/suggested_courses.dart/it.dart';
import 'package:course/suggested_courses.dart/music_education.dart';
import 'package:course/travelling_courses.dart';
import 'package:flutter/material.dart';

import 'FirebaseMethods/FirebaseMethods.dart';
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
      backgroundColor: Colors.grey,
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
                child: containerTravelling(
                    "Music Education",
                    "assets/music.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Music Education");
                  if (value == true) {
                    await FirebaseMethods()
                        .UpdateDatabase("Music Education", Colors.green);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have  succesfully qualified for the Music Education kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => MusicEducation()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Music Education.Kindly try other courses");
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling("Bachelor of IT", "assets/it.png",
                    Color.fromARGB(255, 161, 120, 66), () async {
                  bool value =
                      await FirebaseMethods().CheckuserValidforthecourse("IT");
                  if (value == true) {
                    await FirebaseMethods().UpdateDatabase("IT", Colors.blue);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have  succesfully qualified for the Information Technology kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => it()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Information Technology.Kindly try other courses");
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Computer Science",
                    "assets/comp.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Computer Science");
                  if (value == true) {
                    await FirebaseMethods()
                        .UpdateDatabase("Computer Science", Colors.red);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have succesfully qualified for the Computer Science kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => compScience()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Computer Science.Kindly try other courses");
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
