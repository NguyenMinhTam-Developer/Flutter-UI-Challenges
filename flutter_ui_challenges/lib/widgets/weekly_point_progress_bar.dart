import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';

class WeeklyPointProgessBar extends StatelessWidget {
  const WeeklyPointProgessBar({
    Key key,
    @required this.currentPoint,
    @required this.maxPoint,
  }) : super(key: key);

  final int currentPoint, maxPoint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
          child: LinearProgressIndicator(
            value: currentPoint / maxPoint,
            valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
            backgroundColor: Theme.of(context).iconTheme.color,
            minHeight: 7.5,
          ),
        ),
        SizedBox(height: spacing / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              1750.toString() + " pts",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              2000.toString() + " pts",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
