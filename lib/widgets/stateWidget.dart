import "package:flutter/material.dart";

class MyShoes extends StatelessWidget {
  const MyShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoes store"),
      ),
      body: StateWidget(),
    );
  }
}

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nike shoes"),
          trailing: IconButton(
            icon: liked ? Icon(Icons.thumb_up) : Icon(Icons.thumb_down),
            onPressed: () {
              setState(() {
                liked = !liked;
              });
            },
          ),
        )
      ],
    );
  }
}
