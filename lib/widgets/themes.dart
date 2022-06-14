import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ),
    );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
       brightness: Brightness.dark,
    );
    static Color creamColor = Color.fromARGB(255, 240, 236, 236);
    static Color darkBlue = Color.fromARGB(255, 31, 6, 174);
    
}