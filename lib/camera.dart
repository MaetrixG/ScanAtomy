import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:scanatomy/gallery.dart';
import 'package:scanatomy/gallerypages.dart';
import 'package:scanatomy/home.dart';
import 'package:scanatomy/drawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'ScanAtomy',
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
      useMaterial3: true,
    ),
    home: HiddenDrawer(),
  ));
}

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 700,
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
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: SizedBox(
                          height: 400,
                          width: 400,
                          child: CameraPreview(controller),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          pictureFile = await controller.takePicture();
                          setState(() {});
                        },
                        child: const Text(
                          'Capture Image',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEC407A),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (pictureFile != null)
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 500,
                    child: Column(
                      children: [
                        Container(
                          height: 340,
                          width: 440,
                          color: Colors.white30,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.network(
                              pictureFile!.path,
                              height: 400,
                              width: 400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CameraEx()),
                              );
                            },
                            child: const Text(
                              'Scan Image',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFEC407A),
                              ),
                            ),
                          ),
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
