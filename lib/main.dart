import 'package:flutter/material.dart';
import 'package:flutter_learn/homepage/homePage.dart';
import 'package:flutter_learn/homepage/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'DocMedPlus',
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      "/home" : (context) => HomePage(),
      "/login" : (context) => LoginPage(),
    },
  ));
}

