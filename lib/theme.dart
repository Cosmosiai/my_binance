import 'package:flutter/material.dart';

final theme=ThemeData(
    scaffoldBackgroundColor: Colors.white10,
    primarySwatch: Colors.green,
    dividerColor: Colors.greenAccent,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        color: Colors.white
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto'
      ),
    )
);