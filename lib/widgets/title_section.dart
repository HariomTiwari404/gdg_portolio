import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  final double screenWidth;
  const TitleSection({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double fontSize = screenWidth > 800
        ? screenWidth * 0.06
        : screenWidth * 0.12; // Larger font for phones

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.0),
      child: Center(
        child: Text(
          'EXPLORE MY \nPORTFOLIO',
          style: GoogleFonts.poppins(
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
