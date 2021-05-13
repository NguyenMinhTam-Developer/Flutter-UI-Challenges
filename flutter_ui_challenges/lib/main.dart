import 'package:flutter/material.dart';
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
        primaryColor: Color(0xFFFE685E),
        backgroundColor: Color(0xFF612C58),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Color(0xFFAC7197)),
        iconTheme: IconThemeData(color: Color(0xFFAC7197)),
      ),
      home: Scaffold(),
    );
  }
}
