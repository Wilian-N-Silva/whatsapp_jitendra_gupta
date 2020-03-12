import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/data/data.dart';
import 'package:whatsapp_jitendra_gupta/widgets/bottomNavigation.dart';
import 'package:whatsapp_jitendra_gupta/widgets/chat_tile.dart';
import 'package:whatsapp_jitendra_gupta/widgets/menuOverlay.dart';
import 'package:whatsapp_jitendra_gupta/widgets/status_carrousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: overlayBody(overlayEntry, context),
      ),
    );

    overlayState.insert(overlayEntry);
  }

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
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 23.0,
                    width: 23.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Theme.of(context).primaryColor,
                      ),
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
                ],
              ),
            ),
            onTap: () {
              showOverlay(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 70.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 16,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return statusCarousel();
            }
            return chatTile(counter: index - 1);
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
