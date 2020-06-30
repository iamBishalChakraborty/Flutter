import 'package:flutter/material.dart';
import 'package:flutter_learn/homepage/homePage.dart';
import 'package:flutter_learn/homepage/login_page.dart';
import 'package:flutter_learn/util/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';



Future main() async{

  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    title: 'DocMedPlus',
    home: Constants.prefs.getBool("loggedIn") == true? HomePage() : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      "/home" : (context) => HomePage(),
      "/login" : (context) => LoginPage(),
    },
  ));
}

