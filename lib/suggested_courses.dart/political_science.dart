import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class politicalScience extends StatefulWidget {
  const politicalScience({Key? key}) : super(key: key);

  @override
  State<politicalScience> createState() => _politicalScienceState();
}

class _politicalScienceState extends State<politicalScience> {
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
        title: Text('Best university in Political Science'),
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
                  "Karatina University ",
                  Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "Rongo University", Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "Maasai mara University", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
