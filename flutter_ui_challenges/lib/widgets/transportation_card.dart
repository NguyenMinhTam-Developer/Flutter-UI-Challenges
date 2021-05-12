import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/screens/transportation_detail.dart';
import 'package:get/get.dart';

class TransportationCard extends StatelessWidget {
  const TransportationCard({
    Key key,
    @required this.label,
    @required this.svgPath,
    @required this.color,
  }) : super(key: key);

  final String label, svgPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => TransportationDetailScreen(), arguments: [color, label, svgPath]),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: spacing / 2),
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        child: Container(
          padding: EdgeInsets.all(spacing),
          height: 150,
          color: color,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  svgPath,
                  height: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: spacing / 2, vertical: spacing / 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(borderRadius / 2),
                    ),
                    child: Text(
                      "Select",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
