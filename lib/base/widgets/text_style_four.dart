import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class TextStyle4 extends StatelessWidget {
  const TextStyle4(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.start,
      this.isColor});
  final String text;
  final TextAlign textAlign;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? AppStyle.headLineStyle4.copyWith(
              color: AppStyle.ticketColor,
            )
          : AppStyle.headLineStyle4,
      textAlign: textAlign,
    );
  }
}
