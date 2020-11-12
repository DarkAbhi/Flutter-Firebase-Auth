import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_testing/firebaseAuthDemo.dart';
import 'package:flutter_testing/homePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = FirebaseAuth.instance.currentUser;
    Widget firstWidget;
    if (firebaseUser != null) {
      firstWidget = HomePage(user: firebaseUser);
    } else {
      firstWidget = FirebaseAuthDemo();
    }
    return MaterialApp(
      home: firstWidget,
      debugShowCheckedModeBanner: false,
    );
  }
}
