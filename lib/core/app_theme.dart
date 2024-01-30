import 'package:flutter/material.dart';

ThemeData AppTheme() {
  return ThemeData(
    fontFamily: 'Metropolis',
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF0F1423),
      secondary: const Color(0xFF127A2F),
      tertiary: const Color(0xFF4FA06B),
      onTertiary: const Color(0xFF55A443),
      background: const Color(0xFFFFFFFF),
    ),
  );
}