import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5c11d4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.amber,
  Colors.teal,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Selected Color must be one of [0, 1, 2, 3, 4, 5, 6]',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
