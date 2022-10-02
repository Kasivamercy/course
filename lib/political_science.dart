import 'package:flutter/material.dart';

class politicalscience extends StatefulWidget {
  const politicalscience({Key? key}) : super(key: key);

  @override
  State<politicalscience> createState() => _ReadingState();
}

class _ReadingState extends State<politicalscience> {
  String dropdownvalue = 'politicalscience';
  String interestvalue = 'politicalscience';

  var items = [
    'politicalscience',
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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Maasai Mara university',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                      // A picture at the left
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/travelling.PNG',
                            height: 500,
                          ),
                        ),
                      ),

                      //
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
