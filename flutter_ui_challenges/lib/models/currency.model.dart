import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CurrencyModel {
  final Color backgroundColor;
  final IconData icon;
  final String name, symbol;
  final double totalCurrencyAmount, percent, totalAmount, percentAmount;

  CurrencyModel({
    @required this.backgroundColor,
    @required this.icon,
    @required this.name,
    @required this.symbol,
    @required this.totalCurrencyAmount,
    @required this.percent,
    @required this.totalAmount,
    @required this.percentAmount,
  });

  static List<CurrencyModel> demoCurrnecyData = [
    new CurrencyModel(
      backgroundColor: Color(0xFFFFB030),
      icon: Icons.attach_money_rounded,
      name: "Bitcoin",
      symbol: "BTC",
      totalCurrencyAmount: 3.122312,
      percent: 4.23,
      totalAmount: 100.24,
      percentAmount: 4.125,
    ),
    new CurrencyModel(
      backgroundColor: Color(0xFF7841FD),
      icon: Icons.monetization_on_rounded,
      name: "Etherium",
      symbol: "ETH",
      totalCurrencyAmount: 3.122312,
      percent: 4.23,
      totalAmount: 100.24,
      percentAmount: 4.125,
    ),
    new CurrencyModel(
      backgroundColor: Color(0xFF1B8CF4),
      icon: Icons.money,
      name: "X-ray Radius Point",
      symbol: "XRP",
      totalCurrencyAmount: 3.122312,
      percent: -4.23,
      totalAmount: 100.24,
      percentAmount: 4.125,
    ),
  ];
}
