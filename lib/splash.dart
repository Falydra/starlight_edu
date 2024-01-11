import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFF1E1E1E).withOpacity(1),
                        Color(0xFF24A1DF)
                      ]),
                  image: DecorationImage(
                      alignment: Alignment(0.0, -0.1),
                      scale: 1.3,
                      image: AssetImage(
                        'assets/image/LOGO.png',
                      ))),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image/STAR BKG (1).png',
                      ))),
            ),
            Container(
              margin: EdgeInsets.only(top: 140),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      scale: 1.3,
                      image: AssetImage(
                        'assets/image/TEXT.png',
                      ))),
            ),
          ]),
        ),
      ),
    );
  }
}
