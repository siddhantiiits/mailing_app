import 'package:flutter/material.dart';
import 'pin.dart';
import 'home.dart';
import 'package:mailing_app/settings.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
        '/pin': (context) => PassCodeScreen(),
        // '/mail': (context) => mailPage(),
        '/settings': (context) => settings(),
      },
    ));
