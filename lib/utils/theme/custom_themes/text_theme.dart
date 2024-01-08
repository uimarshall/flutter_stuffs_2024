import 'package:flutter/material.dart';

// Customizable light Text Theme
class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      color: Colors
          .black, // When the background is white, the text color we want to use should be black.
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      // This is not used in the app yet but you can use it for your own purpose.
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      // letterSpacing: 0.5,
      color: Colors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),

    // Body Text
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.black.withOpacity(0.5),
    ),

    // Label Text
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.black.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.black.withOpacity(0.5),
    ),
  );

  // Customizable dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      // This is not used in the app yet but you can use it for your own purpose.
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      // letterSpacing: 0.5,
      color: Colors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white,
    ),

    // Body Text
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Colors.white.withOpacity(0.5),
    ),

    // Label Text
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.white.withOpacity(0.5),
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      color: Colors.white.withOpacity(0.5),
    ),
  );
}
