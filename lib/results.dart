import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class results extends StatelessWidget {
  final String english;
  const results({Key? key, required this.english}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference courses =
        FirebaseFirestore.instance.collection('Courses');
    print(english);
    return FutureBuilder(
        future: courses.doc(english).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Subjects'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('${data['english']}'),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
