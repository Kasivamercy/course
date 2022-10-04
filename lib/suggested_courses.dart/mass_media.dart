import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class massMedia extends StatefulWidget {
  const massMedia({Key? key}) : super(key: key);

  @override
  State<massMedia> createState() => _massMediaState();
}

class _massMediaState extends State<massMedia> {
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
        title: Text('Best university in Mass Media'),
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
                  "Daystar University",
                  Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "Multimedia University", Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities((context),
                    "Kenya Institute of Mass Communication", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
