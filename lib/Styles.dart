import 'package:flutter/material.dart';

class ThemeColors {
  static Color backgroundColor = Color(0xFFFFFFFF);
  static Color primaryColor = Color(0xFF1E88E5);
  static const Color inputFill = Color(0xFFFBFBFB);
  static const Color borderColor = Color(0XFFCED0D2);
  static Color h1Color = Color(0xFF323643);
  static Color h2 = Color(0xFF606470);
}

class Styles {
  static ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(ThemeColors.primaryColor),
  );
}
