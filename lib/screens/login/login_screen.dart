import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/login/components/login_body.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Sign In"),

      ),

      body: LoginBody(),
    );
  }
}

