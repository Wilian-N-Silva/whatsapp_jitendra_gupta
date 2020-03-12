import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/model/menu.dart';
import 'package:whatsapp_jitendra_gupta/model/user.dart';
import 'package:whatsapp_jitendra_gupta/model/contact.dart';

final user = User(
  name: 'Alexa Perez',
  about: 'Just Living',
  profileImageUrl: 'assets/profile_pics/alex-perez-vXQza9AUe40-unsplash.jpg',
  myStatus: 'assets/status_pics/alex-perez-VLPLo-GtrIE-unsplash.jpg',
);

final contacts = [
  Contact(
    name: 'Aldo DeLara',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl: 'assets/profile_pics/aldo-delara-3_Si7AS2iA4-unsplash.jpg',
  ),
  Contact(
    name: 'Autri Taheri',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl:
        'assets/profile_pics/autri-taheri-Av9BgqzDnCk-unsplash.jpg',
  ),
  Contact(
    name: 'Caleb Jones',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl: 'assets/profile_pics/caleb-jones-rpPvrOQmR2s-unsplash.jpg',
  ),
  Contact(
    name: 'Clem Onoje',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl:
        'assets/profile_pics/clem-onojeghuo-qGxhaKETzsY-unsplash.jpg',
  ),
  Contact(
    name: 'Julia Fez',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl: 'assets/profile_pics/fezbot2000-pqYPRPHNE_8-unsplash.jpg',
  ),
  Contact(
    name: 'Angela Pham',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl: 'assets/profile_pics/henri-pham-u6JG0eYjcEU-unsplash.jpg',
  ),
  Contact(
    name: 'Michelle Dam',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl: 'assets/profile_pics/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
  ),
  Contact(
    name: 'Mikayla Mallek',
    phoneNumber: '+55 11 91234-5678',
    profileImageUrl:
        'assets/profile_pics/mikayla-mallek-Zb_HYhU1K1I-unsplash.jpg',
  ),
];

final menuOptions = [
  Menu(
      leading: Icon(
        Icons.vpn_key,
        color: Colors.green[400],
      ),
      title: 'Account',
      subtitle: 'Privacy, Security, Change Number'),
  Menu(
      leading: Icon(
        Icons.chat,
        color: Colors.green[400],
      ),
      title: 'Chats',
      subtitle: 'Backups, History, Wallpaper'),
  Menu(
      leading: Icon(
        Icons.notifications_none,
        color: Colors.green[400],
      ),
      title: 'Notification',
      subtitle: 'Messages, Group & Call Tones'),
  Menu(
      leading: Icon(
        Icons.account_balance_wallet,
        color: Colors.green[400],
      ),
      title: 'Payments',
      subtitle: 'History, Bank Accounts'),
  Menu(
      leading: Icon(
        Icons.data_usage,
        color: Colors.green[400],
      ),
      title: 'Data and Storage Usage',
      subtitle: 'Network Usage, Auto-Download'),
  Menu(
      leading: Icon(
        Icons.help_outline,
        color: Colors.green[400],
      ),
      title: 'Help',
      subtitle: 'FAQ, Contact US, Privacy Policy'),
  Menu(
      leading: Icon(
        Icons.people,
        color: Colors.green[400],
      ),
      title: 'People',
      subtitle: 'Invite a Friend'),
];
