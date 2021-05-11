import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constant/layout.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({
    Key key,
  }) : super(key: key);

  @override
  _LanguageDropdownState createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  String _dropdownValue = "english";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: spacing),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: _dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              _dropdownValue = newValue;
            });
          },
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          items: [
            DropdownMenuItem(
              value: 'english',
              child: LanguageDropdownItem(
                imgPath: 'assets/images/english.png',
                label: "English",
              ),
            ),
            DropdownMenuItem(
              value: 'vietnamese',
              child: LanguageDropdownItem(
                imgPath: 'assets/images/vietnamese.png',
                label: "Vietnamese",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageDropdownItem extends StatelessWidget {
  const LanguageDropdownItem({
    Key key,
    @required this.label,
    @required this.imgPath,
  }) : super(key: key);

  final String label, imgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            imgPath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: spacing / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(width: spacing / 2),
      ],
    );
  }
}
