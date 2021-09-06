import 'package:flutter/material.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/utils/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeroute : (context) => HomePage(),
        MyRoutes.loginroute : (context) => LoginPage(),
      },
    );
    }
}