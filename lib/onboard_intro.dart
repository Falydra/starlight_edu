import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:starlight_edu/alternate_signup.dart';
import 'package:starlight_edu/home.dart';
import 'package:starlight_edu/login.dart';

final List<Map<String, dynamic>> imgList = [
  {
    'imagePath': 'assets/image/ONBOARDING-1 (1).png',
    'quote': '',
    'fit': BoxFit.cover
  },
  {
    'imagePath': 'assets/image/1 1.png',
    'quote':
        'Makin aku banyak membaca, makin aku banyak berpikir; makin aku banyak belajar, makin aku sadar bahwa aku tak mengetahui apa pun. - Voltaire',
  },
  {
    'imagePath': 'assets/image/2 1.png',
    'quote':
        'Aku lebih takut dengan seseorang yang memegang pena (penulis) dari pada prajurit yang bersenjatakan lengkap. - Napoleon Bonaparte',
  },
  {
    'imagePath': 'assets/image/3 1.png',
    'quote':
        'Saya dapat menghitung pergerakan bintang-bintang di langit, tetapi saya tidak dapat menghitung kebodohan manusia. - Sir Isaac Newton',
  },
  {
    'imagePath': 'assets/image/STAR BKG (1).png',
    'quote': '',
    'showButton': true,
    'showGradient': true,
  },
];

class onBoardIntro extends StatelessWidget {
  const onBoardIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CarouselWithIndicatorDemo());
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            final double width = MediaQuery.of(context).size.width;

            return Stack(
              children: [
                Container(
                  height: height,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F7F7),
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/image/STAR BKG.png'),
                    ),
                  ),
                  child: CarouselSlider(
                    carouselController: _controller,
                    items: imgList
                        .map(
                          (item) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Center(
                                  child: Image.asset(
                                    item['imagePath']!,
                                    height: item['showButton'] == true
                                        ? 0
                                        : item['fit'] == BoxFit.cover
                                            ? 619
                                            : 240,
                                    width: item['showButton'] == true
                                        ? 0
                                        : item['fit'] == BoxFit.cover
                                            ? double.infinity
                                            : 240,
                                    fit: item['fit'] == BoxFit.cover
                                        ? BoxFit.cover
                                        : item['showButton'] == true
                                            ? null
                                            : null,
                                  ),
                                ),
                              ),
                              Text(
                                item['quote']!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              if (item['showButton'] == true)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 128,
                                      width: 128,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment(0.0, -0.8),
                                          scale: 2,
                                          image: AssetImage(
                                              'assets/image/LOGO.png'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 25, right: 25, bottom: 15),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xFFD9D9D9),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xFFF37062),
                                                    width: 5.0),
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xfFF37062),
                                                    width: 5.0),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            hintText: 'Username',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 25, right: 25, bottom: 25),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xFFD9D9D9),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xFFF37062),
                                                    width: 5.0),
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xfFF37062),
                                                    width: 5.0),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            hintText: 'Password',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 2),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xfFF37062)),
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                            Size(150, 50.0),
                                          ),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                        ),
                                        onPressed: () {
                                          if (_current == imgList.length - 1) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage(),
                                              ),
                                            );
                                          }
                                        },
                                        child: Text('Sign In'),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Dont have account? Sign Up",
                                        ),
                                        TextButton(
                                            style: ButtonStyle(
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    MaterialStateProperty.all(
                                                        EdgeInsets.only(
                                                            left: 3))),
                                            onPressed: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUp())),
                                            child: Text('Here'))
                                      ],
                                    ),
                                    TextButton(
                                        style: ButtonStyle(
                                            alignment: Alignment.topCenter,
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.zero)),
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUp())),
                                        child: Text('Forget Password')),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 64),
                                      child: Text("Login to existing account"),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 64,
                                          width: 64,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/GOOGLE.png'))),
                                        ),
                                        Container(
                                          height: 64,
                                          width: 64,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/GOOGLE.png'))),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                            ],
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      disableCenter: true,
                      enableInfiniteScroll: false,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () {
                              if (entry.key == _current) {
                                _controller.animateToPage(entry.key);
                              }
                            },
                            child: Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Color(0xFFF58D81)
                                        : Color(0xFFF37062))
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
