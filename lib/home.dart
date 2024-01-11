import 'package:flutter/material.dart';
import 'package:starlight_edu/login.dart';
import 'package:starlight_edu/profile_badge.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LoginPage(),
    // ExploreScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F7F7),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/image/HOMEPAGE.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 1.2,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/image/TEXT2.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 217),
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F7F7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      alignment: Alignment.center,
                      height: 46,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xFF24A1DF),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Text('Start Learning'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      alignment: Alignment.center,
                      height: 46,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xFFF37062),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Text('Continue Learning'),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 24),
                        alignment: Alignment.topCenter,
                        height: 112,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xFFFCE0AB),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                spreadRadius: 1,
                              )
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4.0,
                              ),
                              child: Row(
                                children: [
                                  Text('Your Badges'),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          alignment: Alignment.centerLeft,
                                          primary: Colors.black),
                                      autofocus: false,
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BadgePage())),
                                      child: Text('Show More'))
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.zero,
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/1 STAR.png'))),
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/1 STAR (1).png'))),
                                ),
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          scale: 1.5,
                                          image: AssetImage(
                                              'assets/image/2 STARS.png'))),
                                ),
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          scale: 1.5,
                                          image: AssetImage(
                                              'assets/image/5 STARS.png'))),
                                ),
                              ],
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      alignment: Alignment.center,
                      height: 120,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xFFFCE0AB),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Statistic'),
                                Text('Show More'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icon/HOME.png'),
              color: Color(0xFFF7B22C),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icon/LESSON.png'),
                color: Color(0xFFF7B22C)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icon/BADGES.png'),
                color: Color(0xFFF7B22C)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icon/PROFILE.png'),
                color: Color(0xFFF7B22C)),
            label: '',
          ),
        ],
      ),
    );
  }
}
