import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container containerAreaOfInterest(
    String title, String imagelocation, Color color) {
  return Container(
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
  );
}
