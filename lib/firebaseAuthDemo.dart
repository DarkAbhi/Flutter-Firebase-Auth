import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/register.dart';
import 'package:flutter_testing/signIn.dart';

class FirebaseAuthDemo extends StatefulWidget {
  @override
  _FirebaseAuthDemoState createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Auth"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: OutlineButton(
                onPressed: () {
                  _push(context, SignIn());
                },
                child: Text('Signin'),
              )),
          Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: OutlineButton(
                onPressed: () {
                  _push(context, Register());
                },
                child: Text('Register'),
              ))
        ],
      ),
    );
  }

  void _push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return page;
    }));
  }
}
