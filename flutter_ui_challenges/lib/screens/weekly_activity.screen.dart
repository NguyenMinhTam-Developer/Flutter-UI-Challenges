import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/models/weekly_activity.dart';
import 'package:flutter_ui_challenges/widgets/day_in_week_card.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:flutter_ui_challenges/widgets/weekly_point_progress_bar.dart';
import 'package:flutter_ui_challenges/widgets/weekyly_activity_card.dart';
import 'package:get/get.dart';

class WeeklyActivityScreen extends StatefulWidget {
  const WeeklyActivityScreen({Key key}) : super(key: key);

  @override
  _WeeklyActivityScreenState createState() => _WeeklyActivityScreenState();
}

class _WeeklyActivityScreenState extends State<WeeklyActivityScreen> {
  List<WeeklyActivity> weeklyActiviyList = <WeeklyActivity>[];

  @override
  void initState() {
    super.initState();

    weeklyActiviyList = [
      new WeeklyActivity(
        svgImg: 'assets/icons/running.svg',
        title: "Running",
        value: "30",
        unit: "min",
      ),
      new WeeklyActivity(
        svgImg: 'assets/icons/ball.svg',
        title: "Ball Exercise",
        value: "15 x",
        unit: "",
      ),
      new WeeklyActivity(
        svgImg: 'assets/icons/planking.svg',
        title: "Planking",
        value: "5",
        unit: "min",
      ),
      new WeeklyActivity(
        svgImg: 'assets/icons/push_up.svg',
        title: "Push up",
        value: "20 x",
        unit: "",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    int _dayOfWeek = 0 - 1;
    int _dayOfMonth = DateTime.now().day - DateTime.now().weekday;
    int _today = DateTime.now().day;

    return DefaultLayout(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(spacing * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Weekly Activity",
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: spacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                7,
                (index) {
                  setState(() {
                    _dayOfWeek++;
                    _dayOfMonth++;

                    if (_dayOfWeek >= 7) _dayOfWeek = 0;
                    if (_dayOfMonth >= 31) _dayOfMonth = 0;
                  });

                  return DayInWeekCard(
                    dayOfWeek: _dayOfWeek,
                    dayOfMonth: _dayOfMonth,
                    isToday: _today == _dayOfMonth,
                  );
                },
              ),
            ),
            SizedBox(height: spacing),
            Text(
              "Weekly Points",
              style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: spacing),
            WeeklyPointProgessBar(
              currentPoint: 1750,
              maxPoint: 2000,
            ),
            SizedBox(height: spacing),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => WeeklyActivityCard(
                    svgImg: weeklyActiviyList[index].svgImg,
                    value: weeklyActiviyList[index].value,
                    title: weeklyActiviyList[index].title,
                    unit: weeklyActiviyList[index].unit,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: spacing * 2,
                  ),
                  itemCount: weeklyActiviyList.length,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
