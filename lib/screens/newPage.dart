import 'package:flutter/material.dart';

class MyNewPage extends StatelessWidget {
  String productName;

  MyNewPage({super.key, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: Center(child: Text(productName)),
    );
  }
}
