import 'package:dbestech_yt_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight});
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyle.ticketColor,
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}
