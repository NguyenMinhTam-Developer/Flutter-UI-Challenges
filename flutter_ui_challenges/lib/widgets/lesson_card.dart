import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:flutter_ui_challenges/screens/lesson.screen.dart';
import 'package:get/get.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    Key key,
    @required this.size,
    @required this.data,
  }) : super(key: key);

  final Size size;
  final Lesson data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => LessonScreen(), arguments: data),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        margin: EdgeInsets.all(0),
        child: Container(
          width: size.width / 2 - (spacing * 1.5),
          height: size.width / 2 - (spacing * 1.5),
          padding: EdgeInsets.all(spacing / 2),
          child: Column(
            children: [
              PhysicalModel(
                color: Colors.white,
                shape: BoxShape.circle,
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(spacing),
                  child: SvgPicture.asset(
                    data.icon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: spacing / 2)),
              Text(data.name, style: Theme.of(context).textTheme.bodyText1),
              RichText(
                text: TextSpan(
                  text: data.questions.where((element) => element.answered).length.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                  children: <TextSpan>[
                    TextSpan(
                      text: " / " + data.questions.length.toString(),
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox(height: spacing / 2)),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: LinearProgressIndicator(
                  minHeight: 5,
                  value: (data.questions.where((element) => element.answered).length / data.questions.length).toDouble(),
                  valueColor: AlwaysStoppedAnimation(data.color),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
