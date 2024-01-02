import 'package:flutter/material.dart';
import 'package:instaapp/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {'home': (context) => HomePage()},
  ));
}
