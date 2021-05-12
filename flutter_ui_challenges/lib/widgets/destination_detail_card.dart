import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constants/color.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:get/get.dart';

class DestinationDetailCard extends StatelessWidget {
  const DestinationDetailCard({
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
        padding: EdgeInsets.all(spacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(width: spacing),
                Column(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: busColor,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: spacing / 2),
                      height: 50,
                      width: 2,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: trainColor,
                    ),
                  ],
                ),
                SizedBox(width: spacing * 2),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "From",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                      ),
                      Text(
                        "Lorem Bus Station",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Text(
                        "To",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                      ),
                      Text(
                        "Lorem Train Station",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: spacing),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 16,
                        ),
                        SizedBox(width: spacing),
                        Text(
                          "10 : 00",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                        ),
                        SizedBox(width: spacing),
                        Icon(
                          Icons.train,
                          size: 16,
                        ),
                        SizedBox(width: spacing),
                        Text(
                          "10 : 00",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                        ),
                      ],
                    ),
                    SizedBox(height: spacing),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 16,
                        ),
                        SizedBox(width: spacing),
                        Text(
                          "Loren Bus Station",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                        ),
                      ],
                    ),
                    SizedBox(height: spacing),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          size: 16,
                        ),
                        SizedBox(width: spacing),
                        Text(
                          "\$ 5.0",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/images/qr.png',
                  height: 100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransportationDetailHeader extends StatelessWidget {
  const TransportationDetailHeader({
    Key key,
    @required this.label,
    @required this.svgPath,
  }) : super(key: key);

  final String label;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(spacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () => Get.back(),
              ),
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.transparent,
                  size: 24,
                ),
                onPressed: null,
              ),
            ],
          ),
          Expanded(
            child: SvgPicture.asset(
              svgPath,
              width: Get.width,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
