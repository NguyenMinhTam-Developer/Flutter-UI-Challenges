import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/color.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:flutter_ui_challenges/widgets/home_header.dart';
import 'package:flutter_ui_challenges/widgets/properties_card.dart';
import 'package:flutter_ui_challenges/widgets/transportation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      overflow: true,
      overflowBody: Column(
        children: [
          HomeHeader(),
          Expanded(child: HomeBody()),
        ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: spacing, left: spacing, right: spacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PropertiesCard(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: spacing / 2),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: spacing),
                  Text(
                    "Choose your Transport",
                    style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold, height: 1),
                  ),
                  SizedBox(height: spacing),
                  TransportationCard(
                    color: busColor,
                    label: "Bus",
                    svgPath: 'assets/images/bus.svg',
                  ),
                  TransportationCard(
                    color: trainColor,
                    label: "Train",
                    svgPath: 'assets/images/train.svg',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
