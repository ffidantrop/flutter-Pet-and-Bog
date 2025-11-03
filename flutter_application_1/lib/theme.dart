import 'package:flutter/material.dart';

final myTheme = ThemeData(
  
  scaffoldBackgroundColor: Color.fromARGB(255, 185, 185, 185),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 55, 0, 255),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(fontSize: 32, color: Colors.white)
  ),
);
