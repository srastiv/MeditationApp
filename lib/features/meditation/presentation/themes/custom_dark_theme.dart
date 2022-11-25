import 'package:flutter/material.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

class CustomDarkTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: kNightBlue,
    primaryColor: kNightBlue,
    colorScheme: const ColorScheme.dark(),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: kPureWhite,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );
}
