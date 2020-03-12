import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/data/data.dart';

Widget overlayBody(OverlayEntry overlayEntry, BuildContext context) {
  return Material(
    color: Colors.black54,
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              child: Container(
                width: double.infinity,
                color: Colors.transparent,
                child: null,
              ),
              onTap: () {
                overlayEntry.remove();
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1, -1),
                  blurRadius: 3.0,
                ),
              ],
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.3,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image(
                            height: 20.0,
                            width: 20.0,
                            image: AssetImage(user.profileImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                user.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(user.about),
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(0.0),
                    physics: ClampingScrollPhysics(),
                    itemCount: menuOptions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(menuOptions[index].title),
                        subtitle: Text(menuOptions[index].subtitle),
                        leading: menuOptions[index].leading,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}