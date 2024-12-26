import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  final double screenWidth;
  const AboutSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double basePadding = screenWidth * 0.15;
    double titleFontSize =
        screenWidth > 800 ? screenWidth * 0.05 : screenWidth * 0.07;
    double bodyFontSize =
        screenWidth > 800 ? screenWidth * 0.015 : screenWidth * 0.025;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: basePadding * 0.1,
        horizontal: screenWidth > 800 ? basePadding : basePadding * 0.5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ABOUT',
            style: GoogleFonts.poppins(
              fontSize: titleFontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: basePadding * 0.1),
          Text(
            'Recent Electronics and Communication Engineering graduate with strong foundational knowledge '
            'in C language, Dart, Flutter, app development, and web development (HTML and CSS). '
            'Proficient in hands-on electronic circuit design and implementation. Seeking an entry-level position '
            'to apply technical skills and contribute to innovative projects, while continuously learning and growing '
            'within a dynamic organization.',
            style: GoogleFonts.poppins(fontSize: bodyFontSize, height: 1.75),
          ),
        ],
      ),
    );
  }
}
