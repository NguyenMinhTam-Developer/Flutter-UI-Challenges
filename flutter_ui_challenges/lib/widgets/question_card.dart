import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Question data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(spacing),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
      child: Container(
        padding: EdgeInsets.all(spacing),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "\"",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Text(
              data.title,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    height: 1,
                    color: Colors.black,
                  ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text(
                  "\"",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
