import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ocr_app/c.dart';
import 'package:ocr_app/d.dart';
import 'package:translator/translator.dart';
import 'package:image/image.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'a.dart';
import 'bb.dart';
import 'c.dart';
import 'd.dart';

class read extends StatefulWidget {
  @override
  _readState createState() => _readState();
}

class _readState extends State<read> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


int x = 0;
String trans;
GoogleTranslator translator = GoogleTranslator();
final FlutterTts flutterTts = FlutterTts();
File pickedImage;
bool isImageLoaded = false;

Future pickImage() async {
  var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);

  setState(() {
    pickedImage =
        tempStore; // picked image wali file ko rotate krna h or fir picked img e hi save kradena h
    isImageLoaded = true;
  });
}