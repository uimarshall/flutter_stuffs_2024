import 'package:flutter/material.dart';

// Customizable App bar Theme

// Light theme

class TAppBarTheme {
  TAppBarTheme._();

  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
  );

  // Dark theme

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
  );
}
