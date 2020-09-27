import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'https://email.gov.in';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
    print('launched');
  } else {
    throw 'Could not launch $url';
  }
}

class mailPage extends StatefulWidget {
  @override
  _mailPageState createState() => _mailPageState();
}

class _mailPageState extends State<mailPage> {
  // setState((){
  //   _lau
  // });
  @override
  Widget build(BuildContext context) {
    _launchURL();
    return Container(
        // appBar: AppBar(
        //   title: Text('Mail'),
        // ),
        // body: _launchURL(),
        );
  }
}
