import 'package:flutter/material.dart';

// Customizable Check box Theme

// Light theme

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
    splashRadius: 16,
    materialTapTargetSize: MaterialTapTargetSize.padded,
  );

  // Dark theme

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    // overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
    // splashRadius: 16,
    // materialTapTargetSize: MaterialTapTargetSize.padded,
  );
}
