import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';

class WeeklyActivityCard extends StatelessWidget {
  const WeeklyActivityCard({
    Key key,
    @required this.svgImg,
    @required this.title,
    @required this.value,
    this.unit,
  }) : super(key: key);

  final String svgImg, title, unit, value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(spacing / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: SvgPicture.asset(svgImg),
          ),
          SizedBox(width: spacing),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                      ),
                      SizedBox(height: spacing / 2),
                      Row(
                        children: [
                          Text(
                            value,
                            style: Theme.of(context).textTheme.headline4.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                          ),
                          SizedBox(width: spacing / 2),
                          Text(
                            unit ?? "",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.timer_rounded),
                    SizedBox(width: spacing),
                    Icon(Icons.bookmark_rounded),
                    SizedBox(width: spacing),
                    Icon(Icons.star_rounded),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
