import 'package:meta/meta.dart';

class Question {
  final bool answered;
  final String title;

  Question({
    @required this.answered,
    @required this.title,
  });
}
