import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      /// Color primario
      primaryColor: primary,

      /// AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      ///TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      ///FloatingActionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary,elevation: 5),
      
      ///ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0
      ))
);
      
      
  ///Darktheme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      /// Color primario
      primaryColor: primary,

      /// AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
