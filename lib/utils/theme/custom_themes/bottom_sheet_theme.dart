import 'package:flutter/material.dart';

// Customizable Bottom Sheet Theme

// Light theme

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme =
      const BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    modalBackgroundColor: Colors.white,
    modalElevation: 0,
    constraints: BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
  );

  // Dark theme

  static BottomSheetThemeData darkBottomSheetTheme = const BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    elevation: 0,
    modalBackgroundColor: Colors.black,
    modalElevation: 0,
    constraints: BoxConstraints(
      minWidth: double.infinity,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
  );
}
