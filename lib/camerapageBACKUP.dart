import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:scanatomy/camera.dart';
import 'package:scanatomy/camerapageBACKUP.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      useMaterial3: true,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
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
          child: const Text('Launch Camera'),
        ),
      ),
    );
  }
}
