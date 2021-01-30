import 'package:flutter/material.dart';
import 'package:flutter_lessons/constants.dart';
import 'package:flutter_lessons/main_theme.dart';
import 'package:flutter_lessons/routes.dart';
import 'package:flutter_lessons/screens/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sands',
      theme: mainTheme(),
    //  home: SplashScreen(),
      //we use routeName so that we do not need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }


}



