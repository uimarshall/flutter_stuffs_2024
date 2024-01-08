import 'package:flutter/material.dart';

// Customizable Text Form Field Theme

// Light theme

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    filled: true,
    fillColor: Colors.white,
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.black12,
        width: 1.0,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.orange,
        width: 2.0,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
      ),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    errorStyle: const TextStyle().copyWith(
      color: Colors.red,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    hintStyle: const TextStyle().copyWith(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
      fontSize: 14,
      // fontWeight: FontWeight.w600,
    ),
    labelStyle: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      // fontWeight: FontWeight.w600,
    ),
  );

  // Dark theme

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    filled: true,
    fillColor: Colors.white,
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.white,
        width: 1.0,
      ),
    ),
    errorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1.0,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.orange,
        width: 2.0,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
      ),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    errorStyle: const TextStyle().copyWith(
      color: Colors.red,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    hintStyle: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
      fontSize: 14,
      // fontWeight: FontWeight.w600,
    ),
    labelStyle: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      // fontWeight: FontWeight.w600,
    ),
  );
}
