import 'package:flutter/material.dart';

import 'footer_left.dart';
import 'footer_right.dart';

class FooterSection extends StatelessWidget {
  final double screenWidth;
  const FooterSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double verticalPadding = screenWidth * 0.08;
    double horizontalPadding =
        screenWidth > 800 ? screenWidth * 0.1 : screenWidth * 0.05;
    double spacing =
        screenWidth > 1200 ? screenWidth * 0.07 : screenWidth * 0.04;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[50],
      ),
      child: screenWidth > 800
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: FooterLeft(screenWidth: screenWidth)),
                SizedBox(width: spacing),
                Expanded(child: FooterRight(screenWidth: screenWidth)),
              ],
            )
          : Column(
              children: [
                FooterLeft(screenWidth: screenWidth),
                SizedBox(height: screenWidth * 0.1),
                FooterRight(screenWidth: screenWidth),
              ],
            ),
    );
  }
}
