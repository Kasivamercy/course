import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class sportsmanagement extends StatefulWidget {
  const sportsmanagement({Key? key}) : super(key: key);

  @override
  State<sportsmanagement> createState() => _sportsmanagementState();
}

class _sportsmanagementState extends State<sportsmanagement> {
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
        title: Text('Best university in Sports management'),
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
                  "Zetech University ",
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
                    (context), "Maseno University", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
