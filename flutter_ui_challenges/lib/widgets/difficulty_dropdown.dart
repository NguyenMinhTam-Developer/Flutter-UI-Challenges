import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';
import 'package:flutter_ui_challenges/models/course.dart';

class DifficultyDropdown extends StatefulWidget {
  const DifficultyDropdown({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Course data;

  @override
  _DifficultyDropdownState createState() => _DifficultyDropdownState();
}

class _DifficultyDropdownState extends State<DifficultyDropdown> {
  String dropdownValue;

  @override
  void initState() {
    super.initState();

    dropdownValue = widget.data.difficulty;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: spacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(spacing),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: widget.data.color,
          ),
          items: [
            DropdownMenuItem(
              value: "Beginer",
              child: Text(
                "Beginer",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: widget.data.color,
                    ),
              ),
            ),
            DropdownMenuItem(
              value: "Intermediate",
              child: Text(
                "Intermediate",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: widget.data.color,
                    ),
              ),
            ),
            DropdownMenuItem(
              value: "Advanced",
              child: Text(
                "Advanced",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: widget.data.color,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
