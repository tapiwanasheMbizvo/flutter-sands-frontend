import 'package:flutter/material.dart';
import 'package:flutter_lessons/screens/splash/components/body.dart';
import 'package:flutter_lessons/size_config.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splashScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );

  }
}

