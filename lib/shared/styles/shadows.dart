import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
    color: TColors.darkGrey.withOpacity(0.1),
  );

  // Horizontal shadows

  static final horizontalProductShadow = BoxShadow(
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
    color: TColors.darkGrey.withOpacity(0.1),
  );
}
