import 'package:flutter/material.dart';

Widget bottomNavButton(String text, IconData icon, {bool isActive = false}) {
  return GestureDetector(
    onTap: () {
      print(text);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: (!isActive ? Colors.grey : Colors.green[400]),
        ),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(
            color: (!isActive ? Colors.grey : Colors.green[400]),
          ),
        ),
      ],
    ),
  );
}
