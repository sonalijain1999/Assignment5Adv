import 'package:flutter/material.dart';



class LoggedInWidget extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('LoggedInWidget'),
      ),
      body:  Container(
        padding:  EdgeInsets.all(32.0),
        child:  Column(
          children: const <Widget>[
             Text('LoggedIn')
          ],
        ),
      ),
    );
  }
}
