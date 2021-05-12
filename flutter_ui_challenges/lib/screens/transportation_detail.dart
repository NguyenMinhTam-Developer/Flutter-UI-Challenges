import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_challenges/constants/color.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:flutter_ui_challenges/screens/ticket.screen.dart';
import 'package:flutter_ui_challenges/widgets/default_layout.dart';
import 'package:flutter_ui_challenges/widgets/destination_card.dart';
import 'package:get/get.dart';

class TransportationDetailScreen extends StatefulWidget {
  const TransportationDetailScreen({Key key}) : super(key: key);

  @override
  _TransportationDetailScreenState createState() => _TransportationDetailScreenState();
}

class _TransportationDetailScreenState extends State<TransportationDetailScreen> {
  Color color = Get.arguments[0];
  String label = Get.arguments[1];
  String svgPath = Get.arguments[2];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultLayout(
        backgroundColor: color,
        overflow: true,
        overflowBody: Container(
          padding: EdgeInsets.only(top: spacing, left: spacing, right: spacing),
          child: Column(
            children: [
              TransportationDetailHeader(label: label, svgPath: svgPath),
              Expanded(child: TransportationDetailBody(color: color)),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportationDetailBody extends StatelessWidget {
  const TransportationDetailBody({
    Key key,
    @required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(spacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DestinationCard(),
            SizedBox(height: spacing * 2),
            Text(
              "Choose your Transport",
              style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold, height: 1),
            ),
            SizedBox(height: spacing),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                onTap: () => Get.to(() => TicketScreen()),
                title: Row(
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
                    Icon(Icons.transfer_within_a_station),
                    SizedBox(width: spacing),
                    Text(
                      "10 : 00",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                    ),
                  ],
                ),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16,
                    ),
                    SizedBox(width: spacing),
                    Text(
                      "Lorem Train Station",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$ 5.0",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold, height: 1),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: spacing / 2, vertical: spacing / 4),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(borderRadius / 2),
                      ),
                      child: Text(
                        "Select",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
