import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class TextStyle4 extends StatelessWidget {
  const TextStyle4(
      {super.key, required this.text, this.textAlign = TextAlign.start});
  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.headLineStyle4.copyWith(
        color: Colors.white,
      ),
      textAlign: textAlign,
    );
  }
}
