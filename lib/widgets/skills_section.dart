import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSection extends StatelessWidget {
  final double screenWidth;
  const SkillsSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double basePadding = screenWidth * 0.15;
    double titleFontSize =
        screenWidth > 800 ? screenWidth * 0.05 : screenWidth * 0.07;
    double imageHeight =
        screenWidth > 800 ? screenWidth * 0.1 : screenWidth * 0.15;
    double skillFontSize =
        screenWidth > 800 ? screenWidth * 0.018 : screenWidth * 0.03;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: basePadding * 0.1,
        horizontal: screenWidth > 800 ? basePadding : basePadding * 0.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SKILLS',
            style: GoogleFonts.poppins(
              fontSize: titleFontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: basePadding * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _skillItem(
                  'assets/html.png', 'HTML5', imageHeight, skillFontSize),
              SizedBox(width: screenWidth * 0.05),
              _skillItem('assets/css.png', 'CSS3', imageHeight, skillFontSize),
              SizedBox(width: screenWidth * 0.05),
              _skillItem('assets/sass.png', 'SASS', imageHeight, skillFontSize),
              SizedBox(width: screenWidth * 0.05),
              _skillItem(
                  'assets/js.png', 'JAVASCRIPT', imageHeight, skillFontSize),
            ],
          ),
        ],
      ),
    );
  }

  Widget _skillItem(
      String imagePath, String skillName, double imageHeight, double fontSize) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: imageHeight,
        ),
        SizedBox(height: 10),
        Text(
          skillName,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
