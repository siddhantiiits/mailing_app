//this file is just for reference

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';




List<CameraDescription> cameras;

Future<void> on() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
//  runApp(CameraApp());
}

class CameraApp extends StatefulWidget {

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery. of(context). size. width;
    if (!controller.value.isInitialized) {
      return Container();
    }
    return ClipRect(
        child: OverflowBox(
          alignment: Alignment.center,
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                  width: size,
                  height: size / controller.value.aspectRatio,
                  child: AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CameraPreview(controller),
                  ))),
        ));
  }
}