import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter UI Challenge Day 0#',
      theme: ThemeData(
        backgroundColor: Color(0xFF612C58),
      ),
      home: Scaffold(),
    );
  }
}
