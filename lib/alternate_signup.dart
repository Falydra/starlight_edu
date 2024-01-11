import 'package:flutter/material.dart';
import 'package:starlight_edu/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/STAR BKG (1).png'),
            ),
          ),
        ),
        Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 128,
                    width: 128,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment(0.0, -0.8),
                        scale: 2,
                        image: AssetImage('assets/image/LOGO.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFD9D9D9),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfFF37062), width: 5.0),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'Confirm',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xfFF37062)),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(150, 50.0),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                      ),
                      onPressed: () {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account? Sign In",
                      ),
                      TextButton(
                          style: ButtonStyle(
                              alignment: Alignment.centerLeft,
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.only(left: 3))),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp())),
                          child: Text('Here'))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text("Continue with Google or Apple"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image/GOOGLE.png'))),
                      ),
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image/GOOGLE.png'))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
