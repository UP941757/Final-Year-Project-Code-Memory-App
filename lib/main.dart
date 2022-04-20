import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:memorygame/Screens/GameScreen.dart';
import 'package:memorygame/Screens/HelpScreen1.dart';
import 'package:memorygame/Screens/StartScreen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: AnimatedSplashScreen(
      splash: Icons.psychology,
      duration: 3000,
    splashTransition: SplashTransition.fadeTransition,
    pageTransitionType: PageTransitionType.leftToRightWithFade,
    backgroundColor: Colors.lightBlueAccent,
    nextScreen: StartScreen())
  );
}