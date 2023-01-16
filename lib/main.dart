// class me pehla word ka pehla character aur subwords me bhi pehla charcter capital hoga     but it does not happen in function...In function 1st word is small for ex -  in "build" and if we write anoter word then that will be in captial for ex - "buildApp"

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        //PrimarySwatch - Collection of colours
        //theme: ThemeData( brightness: Brightness.dark, primarySwatch: Colors.red),

        //routes - takes map(key & value)
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage(),
          "/Login": (context) => LoginPage()
        });
  }
}
