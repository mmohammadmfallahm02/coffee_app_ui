import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/view/home_sreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(const TextTheme(
            headline1: TextStyle(
                fontSize: 40,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.w500),
            headline4: TextStyle(
                fontSize: 30,
                color: SolidColor.primaryTextColor,
                fontWeight: FontWeight.w600),
            subtitle1: TextStyle(
                fontSize: 20,
                color: SolidColor.secondaryTextColor,
                fontWeight: FontWeight.w600),
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
      home:  HomeScreen(),
    );
  }
}
