import 'package:flutter/material.dart';

class ViewStatus extends StatelessWidget {
  final String imgUrl;
  ViewStatus({this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: <Widget>[
            Image(
              height: double.infinity,
              image: AssetImage(imgUrl),
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
