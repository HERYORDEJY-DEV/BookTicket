import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static Color primaryColor = Color(0xFF687daf);
  static Color textColor = Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color orangeColor = Color(0xFF526799);
  static Color inputBgColor = Color(0xFFf4f6fd);

//   Text Styles
  static TextStyle primaryTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headlineText1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textColor);
  static TextStyle headlineText2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: textColor);
  static TextStyle headlineText3 = TextStyle(
      fontSize: 17, fontWeight: FontWeight.w700, color: Colors.grey.shade500);

  static TextStyle headlineText4 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500);

//   Spacer
  static double smallSpacer = 8;
  static double mediumSpacer = 25;
  static double largeSpacer = 40;
  static double screenHorzPadding = 20;

//   Border Radius
  static double smallBorderRadius = 10;
  static double mediumBorderRadius = 20;
  static double largeBorderRadius = 40;
}
