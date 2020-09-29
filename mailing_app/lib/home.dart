import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailing_app/mail_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mailing_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
_launchURL(String url) async {
  // const url = 'https://email.gov.in';
  if (await canLaunch(url)) {
    await launch(url,
        forceWebView: true, enableJavaScript: true, enableDomStorage: true,
//        headers: <String, String>{'my_header_key': 'my_header_value'}
    
    );

    print('launched');
  } else {
    throw 'Could not launch $url';
  }
}

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

              Text(
                'MAILO',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 8,
                    fontSize: 20),
              ),
              Center(child: Icon(Icons.contact_mail, size: 100,color: Colors.white)),




              SizedBox(height: 100,),

              RaisedButton(
                onPressed: () => _launchURL('https://email.gov.in'),
                //   Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => mailPage()),
                // ),
                color: Colors.white,
                disabledColor: Colors.white,
                child: Text(
                  '      My Account     ',
                  style: TextStyle(
                      color: Color(0xff67052B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () => _launchURL(
                    'https://parichay.nic.in/Accounts/NIC/index.html?service=QuickSMS'),
                color: Colors.white,
                disabledColor: Colors.white,
                child: Text(
                  '        Bulk SMS        ',
                  style: TextStyle(
                      color: Color(0xff67052B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () => _launchURL('https://egreetings.gov.in/'),
                color: Colors.white,
                disabledColor: Colors.white,
                child: Text(
                  '   Greeting Cards   ',
                  style: TextStyle(
                      color: Color(0xff67052B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg:
                          "App is currently functional only for \n IIIT Sonepat",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      textColor: Color(0xff67052B),
                      fontSize: 16.0);
                },
                color: Colors.white,
                disabledColor: Colors.white,
                child: Text(
                  '   Select College   ',
                  style: TextStyle(
                      color: Color(0xff67052B),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),

              // SizedBox(
              //   height: 20,
              // ),
              // RaisedButton(
              //   onPressed: () =>
              //       _launchURL('https://passapp.email.gov.in/passapp/'),
              //   color: Colors.white,
              //   disabledColor: Colors.white,
              //   child: Text(
              //     'Change Password',
              //     style: TextStyle(
              //         color: Color(0xff67052B),
              //         fontWeight: FontWeight.bold,
              //         fontSize: 25),
              //   ),
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10)),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22.0))),

                    // title: Text('Are you sure you want to exit the App?'),
                    title: Text('Mailo'),
                    content: Text('This App is Developed by Mr. X & Mr. Y.'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          "Close",
                          style:
                              TextStyle(color: Color(0xff67052B), fontSize: 17),
                        ),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      // FlatButton(
                      //   child: Text(
                      //     "Yes",
                      //     style: TextStyle(color: Color(0xffd11b5d)),
                      //   ),
                      //   onPressed: () => Navigator.of(context).pop(true),
                      // ),
                    ],
                  );
                });
            // Add your onPressed code here!
          },
          child: Icon(
            Icons.info_outline,
            color: Color(0xff67052B),
            size: 35,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
