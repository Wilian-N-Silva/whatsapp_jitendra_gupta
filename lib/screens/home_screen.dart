import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/widgets/chat_tile.dart';
import 'package:whatsapp_jitendra_gupta/widgets/status_carrousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.camera_alt,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: 20.0,
              height: 20.0,
              child: Container(
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.7,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: null,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 70.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            //Reimplement needed. Logic created just for tests. !!
            int showCarrousel = index;
            if (showCarrousel == 0) {
              return statusCarousel();
            } else {
              return chatTile();
            }
          },
        ),
      ),
      bottomSheet: Container(
        height: 70.0,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            bottomNavButton(
              'Chats',
              Icon(Icons.chat),
            ),
            bottomNavButton(
              'Calls',
              Icon(Icons.call),
            ),
            bottomNavButton(
              'Contacts',
              Icon(Icons.people),
            ),
          ],
        ),
      ),
    );
  }
}

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
