import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/models/question.dart';
import 'package:meta/meta.dart';

class Lesson {
  final String name;
  final String icon;
  final Color color;
  final List<Question> questions;

  Lesson({
    @required this.name,
    @required this.icon,
    @required this.color,
    @required this.questions,
  });
}
