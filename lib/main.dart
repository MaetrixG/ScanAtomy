import 'package:flutter/material.dart';
import 'package:scanatomy/home.dart';
import 'package:scanatomy/login.dart';
import 'package:scanatomy/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primaryColor: Color(0xFFEC407A)),
    );
  }
}
