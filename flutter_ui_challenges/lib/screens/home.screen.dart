import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/color.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/course.dart';
import 'package:flutter_ui_challenges/widgets/banner.dart';
import 'package:flutter_ui_challenges/widgets/course_card.dart';
import 'package:flutter_ui_challenges/widgets/langue_dropdown.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            LanguageDropdown(),
          ],
        ),
        body: Container(
          // padding: EdgeInsets.symmetric(vertical: spacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: spacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          width: 60,
                          height: 60,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        title: Text(
                          "Nguyen Minh Tam",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle: Container(
                          margin: EdgeInsets.only(top: spacing / 4),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: iconColor,
                              ),
                              SizedBox(width: spacing / 4),
                              Text(
                                "Viet Nam",
                                style: Theme.of(context).textTheme.bodyText2.copyWith(color: iconColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),
                      Text(
                        "Welcome back!",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Expanded(child: SizedBox(height: spacing)),
                      AdsBanner(),
                      Expanded(child: SizedBox(height: spacing)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: spacing),
                child: Text(
                  "Your Courses",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: spacing / 2, vertical: spacing),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    Course.courses.length,
                    (index) => CourseCard(
                      data: Course.courses[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
