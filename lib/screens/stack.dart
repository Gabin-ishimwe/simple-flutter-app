import 'package:flutter/material.dart';

class Stacking extends StatelessWidget {
  const Stacking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Display"),
        centerTitle: true,
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        // textDirection: TextDirection.rtl,
        children: [
          Positioned(
            // used hand in hand with child in stack
            child: Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
          ),
          Positioned(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            top: 0,
            right: 50,
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            left: 100,
            top: 100,
          )
        ],
      )),
      backgroundColor: Colors.amber,
    );
  }
}
