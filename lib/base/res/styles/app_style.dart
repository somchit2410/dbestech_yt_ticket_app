// create variable to use for styling an app

import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
// Color bg = const Color(0xFFF1F1F4);

class AppStyle {
  // color
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  // text style
  static TextStyle baseTextStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
