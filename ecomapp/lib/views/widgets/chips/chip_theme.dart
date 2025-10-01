import 'package:ecomapp/const/colors.dart';
import 'package:flutter/material.dart';

class ChipTheme {
  ChipTheme._();

  static ChipThemeData LightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: TColors.dark),
    selectedColor: PrimaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.darkergrey,
    labelStyle: TextStyle(color: TColors.white),
    selectedColor: PrimaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TColors.white,
  );
}
