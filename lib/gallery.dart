import 'package:flutter/material.dart';
import 'package:scanatomy/home.dart';
import 'package:scanatomy/gallerypages.dart';
import 'package:scanatomy/drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      useMaterial3: true,
    ),
    home: HiddenDrawer(),
    debugShowCheckedModeBanner:
        false, // Remove the debugShowCheckedModeBanner property
  ));
}

void navigateToImage2(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Image2()),
  );
}

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  // List of images for the gallery
  final List<String> images = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    'images/img4.png',
    'images/img6.jpg',
    'images/img5.jpg',
    'images/img7.jpg',
    'images/img8.jpg',
    'images/img9.jpg',
    // Add more image paths here
  ];

  int? _hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 680,
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
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HiddenDrawer()),
                    );
                  },
                  child: Image.asset(
                    'images/back.png',
                    height: 40,
                    width: 80,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'GALLERY',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEC407A),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Select one photo to scan',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 500,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 23,
                ),
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          _hoveredIndex = index;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _hoveredIndex = null;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageView(
                                imagePath: images[index],
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Image.asset(
                              images[index],
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Visibility(
                                visible: _hoveredIndex == index,
                                child: Container(
                                  color: Colors.black54,
                                  child: Center(
                                    child: Text(
                                      'Scan',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final String imagePath;

  const ImageView({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 680,
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
            ),
            Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'images/back.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.white30,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(height: 15),
                    if (imagePath == 'images/img1.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img2.jpg')
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Image2()),
                          );
                        },
                        child: Text(
                          'View Human Body Part/s',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFEC407A),
                          ),
                        ),
                      ),
                    if (imagePath == 'images/img3.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img4.png')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img6.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img5.jpg')
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Image5()),
                          );
                        },
                        child: Text(
                          'View Human Body Part/s',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFEC407A),
                          ),
                        ),
                      ),
                    if (imagePath == 'images/img7.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img8.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    if (imagePath == 'images/img9.jpg')
                      Text(
                        'No human body part detected.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScanImagePage extends StatelessWidget {
  final String imagePath;
  final String imageDetails;

  const ScanImagePage({required this.imagePath, required this.imageDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 680,
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
            ),
            Positioned(
              top: 20,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'images/back.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.white30,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      imageDetails,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
