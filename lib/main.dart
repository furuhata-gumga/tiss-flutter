import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiss_example/presentation_screen/presentation.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: const Color(0xff00c9ff).withOpacity(0.5),
    // ));
    return MaterialApp(
      title: 'Tiss',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.nunito().fontFamily,
        // textTheme: const TextTheme(
        //   bodyText1: TextStyle(color: Colors.white),
        //   bodyText2: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        // )
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(),
      home: const Presentation(),
    );
  }
}

