
import 'package:flutter/widgets.dart';
import 'package:flutter_lessons/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_lessons/screens/login/login_screen.dart';
import 'package:flutter_lessons/screens/splash/splash_screen.dart';


//all out routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context)=> SplashScreen(),
  LoginScreen.routeName: (context)=>LoginScreen(),
  ForgotPasswordScreen.routeName: (context)=>ForgotPasswordScreen(),
};