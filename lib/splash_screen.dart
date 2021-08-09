import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: SizedBox(
                height: 200,
                width: 200,
                child: FlutterLogo()),
            nextScreen: MyApp(),
            splashTransition: SplashTransition.scaleTransition,
            //pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.white,
            animationDuration: Duration(seconds: 2),
          curve: Curves.easeInOut,
          splashIconSize: 200,
        ),
    );
  }
}
