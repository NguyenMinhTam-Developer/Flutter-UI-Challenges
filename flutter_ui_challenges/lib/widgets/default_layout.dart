import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key key,
    this.background,
    @required this.body,
  }) : super(key: key);

  final Widget background;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background ?? Container(),
          body,
        ],
      ),
    );
  }
}
