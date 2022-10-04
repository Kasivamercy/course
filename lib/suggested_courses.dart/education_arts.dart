import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class educationArts extends StatefulWidget {
  const educationArts({Key? key}) : super(key: key);

  @override
  State<educationArts> createState() => _educationArtsState();
}

class _educationArtsState extends State<educationArts> {
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
        title: Text('Best university in Education Arts'),
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
                  "Meru University of Science & Technology",
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
                    (context), "Egerton University", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
