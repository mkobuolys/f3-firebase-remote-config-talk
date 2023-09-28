import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PurrfectTheme {
  static const imageSlideTheme = FlutterDeckImageSlideThemeData(
    labelTextStyle: TextStyle(
      fontSize: 48,
      height: 2, // Hacky way to add bottom padding
    ),
  );

  static const firebaseYellowColor = Color(0xFFFFCA28);
  static const firebaseAmberColor = Color(0xFFFFA000);
  static const firebaseOrangeColor = Color(0xFFF57C00);
}
