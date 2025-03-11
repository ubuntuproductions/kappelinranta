import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(primary: Color(0x9a2b00ff)),
  textTheme: TextTheme(
    headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
    bodySmall: TextStyle(
      color: const Color(0xff000000),
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),
    bodyMedium: const TextStyle(fontSize: 15.0),
    titleSmall: const TextStyle(color: Color(0xfffffcfc)),
    labelSmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 22.0,
      letterSpacing: 0.0,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color(0xfff7f7f7),
    filled: true,
    constraints: const BoxConstraints(),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: Color(0xffb1b1b1), width: 1.0),
      gapPadding: 4.0,
    ),
  ),
);

@NowaGenerated()
final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(), textTheme: const TextTheme());
