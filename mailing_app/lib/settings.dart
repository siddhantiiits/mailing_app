import 'package:flutter/material.dart';
import 'package:mailing_app/main.dart';
import 'package:flutter/services.dart';
import 'package:mailing_app/pin.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final myController = TextEditingController(text: '1234'); // Isse 1234 default value fix haiii! abhi filhal iss screen ka kisi se koi mtlb ni hai!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff67052B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('PIN Lock',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(4),
                ],
                controller: myController,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hoverColor: Colors.blue,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: '4 digit PIN',
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),

            RaisedButton(
              onPressed: () {
              }, //TODO: Yaha p enable press krne se pin.dart wli file me my pass change hojae! jo b text field m h wo ajaye + initial route app ka pin screen bnjae jo ki filhal home screen h
              color: Colors.white,
              disabledColor: Colors.white,

              child: Text('Enable',
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
    );
  }
}
