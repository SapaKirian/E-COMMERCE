import 'package:flutter/material.dart';

class TTextTheme {
  static TextTheme LightTextTheme = const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.black87,
    ),
    // Tambah style lain jika perlu
  );

  static TextTheme DarkTextTheme = const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white70,
    ),
  );
}
