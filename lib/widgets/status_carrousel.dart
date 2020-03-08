import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/data/data.dart';
import 'package:whatsapp_jitendra_gupta/model/contact.dart';
import 'package:whatsapp_jitendra_gupta/widgets/contact_status_icon.dart';

Widget statusCarousel() {
  return Container(
    width: double.infinity,
    height: 100.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: contacts.length,
      itemBuilder: (BuildContext context, int index) {
        Contact contact = contacts[index];
        return contactStatus(
          contact.name,
          contact.profileImageUrl,
        );
      },
    ),
  );
}