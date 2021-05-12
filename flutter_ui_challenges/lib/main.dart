import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/screens/home.screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter UI Challenge Day 0#',
      theme: ThemeData(
        backgroundColor: Color(0xFF3A9EC1),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
      ),
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
