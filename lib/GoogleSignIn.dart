import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class  GoogleSignInProvider extends ChangeNotifier{
  final google_sign_in=GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user=> _user!;
  Future googleLogin() async{
    try {
      final google_user = await google_sign_in.signIn();
      if (google_user == null) return;
      _user = google_user;
      final google_auth = await google_user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: google_auth.accessToken,
        idToken: google_auth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    }
    catch(e)
    {
      print(e.toString());
    }
    //update UI
    notifyListeners();
  }
  Future logout() async{
    await google_sign_in.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
