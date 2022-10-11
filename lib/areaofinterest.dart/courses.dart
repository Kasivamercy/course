import 'package:course/Widgets/containersuggestedCourses.dart';
import 'package:flutter/material.dart';

import '../main_screen.dart/login_page.dart';
import 'containerAreaofInterest.dart';

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
        title: const Text('Choose area of interest'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Icon(
                Icons.person,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
              ),
              title: const Text('Courses'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
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
                    "assets/travel.png", Colors.white, "traveling_courses"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(context, "Reading",
                    "assets/reading.jpg", Colors.white, 'reading_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(context, "Writing",
                    "assets/writing.png", Colors.white, 'writing_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(context, "Sports",
                    "assets/sports.png", Colors.white, 'sports_courses'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: containerSuggestedCourses(context, "Music",
                    "assets/music.png", Colors.white, 'music_courses'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
