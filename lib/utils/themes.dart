// utils/themes.dart

import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
    titleLarge: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.greenAccent,
    textTheme: ButtonTextTheme.primary,
  ),
);
