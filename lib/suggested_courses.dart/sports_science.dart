import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class sportsScience extends StatefulWidget {
  const sportsScience({Key? key}) : super(key: key);

  @override
  State<sportsScience> createState() => _sportsScienceState();
}

class _sportsScienceState extends State<sportsScience> {
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
      appBar: AppBar(
        title: Text('Best university in Sport Science'),
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
                child: containerSuggesteduniversities(
                  (context),
                  "University of Nairobi",
                  Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "Kenyatta University", Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "University of Eldoret", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
