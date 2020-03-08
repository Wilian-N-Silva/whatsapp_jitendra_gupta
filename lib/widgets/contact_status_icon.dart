import 'package:flutter/material.dart';

Widget contactStatus(String name, String imgUrl) {
  List<String> nameSplit = name.split(" ");
  const double size = 60.0;

  return Container(
    margin: EdgeInsets.symmetric(horizontal: 7.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2.0,
              color: Colors.green[400],
            ),
          ),
          child: Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.transparent,
              ),
            ),
            child: ClipOval(
              child: Image(
                height: size,
                width: size,
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(nameSplit[0]),
      ],
    ),
  );
}