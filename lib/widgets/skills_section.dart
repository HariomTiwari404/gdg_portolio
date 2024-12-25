import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSection extends StatelessWidget {
  final double screenWidth;
  const SkillsSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double basePadding = screenWidth * 0.15;
    double titleFontSize =
        screenWidth > 800 ? screenWidth * .05 : screenWidth * .07;
    double imageHeight =
        screenWidth > 800 ? screenWidth * .1 : screenWidth * 0.15;
    double skillsFontSize =
        screenWidth > 800 ? screenWidth * .018 : screenWidth * 0.03;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: basePadding * .1,
          horizontal: screenWidth > 800 ? basePadding : basePadding * .5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "SKILLS",
          style: GoogleFonts.poppins(
              fontSize: titleFontSize, fontWeight: FontWeight.w400),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _skillText("assets/html.png", 'HTML5', imageHeight, skillsFontSize),
            _skillText("assets/css.png", 'CSS3', imageHeight, skillsFontSize),
            _skillText("assets/sass.png", 'SASS', imageHeight, skillsFontSize),
            _skillText("assets/js.png", 'JS', imageHeight, skillsFontSize),
          ],
        )
      ]),
    );
  }

  Widget _skillText(
      String imagePath, String skillName, double imageHeight, double fontSize) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: imageHeight,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          skillName,
          style: GoogleFonts.poppins(
              fontSize: fontSize, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
