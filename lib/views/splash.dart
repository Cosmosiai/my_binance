import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/spacing.dart';
import 'main_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const MainScreen(title: 'Binance')));
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                '../lib/assets/binance.svg',
                width: 100,
              ),
              addSpacing(16),
              Text('Binance', style: TextStyle(fontSize: 30, fontFamily: 'Roboto',color: Colors.orange ),)

            ],
          ),
        )
      )
    );
  }
}
