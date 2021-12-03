import 'package:assgnmnt5adv/FirebaseDemo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'LoggedInWidget.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
  body: StreamBuilder(
  stream: FirebaseAuth. instance.authStateChanges(),
  builder: (context, snapshot) {
  if (snapshot.connectionState == ConnectionState.waiting)
  return Center(child: CircularProgressIndicator());

  else if (snapshot.hasData) {
  return LoggedInWidget();
  }
  else if (snapshot.hasError) {
  return Center(child: Text('Something went Wrong!'));
  }
  else {
  return FirebaseDemo();
  }
  }
  )
  );}