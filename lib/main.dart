import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart.dart';
import 'package:flutter_catalog/pages/login.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
              titleTextStyle: Theme.of(context).textTheme.headline6,
            )),
        debugShowCheckedModeBanner: false,
        //PrimarySwatch - Collection of colours
        /*
        darktheme: ThemeData(
          brightness: Bright0 
    */
        //routes - takes map(key & value)
        initialRoute: MyRoute.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoute.homeRoute: (context) => HomePage(),
          MyRoute.loginRoute: (context) => LoginPage(),
          MyRoute.cartRoute: (context) => CartPage()
        });
  }
}
