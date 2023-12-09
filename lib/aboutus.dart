import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:scanatomy/drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Color(0xFFEC407A),
      useMaterial3: true,
    ),
    home: HiddenDrawer(),
  ));
}

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final myitems = [
    Image.asset('images/1.png'),
    Image.asset('images/2.png'),
    Image.asset('images/3.png'),
    Image.asset('images/4.png'),
  ];

  int myCurrentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToAboutUs() {
    _scrollController.animateTo(
      MediaQuery.of(context)
          .size
          .height, // Scroll to the height of the "About Us" section
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            height: 1300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEC407A),
                  Color(0xFFEF9A9A),
                  Color(0xFFE0F2F1),
                  Color(0xFF80CBC4),
                  Color(0xFF26C6DA),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'images/logoApp.png',
                        height: 100,
                        width: 300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'D E V E L O P E R S',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 350,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 4.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                  ),
                  items: myitems.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: item,
                      ),
                    );
                  }).toList(),
                ),
                AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: myitems.length,
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5,
                    dotColor: Colors.grey.shade200,
                    activeDotColor: Color(0xFFEC407A),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    _scrollToAboutUs();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEC407A),
                  ),
                  child: Text('Get to know us!'),
                ),
                SizedBox(height: 110),
                Container(
                  height: 500,
                  width: double.infinity,
                  child: Center(
                    child: AboutUs(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEC407A),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAvatar(0, 'images/1.png', ''),
                      SizedBox(width: 25),
                      _buildAvatar(1, 'images/2.png', ''),
                      SizedBox(width: 25),
                      _buildAvatar(2, 'images/3.png', ''),
                      SizedBox(width: 25),
                      _buildAvatar(3, 'images/4.png', ''),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'School: West Visayas State University',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Course: Bachelor of Science in Information Technology',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Year and Section: 3-B',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(int index, String imagePath, String memberName) {
    final isHovered = hoveredIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          hoveredIndex = index;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
            backgroundColor: isHovered ? Colors.grey : Colors.transparent,
          ),
          SizedBox(height: 10),
          Text(
            memberName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 6, 46, 7),
            ),
          ),
        ],
      ),
    );
  }
}
