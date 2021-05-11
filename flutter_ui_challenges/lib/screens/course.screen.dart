import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/course.dart';
import 'package:flutter_ui_challenges/widgets/course_header.dart';
import 'package:flutter_ui_challenges/widgets/course_header_background.dart';
import 'package:flutter_ui_challenges/widgets/lesson_card.dart';
import 'package:get/get.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Course data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CourseHeaderBackground(data: data),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    size: 36,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  "Course",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                      ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  )
                ],
              ),
              body: Container(
                padding: EdgeInsets.only(top: spacing, left: spacing, right: spacing),
                child: Column(
                  children: [
                    CourseHeader(data: data),
                    SizedBox(height: spacing),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(vertical: spacing),
                        child: Wrap(
                          spacing: spacing,
                          runSpacing: spacing,
                          children: List.generate(
                            data.lessons.length,
                            (index) => LessonCard(size: size, data: data.lessons[index]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
