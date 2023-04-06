import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/home.dart';
import 'package:tinder_clone/pages/profile.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: "/",
      routes: {'/': (context) => Home(), '/profile': (context) => Profile()}));
}
