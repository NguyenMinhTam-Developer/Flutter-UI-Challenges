import 'package:flutter/material.dart';

class IconHolder extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;

  const IconHolder({
    Key key,
    @required this.icon,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
