import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/theme/color.theme.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';
import 'package:flutter_ui_challenges/models/currency.model.dart';
import 'package:flutter_ui_challenges/widgets/curreny_detail_card.dart';
import 'package:flutter_ui_challenges/widgets/data_filter.dart';
import 'package:flutter_ui_challenges/widgets/icon_holder.dart';
import 'package:get/get.dart';

class CurrencyDetailScreen extends StatelessWidget {
  const CurrencyDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyModel data = Get.arguments;
    final List<Color> gradientColors = [
      const Color(0xff23b6e6),
      const Color(0xff02d39a),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: iconColor),
          onPressed: () => Get.back(),
        ),
        title: Text(data.symbol.toUpperCase() + " Wallet", style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: iconColor),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrencyDetailCard(data: data),
            SizedBox(height: defaultMargin),
            DataFilter(),
            SizedBox(height: defaultMargin),
            Expanded(
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultMargin / 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: defaultMargin, left: defaultMargin / 2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: 14,
                                  color: Colors.red,
                                ),
                                SizedBox(width: defaultMargin / 2),
                                Text(
                                  "Lower: \$4.857",
                                  style: TextStyle(color: iconColor),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: defaultMargin, right: defaultMargin / 2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: 14,
                                  color: Colors.green,
                                ),
                                SizedBox(width: defaultMargin / 2),
                                Text(
                                  "Higher: \$14.857",
                                  style: TextStyle(color: iconColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              maxY: 6,
                              titlesData: FlTitlesData(
                                show: false,
                              ),
                              axisTitleData: FlAxisTitleData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: false,
                              ),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 3),
                                    FlSpot(2.6, 2),
                                    FlSpot(4.9, 5),
                                    FlSpot(6.8, 2.5),
                                    FlSpot(8, 4),
                                    FlSpot(9.5, 3),
                                    FlSpot(11, 4),
                                  ],
                                  isCurved: true,
                                  colors: gradientColors,
                                  barWidth: 3,
                                  // dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                    show: true,
                                    colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: defaultMargin / 4,
                            bottom: defaultMargin / 4,
                            child: Container(
                              padding: EdgeInsets.all(defaultMargin / 2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 14,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: defaultMargin / 2),
                                  Text(
                                    "1 BTC = \$10.23",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultMargin),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(defaultBorderRadius)),
                    child: Container(
                      padding: EdgeInsets.all(defaultMargin),
                      child: Column(
                        children: [
                          IconHolder(
                            icon: Icons.attach_money_rounded,
                            backgroundColor: Color(0xFF1A9DF6),
                          ),
                          SizedBox(height: defaultMargin / 2),
                          Text("Buy " + data.symbol),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: defaultMargin),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(defaultBorderRadius)),
                    child: Container(
                      padding: EdgeInsets.all(defaultMargin),
                      child: Column(
                        children: [
                          IconHolder(
                            icon: Icons.attach_money_rounded,
                            backgroundColor: Color(0xFFFD3E94),
                          ),
                          SizedBox(height: defaultMargin / 2),
                          Text("Sell " + data.symbol),
                        ],
                      ),
                    ),
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
