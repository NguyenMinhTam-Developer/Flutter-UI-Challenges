import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/color.dart';

class PageViewDot extends StatelessWidget {
  final int index;
  final int currentIndex;
  final Color activeColor;

  const PageViewDot({
    Key key,
    @required this.index,
    this.currentIndex,
    this.activeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.all(6),
      height: 6,
      width: currentIndex == index ? 24 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: currentIndex == index ? activeColor : iconColor,
      ),
    );
  }
}
