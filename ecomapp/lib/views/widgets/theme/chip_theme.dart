import 'package:flutter/material.dart';

class TChipTheme {
  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade200,
    selectedColor: Colors.blue,
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.black),
    secondaryLabelStyle: const TextStyle(color: Colors.white),
    padding: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
