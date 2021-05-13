import 'package:meta/meta.dart';

class WeeklyActivity {
  final String svgImg, title, unit, value;

  WeeklyActivity({
    @required this.svgImg,
    @required this.title,
    @required this.value,
    this.unit,
  });
}
