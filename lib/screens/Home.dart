import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: OutlinedButton(
          child: Row(
            children: [Text("Submit"), Icon(Icons.access_alarm)],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          onPressed: null,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              fixedSize: const Size(300, 80),
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              elevation: 20,
              shadowColor: Colors.red,
              side: BorderSide(color: Colors.black, width: 5),
              alignment: Alignment.center,
              shape: StadiumBorder()),
        ),
      ),
    ));
  }
}
