import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/data/data.dart';
import 'package:whatsapp_jitendra_gupta/model/contact.dart';
import 'package:whatsapp_jitendra_gupta/screens/view_status.dart';
import 'package:whatsapp_jitendra_gupta/widgets/contact_status_icon.dart';

Widget statusCarousel() {
  return Container(
    width: double.infinity,
    height: 100.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: contacts.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return GestureDetector(
            child: contactStatus(
              'My Statys',
              user.profileImageUrl,
              myStatus: true,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ViewStatus(
                  imgUrl: user.myStatus,
                ),
              ),
            ),
          );
        } else {
          Contact contact = contacts[index - 1];
          return contactStatus(
            contact.name,
            contact.profileImageUrl,
          );
        }
      },
    ),
  );
}
