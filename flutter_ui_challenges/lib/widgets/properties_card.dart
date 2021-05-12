import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';

class PropertiesCard extends StatelessWidget {
  const PropertiesCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: 10,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
      child: Container(
        height: 120,
        padding: EdgeInsets.symmetric(horizontal: spacing, vertical: spacing * 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Balance",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "\$ 18",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rewards",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "\$ 10.25",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Trips",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "185",
                  style: Theme.of(context).textTheme.headline6.copyWith(
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
