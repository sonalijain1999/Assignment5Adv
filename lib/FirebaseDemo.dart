import 'package:assgnmnt5adv/GoogleSignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
class FirebaseDemo extends StatefulWidget {
  const FirebaseDemo({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FirebaseDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('FireBase Demo App'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
           const Text('This is a demo app to demonstrate firebase in flutter'),
          ElevatedButton.icon(
              onPressed: (){
                final provider=Provider.of<GoogleSignInProvider>(context,
                    listen:false);
                provider.googleLogin();
              },
              icon: const FaIcon(FontAwesomeIcons.google,color: Colors.red,),
              label: const Text('Sign In'),
          )
        ],
      ),
    );
  }
}
