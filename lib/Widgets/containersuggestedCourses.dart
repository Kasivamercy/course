import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget containerSuggestedCourses(BuildContext context, String title,
    String imagelocation, Color color, String route) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(context, '/$route'),
    child: Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: 100,
      //color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListTile(
          trailing: Image.asset(imagelocation),
          title: Text(title),
        ),
      ),
    ),
  );
}
