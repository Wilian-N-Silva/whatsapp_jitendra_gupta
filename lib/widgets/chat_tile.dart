import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/data/data.dart';

Widget chatTile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 75,
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image(
                height: 50.0,
                width: 50.0,
                image: AssetImage(contacts[0].profileImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Name'),
                SizedBox(height: 7.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.done_all,
                      color: Colors.blue,
                      size: 17.0,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        'Last Message Lorem Ipsum Dolor Lorem Ipsum',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '6:30pm',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 7.0),
              Icon(
                Icons.lock_outline,
                color: Colors.grey,
                size: 20.0,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
