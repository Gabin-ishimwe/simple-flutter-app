import "package:flutter/material.dart";
import 'package:simple_flutter_app/screens/Home.dart';
import 'package:simple_flutter_app/screens/bottomNav.dart';
import 'package:simple_flutter_app/screens/custom.dart';
import 'package:simple_flutter_app/screens/dashboard.dart';
import 'package:simple_flutter_app/screens/form.dart';
import 'package:simple_flutter_app/screens/listBuilder.dart';
import 'package:simple_flutter_app/screens/listView.dart';
import 'package:simple_flutter_app/screens/rename.dart';
import 'package:simple_flutter_app/screens/stack.dart';
import 'package:simple_flutter_app/widgets/stateWidget.dart';

void main() => runApp(const MyApp());

// stateless widgets: are widgets that don't change change their position
// when the application starts running
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Simple Flutter App",
        themeMode: ThemeMode.system,
        home: MyForm());
  }
}
