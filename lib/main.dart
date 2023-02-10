import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.bebasNeueTextTheme(const TextTheme(
            headline1: TextStyle(
                fontSize: 40,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.w600),
            headline4: TextStyle(
                fontSize: 30,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.w600),
            subtitle1: TextStyle(
                fontSize: 22,
                color: SolidColor.secondaryTextColor,
                fontWeight: FontWeight.bold),
            subtitle2: TextStyle(
                fontSize: 22,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.normal),
            caption:
                TextStyle(fontSize: 12, color: SolidColor.primaryTextColor),
            bodyText2: TextStyle(
                fontSize: 14,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.normal))),
      ),
      home: const Scaffold(),
    );
  }
}
