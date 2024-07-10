import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.black38,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
    inversePrimary: Colors.white,
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.grey[300],
        displayColor: Colors.white,
      ),
);
