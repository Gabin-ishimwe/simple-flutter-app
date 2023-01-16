import 'package:flutter/material.dart';

class CustomListWidget extends StatelessWidget {
  String title, subTitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor;

  CustomListWidget(
      {required this.title,
      required this.subTitle,
      this.leadingIcon = Icons.label,
      this.trailingIcon = Icons.shopping_cart,
      this.listTileColor,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle),
        leading: IconButton(
          icon: Icon(leadingIcon),
          color: iconColor,
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          onPressed: (() {}),
        ),
        tileColor: listTileColor,
      ),
    );
  }
}
