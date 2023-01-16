import 'package:flutter/material.dart';
import 'package:simple_flutter_app/widgets/listWidget.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CustomListWidget(
            title: "Monitor",
            subTitle: "Desktop Monitor",
            iconColor: Colors.blue,
            leadingIcon: Icons.desktop_mac,
            listTileColor: Colors.amber[400],
          ),
          CustomListWidget(
            title: "KeyBoard",
            subTitle: "Unwired Keyboard",
            iconColor: Colors.blue,
            leadingIcon: Icons.keyboard,
            listTileColor: Colors.amber[400],
          ),
        ],
      ),
    );
  }
}
