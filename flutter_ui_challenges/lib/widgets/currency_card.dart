import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';
import 'package:flutter_ui_challenges/models/currency.model.dart';
import 'package:flutter_ui_challenges/screens/curreny_detail.screen.dart';
import 'package:get/get.dart';

import 'icon_holder.dart';

class CurrencyCard extends StatelessWidget {
  final CurrencyModel data;

  const CurrencyCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: ListTile(
        onTap: () {
          Get.to(() => CurrencyDetailScreen(), arguments: data);
        },
        contentPadding: const EdgeInsets.symmetric(vertical: defaultMargin / 2, horizontal: defaultMargin),
        leading: IconHolder(
          icon: data.icon,
          backgroundColor: data.backgroundColor,
        ),
        title: Row(
          children: [
            Text(
              data.totalCurrencyAmount.toString() + " " + data.symbol,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "\$" + data.totalAmount.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              "\$ " + data.percentAmount.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              (data.percent > 0 ? "+" : "") + data.percent.toString() + "%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: data.percent > 0 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
