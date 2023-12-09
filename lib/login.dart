import 'package:flutter/material.dart';
import 'package:scanatomy/drawer.dart';
import 'package:scanatomy/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      useMaterial3: true,
    ),
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
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
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/logoApp.png',
                  height: 310,
                  width: 400,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  // height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Login your WVSU Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Student ID',
                            labelStyle: TextStyle(fontSize: 16),
                            suffixIcon: Icon(
                              Icons.person_2_rounded,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          obscureText: true, // Set obscureText to true
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 16),
                            suffixIcon: Icon(
                              Icons.key_rounded,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HiddenDrawer()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
