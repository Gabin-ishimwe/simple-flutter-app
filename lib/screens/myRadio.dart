import 'package:flutter/material.dart';

enum Gender { Male, Female }

class MyRadio extends StatelessWidget {
  String title;
  Gender value;
  Gender? chooseGenderEnum;
  Function(Gender?)? onChange;
  MyRadio(
      {required this.title,
      required this.value,
      required this.chooseGenderEnum,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        contentPadding: EdgeInsets.all(0),
        dense: true,
        value: value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        tileColor: Colors.amber,
        groupValue: chooseGenderEnum,
        title: Text(title),
        onChanged: onChange);
  }
}
