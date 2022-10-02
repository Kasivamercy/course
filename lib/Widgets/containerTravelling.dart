import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget containerTravelling(
    String title, String imagelocation, Color color, Function ontap) {
  return GestureDetector(
    onTap: () => ontap,
    child: Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: 100,
      //color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListTile(
          trailing: Image.asset(imagelocation),
          subtitle: ClipRRect(
            child: Container(
              //  width: 30,
              //color: Colors.white,
              child: Text(
                "Apply ",
                style: TextStyle(
                  backgroundColor: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}
