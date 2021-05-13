import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      background: Image.asset(
        'assets/images/home_bg.png',
        height: Get.height,
        width: Get.width,
        fit: BoxFit.fill,
      ),
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.all(spacing * 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Nguyen Minh Tam",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: spacing * 2),
                  Text(
                    "How are you doing?",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: spacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Daily Activity",
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(height: 12),
                      ActivityCard(
                        value: "3680",
                        unit: "steps",
                        chartImage: 'assets/icons/line_chart.svg',
                        unitIcon: 'assets/icons/foot_print.svg',
                      ),
                      SizedBox(height: 12),
                      ActivityCard(
                        value: "90",
                        unit: "bpm",
                        chartImage: 'assets/icons/heart_beat.svg',
                        unitIcon: 'assets/icons/heart.svg',
                      ),
                      SizedBox(height: 12),
                      ActivityCard(
                        value: "960",
                        unit: "calories",
                        chartImage: 'assets/icons/line_chart.svg',
                        unitIcon: 'assets/icons/fire.svg',
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: spacing * 1.5),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "GOOD",
                                    style: Theme.of(context).textTheme.headline3.copyWith(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    "Performance",
                                    style: TextStyle(height: 1),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: spacing),
                            Container(
                              height: 65,
                              width: 1,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(width: spacing),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                  Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                  Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                  Icon(Icons.star_rounded, color: Theme.of(context).primaryColor),
                                  Icon(Icons.star_half_rounded, color: Theme.of(context).primaryColor),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          unselectedItemColor: Theme.of(context).iconTheme.color,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: "Person",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer_rounded),
              label: "Timer",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key key,
    @required this.value,
    @required this.unit,
    @required this.chartImage,
    @required this.unitIcon,
  }) : super(key: key);

  final String value;
  final String unit;
  final String chartImage;
  final String unitIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(spacing * 2)),
      child: Container(
        height: 115,
        padding: EdgeInsets.all(spacing * 1.5),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                  ),
                  Text(
                    unit,
                    style: TextStyle(height: 1),
                  )
                ],
              ),
            ),
            SizedBox(width: spacing * 2),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      chartImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: spacing * 2),
                  Column(
                    children: [
                      SvgPicture.asset(
                        unitIcon,
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
