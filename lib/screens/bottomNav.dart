import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating button")),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.red,
        elevation: 10,
        // mini: true,

        // shape: BeveledRectangleBorder(
        //     borderRadius: BorderRadius.circular(30),
        //     side: BorderSide(
        //         color: Colors.blue, width: 2, style: BorderStyle.solid)),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home), Text("Home")],
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
        ),
      ),
    );
  }
}
