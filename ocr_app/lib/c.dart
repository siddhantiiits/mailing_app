import 'package:flutter/material.dart';

import 'package:slimy_card/slimy_card.dart';

class My4app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      ListView(
        children: <Widget>[
          SlimyCard(
            color: Colors.red,
            width: 400,
            topCardHeight: 200,
            bottomCardHeight: 200,

            borderRadius: 15,
            topCardWidget: Text('Hello Click me',
              style: TextStyle(
                color: Colors.white,
              ),),
            bottomCardWidget: Text('Hey there',
              style: TextStyle(
                color: Colors.white,
              ),),
            slimeEnabled: true,
          ),
        ],
      ),

    );
  }
}


