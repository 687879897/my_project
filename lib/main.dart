import 'package:firest_app/splash/splash_screen.dart';

import 'package:firest_app/sura-deitals/sura_detalis.dart';

import 'package:flutter/material.dart';
import 'package:firest_app/ahadeth-details/hadeth_details.dart';
import 'home/home_screen.dart';






void main() {
  runApp(
    MaterialApp(
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SplashView.routeName:(_)=>SplashView(),
        SuraDetalis.routeName:(_)=>SuraDetalis(),
        hadethDetalis.routeName:(_)=>hadethDetalis()

      },
      initialRoute:   SplashView.routeName,
    )
  );

}

