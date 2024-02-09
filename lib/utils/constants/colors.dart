import 'package:flutter/material.dart';

// Colors constants

// Light theme

class TColors {
  TColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFff4b4b);
  static const Color accent = Color(0xFFff4b4b);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFFDCDCDC);

  // Text Colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF4b68ff);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static Color primaryBackground = TColors.white.withOpacity(0.1);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6f6f6);
  static const Color darkContainer = Color(0xFF1E1E1E);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFFff4b4b);

  static const Color buttonDisabled = Color(0xFFE0E0E0);

  // Border Colors

  static const Color borderPrimary = Color(0xFFE0E0E0);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  // Icon Colors
  static const Color iconPrimary = Color(0xFF000000);
  static const Color iconSecondary = Color(0xFF4b68ff);
  static const Color iconWhite = Color(0xFFFFFFFF);

  // Shadow Colors
  static const Color shadowPrimary = Color(0xFF000000);
  static const Color shadowSecondary = Color(0xFF4b68ff);
  static const Color shadowWhite = Color(0xFFFFFFFF);

  // Error and Validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF4caf50);
  static const Color warning = Color(0xFFff9800);
  static const Color info = Color(0xFF2196f3);

  // Gradient Colors
  static const Gradient gradientPrimary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF4b68ff),
      Color(0xFFff4b4b),
    ],
  );

  // Neutral shades
  static const Color neutralShade100 = Color(0xFFf5f5f5);
  static const Color neutralShade200 = Color(0xFFeeeeee);
  static const Color neutralShade300 = Color(0xFFe0e0e0);
  static const Color neutralShade400 = Color(0xFFbdbdbd);
  static const Color neutralShade500 = Color(0xFF9e9e9e);
  static const Color neutralShade600 = Color(0xFF757575);
  static const Color neutralShade700 = Color(0xFF616161);
  static const Color neutralShade800 = Color(0xFF424242);
  static const Color neutralShade900 = Color(0xFF212121);
  static const Color black = Color(0xFF232323);
  static const Color whiteShade = Color(0xFFf5f5f5);
  static const Color darkGrey = Color(0xFF939393);
}
