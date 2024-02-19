import 'package:flutter/material.dart';

class AppTheme{
  static const mainColor =Color.fromARGB(7, 163, 89, 147);
  static const backColor =Color.fromARGB(7, 183, 179, 185);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 74, 114, 179),
        appBarTheme: const AppBarTheme(color: mainColor),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: mainColor,
            fontSize: 20.0,
            fontFamily: 'sans-serif',
          ),

        )
  ); 
}