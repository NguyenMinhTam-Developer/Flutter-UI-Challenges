import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/theme/layout.theme.dart';

class DataFilter extends StatefulWidget {
  const DataFilter({
    Key key,
  }) : super(key: key);

  @override
  _DataFilterState createState() => _DataFilterState();
}

class _DataFilterState extends State<DataFilter> {
  int _currentSelection = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ChipFilter(
          label: "Day",
          chipIndex: 0,
          groupIndex: _currentSelection,
          onTap: () {
            setState(() {
              _currentSelection = 0;
            });
          },
        ),
        ChipFilter(
          label: "Week",
          chipIndex: 1,
          groupIndex: _currentSelection,
          onTap: () {
            setState(() {
              _currentSelection = 1;
            });
          },
        ),
        ChipFilter(
          label: "Month",
          chipIndex: 2,
          groupIndex: _currentSelection,
          onTap: () {
            setState(() {
              _currentSelection = 2;
            });
          },
        ),
        ChipFilter(
          label: "Year",
          chipIndex: 3,
          groupIndex: _currentSelection,
          onTap: () {
            setState(() {
              _currentSelection = 3;
            });
          },
        ),
      ],
    );
  }
}

class ChipFilter extends StatelessWidget {
  final String label;
  final Function onTap;
  final int chipIndex;
  final int groupIndex;

  const ChipFilter({
    Key key,
    @required this.label,
    @required this.chipIndex,
    @required this.groupIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: defaultMargin / 4, horizontal: defaultMargin / 2),
        decoration: BoxDecoration(
          color: chipIndex == groupIndex ? Color(0xFFAEB8C4) : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(defaultMargin)),
        ),
        child: Text(
          label,
          style: TextStyle(color: chipIndex == groupIndex ? Colors.white : Color(0xFFAEB8C4)),
        ),
      ),
    );
  }
}
