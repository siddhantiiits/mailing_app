//import 'package:flutter/material.dart';
//import 'dart:async';
//import 'dart:io';
//import 'package:path_provider/path_provider.dart';
//import 'package:flutter/widgets.dart';
//import 'package:firebase_ml_vision/firebase_ml_vision.dart';
//import 'package:flutter/services.dart';
//
//class label extends StatefulWidget {
//  @override
//  _labelState createState() => _labelState();
//}
//
//class _labelState extends State<label> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Image Label'),
//      ),
//      body: Container(
//        child: Image(
//          image: AssetImage("assets/pen.png"),
//        ),
//      ),
//    );
//  }
//
//  Widget _imageList()
//  {
//    return GestureDetector(
//      child: Center(
//        child: Image.asset("assets/pen.png"),
//      ),
//      onTap: () async{
//        print("Trying to detect the image file");
//        String file= await ("assets/pen.png");
//        print(file);
//      },
//    )
//
//  }
//
//
//}
