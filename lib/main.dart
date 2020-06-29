import 'package:flutter/material.dart';
import 'package:flutter_learn/homepage/homePage.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Application',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}

