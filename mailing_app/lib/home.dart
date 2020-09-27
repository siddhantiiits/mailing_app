import 'package:flutter/material.dart';
import 'package:mailing_app/mail_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mailing_app/main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff67052B),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mailPage()),
                ),

                color: Colors.white,
                disabledColor: Colors.white,

                child: Text('   My Account  ',

                style: TextStyle(
                  color: Color(0xff67052B),
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                ),
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10)
                ),



              ),
          SizedBox(height: 20,),
          RaisedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "App is currently functional only for\n IIIT Sonepat",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.white,
                  textColor: Color(0xff67052B),
                  fontSize: 16.0);
            },
          color: Colors.white,
          disabledColor: Colors.white,

          child: Text('Select College',
            style: TextStyle(
                color: Color(0xff67052B),
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          ),
              SizedBox(height: 20,),
              RaisedButton(
                onPressed: () =>Navigator.pushNamed(context, '/settings'),
                color: Colors.white,
                disabledColor: Colors.white,

                child: Text('     Settings      ',
                  style: TextStyle(
                      color: Color(0xff67052B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
