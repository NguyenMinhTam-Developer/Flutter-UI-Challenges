import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/components/wallet_card_list.dart';
import 'package:flutter_ui_challenges/core/theme/color.theme.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';
import 'package:flutter_ui_challenges/models/currency.model.dart';
import 'package:flutter_ui_challenges/widgets/currency_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: iconColor),
          onPressed: () {},
        ),
        title: Text("Wallets", style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_balance_wallet_rounded, color: iconColor),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WalletCardList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              children: [
                Text("Sort by higher %", style: Theme.of(context).textTheme.bodyText2.copyWith(color: iconColor)),
                Spacer(),
                Text("24H", style: Theme.of(context).textTheme.bodyText2.copyWith(color: iconColor)),
                Icon(Icons.keyboard_arrow_down_rounded, color: iconColor),
              ],
            ),
          ),
          SizedBox(height: defaultMargin / 2),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => CurrencyCard(data: CurrencyModel.demoCurrnecyData[index]),
              separatorBuilder: (context, index) => SizedBox(height: defaultMargin),
              itemCount: CurrencyModel.demoCurrnecyData.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Color(0xFF4C5867)),
        unselectedIconTheme: IconThemeData(color: iconColor),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_rounded), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_rounded), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_rounded), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_rounded), label: "Settings"),
        ],
      ),
    );
  }
}
