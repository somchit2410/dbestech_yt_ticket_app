import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class TextStyle3 extends StatelessWidget {
  const TextStyle3(
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
          ? AppStyle.headLineStyle3.copyWith(color: AppStyle.ticketColor)
          : AppStyle.headLineStyle3,
      textAlign: textAlign,
    );
  }
}
