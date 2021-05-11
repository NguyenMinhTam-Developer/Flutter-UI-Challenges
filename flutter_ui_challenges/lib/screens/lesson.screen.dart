import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/lesson.dart';
import 'package:flutter_ui_challenges/widgets/lesson_header_background.dart';
import 'package:flutter_ui_challenges/widgets/page_view_dot.dart';
import 'package:flutter_ui_challenges/widgets/question_card.dart';
import 'package:get/get.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({Key key}) : super(key: key);

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  Lesson data = Get.arguments;
  int currentPageView = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            LessonHeaderBackground(data: data),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    size: 36,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  "Course",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                      ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  )
                ],
              ),
              body: Container(
                padding: EdgeInsets.symmetric(vertical: spacing),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: spacing),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: spacing),
                      child: Text(
                        "Translate these pharses to English",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    SizedBox(height: spacing / 2),
                    Expanded(
                      child: PageView(
                        controller: pageController,
                        physics: NeverScrollableScrollPhysics(),
                        onPageChanged: (value) {
                          setState(() {
                            currentPageView = value;
                          });
                        },
                        children: List.generate(
                          data.questions.length,
                          (index) => QuestionCard(
                            data: data.questions[index],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        data.questions.length,
                        (index) => PageViewDot(
                          activeColor: data.color,
                          index: index,
                          currentIndex: currentPageView,
                        ),
                      ),
                    ),
                    SizedBox(height: spacing / 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: spacing),
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
                        child: Padding(
                          padding: const EdgeInsets.all(spacing),
                          child: TextField(
                            maxLines: 2,
                            cursorColor: data.color,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: spacing / 2),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentPageView++;
                          pageController.animateToPage(
                            currentPageView,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceIn,
                          );
                        });
                      },
                      child: Center(
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: PhysicalModel(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            elevation: 5,
                            child: Icon(
                              Icons.check_outlined,
                              size: 36,
                              color: data.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
