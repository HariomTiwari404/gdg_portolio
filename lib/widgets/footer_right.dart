import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterRight extends StatelessWidget {
  final double screenWidth;
  const FooterRight({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double fieldFontSize = screenWidth * 0.014;
    double formWidth =
        screenWidth > 800 ? screenWidth * 0.4 : screenWidth * 0.9;
    double buttonFontSize = screenWidth * 0.018;

//Without the ConstrainedBox, the Column widget may stretch indefinitely, especially on large screens, leading to unwanted layout behavior
    return Center(
      child: SizedBox(
        width: screenWidth > 800 ? screenWidth * 0.4 : screenWidth * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField('Name', fieldFontSize),
            SizedBox(height: screenWidth * 0.04),
            _buildTextField('Email', fieldFontSize),
            SizedBox(height: screenWidth * 0.04),
            _buildTextField('Type your message here', fieldFontSize,
                maxLines: 5),
            SizedBox(height: screenWidth * 0.06),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: screenWidth * 0.035),
              ),
              child: Text(
                'Submit',
                style: GoogleFonts.montserrat(
                  fontSize: buttonFontSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, double fontSize, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: GoogleFonts.poppins(fontSize: fontSize),
    );
  }
}
