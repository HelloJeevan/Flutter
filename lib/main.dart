import 'package:flutter/material.dart';
import 'package:flutter_basic/Pages/HomePage.dart';
import 'package:flutter_basic/Pages/LoginPage.dart';
import 'package:flutter_basic/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp() );
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode:ThemeMode.light ,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" :(context) => LoginPage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),

      },
    );
  }
}