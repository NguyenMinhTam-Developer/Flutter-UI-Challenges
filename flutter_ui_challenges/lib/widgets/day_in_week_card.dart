import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';

class DayInWeekCard extends StatelessWidget {
  const DayInWeekCard({
    Key key,
    @required this.isToday,
    @required this.dayOfWeek,
    @required this.dayOfMonth,
  }) : super(key: key);

  final bool isToday;
  final int dayOfWeek;
  final int dayOfMonth;

  @override
  Widget build(BuildContext context) {
    String _dayOfWeek = "";

    switch (dayOfWeek) {
      case 0:
        {
          _dayOfWeek = "Mon";
          break;
        }
      case 1:
        {
          _dayOfWeek = "Tue";
          break;
        }
      case 2:
        {
          _dayOfWeek = "Wed";
          break;
        }
      case 3:
        {
          _dayOfWeek = "Thu";
          break;
        }
      case 4:
        {
          _dayOfWeek = "Fri";
          break;
        }
      case 5:
        {
          _dayOfWeek = "Sat";
          break;
        }
      case 6:
        {
          _dayOfWeek = "Sun";
          break;
        }
    }

    return Card(
      color: isToday ? Theme.of(context).primaryColor : Colors.transparent,
      shadowColor: Colors.transparent,
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(spacing / 2),
        child: Column(
          children: [
            Text(
              _dayOfWeek,
              style: TextStyle(fontWeight: FontWeight.bold, color: isToday ? Colors.white : Theme.of(context).textTheme.bodyText1.color),
            ),
            Text(
              dayOfMonth.toString(),
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: isToday ? Colors.white : Theme.of(context).textTheme.bodyText1.color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
