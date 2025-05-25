import 'package:flutter/material.dart';

final ThemeData portfolioTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.teal[800],
  primaryColorDark: Colors.teal[900],
  scaffoldBackgroundColor: const Color(0xFF121212),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      color: Colors.white70,
    ),
  ),
);
