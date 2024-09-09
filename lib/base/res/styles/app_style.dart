// create variable to use in styling app

import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
// Color bg = const Color(0xFFF1F1F4);

class AppStyle {
  // color
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3b3b3b);

  // text style
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
}
