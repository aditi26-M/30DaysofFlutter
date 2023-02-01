import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.poppins().fontFamily,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
              titleTextStyle: Theme.of(context).textTheme.headline6,
            )
  );

static ThemeData get darkTheme => ThemeData(
            brightness: Brightness.dark,
);

  static BuildContext get context => context;


  // color

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);

} 