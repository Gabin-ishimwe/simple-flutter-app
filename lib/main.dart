import "package:flutter/material.dart";
import 'package:simple_flutter_app/screens/Home.dart';
import 'package:simple_flutter_app/screens/dashboard.dart';

void main() => runApp(const MyApp());

// stateless widgets: are widgets that don't change change their position
// when the application starts running
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Simple Flutter App", themeMode: ThemeMode.system, home: Home());
  }
}
