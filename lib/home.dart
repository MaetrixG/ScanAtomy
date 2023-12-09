import 'dart:html';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:scanatomy/camera.dart';
import 'package:scanatomy/camerapageBACKUP.dart';
import 'package:scanatomy/gallery.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:scanatomy/login.dart';
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

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 645,
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
              SizedBox(height: 100),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'images/logoApp.png',
                      height: 250,
                      width: 500,
                    ),
                  ),
                  SizedBox(height: 90),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          await availableCameras().then(
                            (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CameraPage(
                                  cameras: value,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Image.asset(
                          'images/camera.png',
                          height: 70,
                          width: 80,
                        ),
                      ),
                      SizedBox(width: 100),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gallery()));
                        },
                        child: Image.asset(
                          'images/gallery.png',
                          height: 60,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
