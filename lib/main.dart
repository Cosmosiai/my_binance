import 'package:flutter/material.dart';
import 'package:my_binance/router.dart';
import '../theme.dart';
import 'views/main_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const MainScreen(title: 'Flutter Demo Home Page'),
      routes: routes
      
    );
  }
}



