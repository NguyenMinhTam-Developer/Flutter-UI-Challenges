import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';
import 'package:flutter_ui_challenges/widgets/wallet_card.dart';

class WalletCardList extends StatelessWidget {
  const WalletCardList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(defaultMargin),
        child: Row(
          children: [
            WalletCard(),
            WalletCard(),
            WalletCard(),
            WalletCard(),
          ],
        ),
      ),
    );
  }
}
