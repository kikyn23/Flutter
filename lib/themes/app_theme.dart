import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.white,

      // Text Botton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.yellow)),

      //Floating Action Bottons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.red, elevation: 5),

//Elevated Bottons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            shape: const StadiumBorder(),
            elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
}
