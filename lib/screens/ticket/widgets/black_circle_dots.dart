import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class BlackCircleDots extends StatelessWidget {
  const BlackCircleDots({super.key, this.isLeft});
  final bool? isLeft;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: isLeft == true ? 25 : null,
      right: isLeft == true ? null : 25,
      top: 140,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: AppStyle.textColor,
          ),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
