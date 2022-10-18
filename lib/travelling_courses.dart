import 'package:course/FirebaseMethods/FirebaseMethods.dart';
import 'package:course/Widgets/containerTravelling.dart';
import 'package:course/suggested_courses.dart/aerospace.dart';
import 'package:course/suggested_courses.dart/aviation.dart';
import 'package:course/suggested_courses.dart/mass_media.dart';
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
      backgroundColor: Colors.grey,
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
                child: containerTravelling("Aviation", "assets/aviation.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Aviation");
                  if (value) {
                    await FirebaseMethods()
                        .UpdateDatabase("Aviation", Colors.lime);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have succesfully qualified for the Aviation kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => aviation()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Aviation.Kindly try other courses");
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Aerospace Engineering",
                    "assets/aerospace.png",
                    Color.fromARGB(255, 161, 120, 66), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("Aerospace");
                  if (value) {
                    await FirebaseMethods()
                        .UpdateDatabase("Aerospace", Colors.black12);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have succesfully qualified for the Aerospace kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => aerospace()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Aerospace.Kindly try other courses");
                    print("Not successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Don't Qualify"));
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerTravelling(
                    "Mass Media",
                    "assets/mass-media.png",
                    Color.fromARGB(255, 124, 168, 212), () async {
                  bool value = await FirebaseMethods()
                      .CheckuserValidforthecourse("MassMedia");
                  if (value == true) {
                    await FirebaseMethods()
                        .UpdateDatabase("Mass Media", Colors.teal);
                    await FirebaseMethods().sendEmail(
                        message:
                            "Congratulations! you have succesfully qualified for the Mass Media kindly proceed to apply in kuccps");
                    print("successful");
                    ScaffoldMessenger.of(context)
                        .showSnackBar(showsnackBar("You Qualify"));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => massMedia()));
                  } else {
                    await FirebaseMethods().sendEmail(
                        message:
                            "Oops! You don't qualify for Mass Media.Kindly try other courses");
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

SnackBar showsnackBar(String text) {
  return SnackBar(
    content: Text(text),
  );
}
