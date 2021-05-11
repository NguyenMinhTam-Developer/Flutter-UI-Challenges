import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:get/get.dart';

class LessonHeaderBackground extends StatelessWidget {
  const LessonHeaderBackground({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Lesson data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/appbar.svg',
            height: size.width,
            color: data.color,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: spacing,
            left: -Get.width * 0.1,
            child: Container(
              height: Get.width * 0.5,
              width: Get.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: spacing * 2,
            right: -Get.width * 0.2,
            child: Container(
              height: Get.width * 0.45,
              width: Get.width * 0.45,
              decoration: BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: spacing * 6,
            right: spacing * 3,
            child: Container(
              height: Get.width * 0.2,
              width: Get.width * 0.2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 5),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
