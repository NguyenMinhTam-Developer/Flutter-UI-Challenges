import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/theme/color.theme.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';
import 'package:flutter_ui_challenges/models/currency.model.dart';

import 'icon_holder.dart';

class CurrencyDetailCard extends StatelessWidget {
  final CurrencyModel data;

  const CurrencyDetailCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * 0.55,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))),
        clipBehavior: Clip.hardEdge,
        // margin: EdgeInsets.only(right: defaultMargin),
        child: Container(
          padding: const EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconHolder(
                    icon: Icons.account_balance_wallet_rounded,
                    backgroundColor: Color(0xFF4C5867),
                  ),
                  SizedBox(width: defaultMargin),
                  Text(
                    data.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(data.symbol, style: TextStyle(color: iconColor)),
                ],
              ),
              SizedBox(height: defaultMargin),
              Row(
                children: [
                  Text(
                    "\$39.584",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Color(0xFF4C5867),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(defaultMargin / 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    child: Text(
                      "+ 3.55%",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultMargin / 2),
              Text(
                "7.123456789 BTC",
                style: Theme.of(context).textTheme.headline6.copyWith(color: iconColor),
              ),
              SizedBox(height: defaultMargin / 2),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.expand_more_rounded,
                    // color: iconColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
