import 'dart:math';

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Dashboard".toUpperCase()),
        //   backgroundColor: Colors.blueGrey,
        // ),
        body: Container(
      child: Text(
        "First App",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),

      // width: 200,
      height: 200,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(40),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          color: Color(0xFFFFD740),
          border: Border.all(color: Colors.black, width: 5),
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage("images/image_1.png")),
          boxShadow: [
            BoxShadow(color: Colors.red, blurRadius: 7, spreadRadius: 5)
          ]),
    ));
  }
}

int getRandom() {
  Random random = Random();
  return random.nextInt(10);
}
