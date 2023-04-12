import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    

  textButtonTheme: TextButtonThemeData(
    style:  TextButton.styleFrom( foregroundColor: primary )
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary,
    elevation: 0
  ),

  //ElevateButtons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      shape: const StadiumBorder(),
      elevation: 0
    ),
  ),

  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle( color: primary),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    ),

    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide( color: primary),
      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    ),

    border:  OutlineInputBorder(
      borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
    ),
  )
    
  );


  /* scaffoldBackgroundColor: Colors.black, */


}
