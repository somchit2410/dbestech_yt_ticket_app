import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class AppTextIcons extends StatelessWidget {
  const AppTextIcons({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyle.planeColor,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: AppStyle.baseTextStyle,
          )
        ],
      ),
    );
  }
}
