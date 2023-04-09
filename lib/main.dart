import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/home.dart';
import 'package:tinder_clone/pages/profile.dart';
import 'package:tinder_clone/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/", routes: {
    '/': (context) => Home(),
    '/profile': (context) => const Profile(),
    '/location': (context) => ChooseLocation(),
  }));
}
