// create variable to use for styling an app

import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);
// Color bg = const Color(0xFFF1F1F4);

class AppStyle {
  // color
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFD2BDB6);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color buttonColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF3AB8B8);
  static Color ticketColor = Colors.white;
  static Color dotColor = const Color(0xFF8ACCF7);
  static Color planeSecondColor = const Color(0xFFBACCF7);
  static Color profileLocationColor = const Color(0xFFFEF4F3);
  static Color profileStatusColor = const Color(0xFF526799);

  // text style
  static TextStyle baseTextStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );
}
