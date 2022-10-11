import 'package:course/Widgets/containersuggesteduniversities.dart';
import 'package:flutter/material.dart';

class information extends StatefulWidget {
  const information({Key? key}) : super(key: key);

  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
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
        title: Text('Best university in Information Science'),
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
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (_) => RegisterPage()));
              //   },
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities((context),
                    "Kenya Methodist University", Colors.orangeAccent),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: containerSuggesteduniversities(
                    (context), "Mount Kenya University", Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
