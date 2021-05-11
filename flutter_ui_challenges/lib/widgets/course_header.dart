import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/course.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:flutter_ui_challenges/models/question.dart';

import 'difficulty_dropdown.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 125,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: spacing / 2),
                    child: Text(
                      data.name,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  DifficultyDropdown(data: data)
                ],
              ),
              Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        value: (answered / totalQuestion).toDouble(),
                        strokeWidth: 5,
                        backgroundColor: Colors.white30,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                    Text(
                      (answered / totalQuestion * 100).toStringAsFixed(0) + "%",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: spacing),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/milestone.svg',
              height: 24,
              width: 24,
            ),
            SizedBox(width: spacing / 2),
            SvgPicture.asset(
              'assets/icons/milestone.svg',
              height: 24,
              width: 24,
            ),
            SizedBox(width: spacing / 2),
            Text(
              "2 Milestones",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
