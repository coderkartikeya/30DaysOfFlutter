import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,

        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),

      // initialRoute: '/home',
      routes: {
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
