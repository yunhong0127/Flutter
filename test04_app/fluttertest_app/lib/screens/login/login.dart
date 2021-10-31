import 'package:flutter/material.dart';
import 'package:fluttertest_app/screens/login/separator_painter.dart';
import 'package:fluttertest_app/screens/login/separator_painter02.dart';

class AuthPage extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(color: Color(0xFF00011e)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(children: <Widget>[
                Center(
                  child: Container(
                      child: Container(
                          width: 350,
                          height: 350,
                          color: Colors.white10,
                          child: CustomPaint(
                              painter: SeparatorPainter02(
                                  color: Color(0xFFFBEC5A))))),
                ),
                Center(
                    child: Container(
                        width: 350,
                        height: 350,
                        child: CustomPaint(
                            painter: SeparatorPainter(color: Colors.white)))),
                _inputForm(size),
                // Center(
                //     child:
                //         Container(width: 100, height: 50, color: Colors.black))
              ]),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Don't Have an Account? Create One",
                  style: TextStyle(color: Colors.lightBlue, fontSize: 16)),
              Container(height: size.height * 0.05)
            ],
          ),
        ],
      ),
    );
  }
  Widget _inputForm(Size size){
    return Padding(
      padding: EdgeInsets.all(size.width*0.12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle,color: Colors.white,),
                        labelText: "Email",labelStyle: TextStyle(color: Colors.white)),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please input correct Email";
                      }
                      return null;
                    }),
                TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key,color: Colors.white),
                        labelText: "Password",labelStyle: TextStyle(color: Colors.white)),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please input correct Password";
                      }
                      return null;
                    }),
                Container(height: 8,),
                Text("Forgot Password",style: TextStyle(color: Colors.white),)
              ],
            )),
      ),
    );
  }
}
