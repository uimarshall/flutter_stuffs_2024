import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/outlined_button.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_stuffs_2024/utils/theme/custom_themes/text_theme.dart';

// Themes are the visual representation of your app. It cuts across the colors and fonts(typography) used in your app.

// Themes are a way to change the look and feel of your app. Flutter provides two out-of-the-box themes: light and dark. You can also create your own custom themes.

// light theme is the default theme for your app. It is used when the device is in light mode.
class TAppThemeData {
  TAppThemeData._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness:
        Brightness.light, //brightness tells it that it will be light mode theme
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors
        .white, //Scaffold is considered as another screen entirely, so we need to set the background color of the scaffold
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TTextTheme.lightTextTheme, //text theme for the light mode

    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  // Dark theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    // visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
