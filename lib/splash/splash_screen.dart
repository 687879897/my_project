import 'package:flutter/material.dart';
import 'dart:async';

import '../home/home_screen.dart';
class SplashView extends StatefulWidget {
  static const String routeName = "Splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
          () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        "assets/assets/splash.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}