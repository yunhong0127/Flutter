import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPw extends StatefulWidget {
  @override
  _ForgetPwState createState() => _ForgetPwState();
}

class _ForgetPwState extends State<ForgetPw> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: "Email",
              ),
              validator: (String value) {
                if (value.isEmpty) {
                  return "Please input correct Email.";
                }
                return null;
              },
            ),
            FlatButton(
                onPressed: () async {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailController.text);

                  final snacbar = SnackBar(
                    content: Text('Check your email for pw reset.'),
                  );
                  Scaffold.of(_formkey.currentContext).showSnackBar(snacbar);
                },
                child: Text('Reset Password'))
          ],
        ),
      ),
    );
  }
}
