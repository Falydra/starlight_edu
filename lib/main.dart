import 'package:flutter/material.dart';
import 'package:starlight_edu/index.dart';
import 'package:starlight_edu/login.dart';
import 'package:starlight_edu/onboard_intro.dart';
import 'package:starlight_edu/slideview.dart';
import 'dart:async';
import 'package:starlight_edu/splash.dart';
import 'package:starlight_edu/onboard_intro.dart';
import 'package:starlight_edu/onboard_start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashWrapper(),
      color: Color(0xFF202525),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashWrapper extends StatefulWidget {
  @override
  _SplashWrapperState createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => onBoardIntro()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
