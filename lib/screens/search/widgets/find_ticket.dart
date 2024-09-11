import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyle.buttonColor,
      ),
      child: Center(
        child: Text(
          buttonText,
          style: AppStyle.baseTextStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
