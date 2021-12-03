import 'package:assgnmnt5adv/FirebaseDemo.dart';
import 'package:assgnmnt5adv/GoogleSignIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
class LoggedInWidget extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    final   user= FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar:  AppBar(
        title: const Text('LoggedInWidget'),
        actions: [
          TextButton(
              onPressed: (){
                final provider=Provider.of<GoogleSignInProvider>(context,
                    listen:false);
                provider.logout();
              },
              child: Text("Logout",
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             Text('Profile'),
            SizedBox(height: 20,),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user!.photoURL!),
            ),
            SizedBox(height: 10,),
            Text(
              'Name:' +user.displayName!,
            ),
            SizedBox(height: 10,),
            Text(
              'Email:' +user.email!,
            ),
          ],
        ),
      ),
    );
  }
}
