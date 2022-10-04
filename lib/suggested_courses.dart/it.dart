import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class it extends StatefulWidget {
  const it({Key? key}) : super(key: key);

  @override
  State<it> createState() => _itState();
}

class _itState extends State<it> {
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
        title: Text('Best university in IT'),
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
                    (context),
                    "Jomo Kenyatta University of Agriculture and Technology",
                    Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), " University of Nairobi", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
