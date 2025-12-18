import 'package:flutter/material.dart';

final ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black, //base screen background
  appBarTheme: AppBarTheme(backgroundColor: Colors.black),
  colorScheme: ColorScheme.dark(
    surface: Colors.grey[600]!, //cards, alertbox and containers
    primary: Colors
        .deepPurple[600]!, //appbat text, floating button background, buttons, checkbox active color
    secondary: Colors.deepPurple[400]!,
    onSurface: Colors.white, //Icon color
  ),
  textTheme: TextTheme(
    headlineSmall: TextStyle(
      color: Colors.deepPurple[600], //appbar text color
    ),
    titleMedium: TextStyle(
      color: Colors.white, // text cards and containers text color
    ),
  ),
);

final ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.grey[100], //base screen background
  appBarTheme: AppBarTheme(backgroundColor: Colors.grey[100]),
  colorScheme: ColorScheme.light(
    surface: Colors.grey[300]!, //cards, alertbox and containers
    primary: Colors
        .blueAccent[400]!, //appbat text, floating button background, buttons, checkbox active color
    secondary: Colors.blueAccent[200]!,
    onSurface: Colors.white, //Icon color
  ),
  textTheme: TextTheme(
    headlineSmall: TextStyle(
      color: Colors.blueAccent[400], //appbar text color
    ),
    titleMedium: TextStyle(
      color: Colors.black, // text cards and containers text color
    ),
  ),
  );
