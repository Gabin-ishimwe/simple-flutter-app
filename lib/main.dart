import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
      title: "Simple Flutter App",
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
          ),
        ),
      )));
}