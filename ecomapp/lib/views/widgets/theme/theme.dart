import 'package:ecomapp/const/colors.dart';
import 'package:ecomapp/views/widgets/theme/text_theme.dart';
import 'package:flutter/material.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.LightTextTheme,
    // chipTheme: ChipTheme.lightChipTheme,
    // scaffoldBackgroundColor: Colors.white,
    // appBarTheme: TAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottonSheetTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: PrimaryColor,
    
  );
}
