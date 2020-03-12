import 'package:flutter/material.dart';

Widget bottomNavButton(String text, Icon icon) {
  return GestureDetector(
    onTap: () {
      print(text);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(height: 5.0),
        Text(text),
      ],
    ),
  );
}
