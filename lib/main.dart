import 'package:flutter/material.dart';
import 'package:whatsapp_jitendra_gupta/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green[900],
      ),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}