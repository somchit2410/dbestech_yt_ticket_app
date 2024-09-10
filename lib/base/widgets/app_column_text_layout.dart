import 'package:dbestech_yt_ticket_app/base/widgets/text_style_four.dart';
import 'package:dbestech_yt_ticket_app/base/widgets/text_style_third.dart';
import 'package:flutter/material.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout(
      {super.key,
      required this.upperText,
      required this.belowText,
      required this.crossAlign});
  final String upperText;
  final String belowText;
  final CrossAxisAlignment crossAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlign,
      children: [
        TextStyle3(text: upperText),
        const SizedBox(height: 3),
        TextStyle4(text: belowText),
      ],
    );
  }
}
