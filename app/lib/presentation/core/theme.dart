import 'package:flutter/material.dart';

const _color = Colors.black;

final ThemeData themeData = ThemeData(
  primaryColor: Colors.blue,
  appBarTheme: const AppBarTheme(
    color: _color,
    titleTextStyle: TextStyle(color: _color),
    iconTheme: IconThemeData(color: _color),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: _color,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    errorBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    alignLabelWithHint: true,
  ),
);
