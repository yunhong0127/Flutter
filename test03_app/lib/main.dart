import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test01_app/data/join_or_login.dart';
import 'package:test01_app/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:test01_app/screens/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return ChangeNotifierProvider<JoinOrLogin>.value(
                value: JoinOrLogin(), child: AuthPage());
          } else {
            return MainPage(email: snapshot.data.email);
          }
        });
  }
}
