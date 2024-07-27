import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFF46946F);

final List<Color> _customColorThemes = [
  _primaryColor,
  Colors.pink,
  Colors.red,
  Colors.yellow,
  Colors.brown,
  Colors.blue,
  Colors.black,
  Colors.orange,
];

class CustomThemes {
  int chosenColor;
  CustomThemes({this.chosenColor = 0});

  ThemeData theme() {
    if (chosenColor > _customColorThemes.length - 1) {
      chosenColor = 0;
    }
    return ThemeData(colorSchemeSeed: _customColorThemes[chosenColor]);
  }
}
