import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/image/STAR BKG (1).png',
                    ))),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0.0, -0.8),
                    scale: 2,
                    image: AssetImage(
                      'assets/image/LOGO.png',
                    ))),
          ),
          Container(
            margin: EdgeInsets.only(top: 160, left: 100),
            height: 128,
            width: 320,
            alignment: Alignment.topCenter,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF6F7F7),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 5.0),
                    borderRadius: BorderRadius.circular(16)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                hintText: 'Mobile Number',
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
