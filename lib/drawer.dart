import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:scanatomy/aboutus.dart';
import 'package:scanatomy/home.dart';
import 'package:scanatomy/gallery.dart';
import 'package:scanatomy/login.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  bool _logoutPressed = false;

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: '     Home',
          baseStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          selectedStyle: TextStyle(),
          colorLineSelected: Color(0xFFEC407A),
        ),
        Home(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: '     About Developers',
          baseStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          selectedStyle: TextStyle(),
          colorLineSelected: Color(0xFFEC407A),
        ),
        Carousel(),
      ),
    ];
  }

  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      tittleAppBar: Text(''),
      backgroundColorMenu: Color.fromARGB(140, 236, 64, 121),
      backgroundColorAppBar: Color.fromARGB(
          0, 255, 255, 255), // Set the app bar color to transparent
      screens: _pages,
      slidePercent: 22,
      contentCornerRadius: 20,
      actionsAppBar: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
      ],
    );
  }
}
