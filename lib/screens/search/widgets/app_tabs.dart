import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tapText = "",
      this.tabBorder = false,
      this.tabColor = false});

  final String tapText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(
        child: Text(tapText),
      ),
    );
  }
}
