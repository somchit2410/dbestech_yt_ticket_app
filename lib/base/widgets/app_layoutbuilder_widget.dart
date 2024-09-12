import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget(
      {super.key,
      required this.randomDivider,
      this.width = 3,
      this.height = 1,
      this.isColor});

  final int randomDivider;
  final double width;
  final double height;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
              width: width,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.white : Colors.grey.shade300),
              ),
            ),
          ),
        );
      },
    );
  }
}
