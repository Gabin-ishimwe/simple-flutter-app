import 'package:flutter/material.dart';

class ListViewing extends StatelessWidget {
  const ListViewing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          /*
        list view commonly used when we want to have 
        a scrollable screen
         */
          child: ListView(
        itemExtent: 100,
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.lock_clock),
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.red,
            ),
            title: const Text("Alarm"),
            subtitle: const Text("wake up alarm..."),
            trailing: const Icon(Icons.plus_one),
            onTap: () {},
            tileColor: Colors.blue,
          ),
        ],
      )),
    );
  }
}
