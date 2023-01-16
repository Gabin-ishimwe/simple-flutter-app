import 'package:flutter/material.dart';

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Rows and Columns")),
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Row(
              children: [
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
                Column(
                  children: [Icon(Icons.apple), Text("Apple")],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Row(
              children: [
                // really important widget !!!!
                Expanded(
                  child: Image(image: AssetImage("images/image_1.png")),
                  flex: 1,
                ),
                Expanded(child: Image(image: AssetImage("images/image_1.png"))),
                Expanded(
                  child: Image(image: AssetImage("images/image_1.png")),
                  flex: 2,
                ),
                Expanded(
                  child: Image(image: AssetImage("images/image_1.png")),
                  flex: 4,
                ),
              ],
            )
          ],
        )));
  }
}
