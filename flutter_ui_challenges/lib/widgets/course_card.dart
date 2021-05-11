import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/course.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:flutter_ui_challenges/models/question.dart';
import 'package:flutter_ui_challenges/screens/course.screen.dart';
import 'package:get/get.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Course data;

  @override
  Widget build(BuildContext context) {
    int answered = 0;
    int totalQuestion = 0;

    for (Lesson lesson in data.lessons) {
      for (Question quesion in lesson.questions) {
        if (quesion.answered) {
          answered++;
        }
        totalQuestion++;
      }
    }

    return GestureDetector(
      onTap: () => Get.to(() => CourseScreen(), arguments: data),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        margin: EdgeInsets.symmetric(horizontal: spacing / 2),
        color: data.color,
        child: Container(
          width: 150,
          padding: EdgeInsets.all(spacing / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                data.difficulty,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
              ),
              SizedBox(height: spacing / 2),
              Row(
                children: [
                  Spacer(),
                  Container(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            value: (answered / totalQuestion).toDouble(),
                            strokeWidth: 3,
                            backgroundColor: Colors.white30,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          ),
                        ),
                        Text(
                          (answered / totalQuestion * 100).toStringAsFixed(0) + "%",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
