import 'package:assgnmnt5adv/FirebaseDemo.dart';
import 'package:assgnmnt5adv/GoogleSignIn.dart';
import 'package:assgnmnt5adv/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>ChangeNotifierProvider(
      create: (context)=>GoogleSignInProvider(),
           child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Firebase Demo App",
            home: Home(),
          )
  );
  }

