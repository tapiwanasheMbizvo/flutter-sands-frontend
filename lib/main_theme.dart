import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData mainTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme() ,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
      headline6: TextStyle(color: Colors.black,fontSize: 18),
    );
}


InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      horizontal: 45,
      vertical: 20,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
  );
}