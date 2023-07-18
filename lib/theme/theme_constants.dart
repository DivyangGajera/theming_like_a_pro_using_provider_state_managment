import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(color: Colors.black),
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
  colorScheme: const ColorScheme.light(),
  primaryColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.yellow),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.yellow,
  ),
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(color: Colors.white),
      fillColor: Colors.black,
      filled: true,
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
  colorScheme: const ColorScheme.dark(),
  primaryColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.teal),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepOrange,
  ),
  useMaterial3: true,
);
