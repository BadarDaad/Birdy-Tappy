import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      surface: Colors.white,
      primary: Colors.blue,
      secondary: Colors.grey.shade400,
      inversePrimary: Colors.black26,
      inverseSurface: Colors.black),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: Colors.black,
      ),
);
